
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct nf_conn {int dummy; } ;
typedef union nf_inet_addr __be16 ;
struct TYPE_7__ {int network; } ;
struct TYPE_6__ {int network; } ;
struct TYPE_8__ {int choice; TYPE_2__ iP6Address; TYPE_1__ iPAddress; } ;
struct TYPE_9__ {scalar_t__ choice; TYPE_3__ unicastAddress; } ;
typedef TYPE_4__ H245_TransportAddress ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ eH245_TransportAddress_unicastAddress ;


 int memcpy (union nf_inet_addr*,unsigned char const*,int) ;
 int memset (void*,int ,int) ;
 int nf_ct_l3num (struct nf_conn*) ;

__attribute__((used)) static int get_h245_addr(struct nf_conn *ct, const unsigned char *data,
    H245_TransportAddress *taddr,
    union nf_inet_addr *addr, __be16 *port)
{
 const unsigned char *p;
 int len;

 if (taddr->choice != eH245_TransportAddress_unicastAddress)
  return 0;

 switch (taddr->unicastAddress.choice) {
 case 128:
  if (nf_ct_l3num(ct) != AF_INET)
   return 0;
  p = data + taddr->unicastAddress.iPAddress.network;
  len = 4;
  break;
 case 129:
  if (nf_ct_l3num(ct) != AF_INET6)
   return 0;
  p = data + taddr->unicastAddress.iP6Address.network;
  len = 16;
  break;
 default:
  return 0;
 }

 memcpy(addr, p, len);
 memset((void *)addr + len, 0, sizeof(*addr) - len);
 memcpy(port, p + len, sizeof(__be16));

 return 1;
}
