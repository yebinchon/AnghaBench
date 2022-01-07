
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ncsi_pkt_hdr {scalar_t__* reserved1; int length; int channel; int type; int id; scalar_t__ reserved; int revision; scalar_t__ mc_id; } ;
struct ncsi_cmd_arg {scalar_t__ payload; int channel; int package; int type; int id; } ;
typedef int __be32 ;


 int ALIGN (scalar_t__,int) ;
 int NCSI_PKT_REVISION ;
 int NCSI_TO_CHANNEL (int ,int ) ;
 int htonl (int ) ;
 int htons (scalar_t__) ;
 int ncsi_calculate_checksum (unsigned char*,scalar_t__) ;

__attribute__((used)) static void ncsi_cmd_build_header(struct ncsi_pkt_hdr *h,
      struct ncsi_cmd_arg *nca)
{
 u32 checksum;
 __be32 *pchecksum;

 h->mc_id = 0;
 h->revision = NCSI_PKT_REVISION;
 h->reserved = 0;
 h->id = nca->id;
 h->type = nca->type;
 h->channel = NCSI_TO_CHANNEL(nca->package,
       nca->channel);
 h->length = htons(nca->payload);
 h->reserved1[0] = 0;
 h->reserved1[1] = 0;


 checksum = ncsi_calculate_checksum((unsigned char *)h,
        sizeof(*h) + nca->payload);
 pchecksum = (__be32 *)((void *)h + sizeof(struct ncsi_pkt_hdr) +
      ALIGN(nca->payload, 4));
 *pchecksum = htonl(checksum);
}
