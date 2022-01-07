
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ revision; int length; } ;
struct ncsi_aen_pkt_hdr {TYPE_1__ common; } ;
typedef scalar_t__ __be32 ;


 int EINVAL ;
 scalar_t__ NCSI_PKT_REVISION ;
 scalar_t__ htonl (int ) ;
 int ncsi_calculate_checksum (unsigned char*,int) ;
 scalar_t__ ntohl (scalar_t__) ;
 unsigned short const ntohs (int ) ;

__attribute__((used)) static int ncsi_validate_aen_pkt(struct ncsi_aen_pkt_hdr *h,
     const unsigned short payload)
{
 u32 checksum;
 __be32 *pchecksum;

 if (h->common.revision != NCSI_PKT_REVISION)
  return -EINVAL;
 if (ntohs(h->common.length) != payload)
  return -EINVAL;





 pchecksum = (__be32 *)((void *)(h + 1) + payload - 4);
 if (ntohl(*pchecksum) == 0)
  return 0;

 checksum = ncsi_calculate_checksum((unsigned char *)h,
        sizeof(*h) + payload - 4);
 if (*pchecksum != htonl(checksum))
  return -EINVAL;

 return 0;
}
