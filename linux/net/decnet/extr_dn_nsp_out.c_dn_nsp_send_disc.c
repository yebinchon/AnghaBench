
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int opt_data; int opt_status; int opt_optl; } ;
struct dn_scp {int addrloc; int addrrem; TYPE_1__ discdata_out; } ;
typedef int gfp_t ;


 struct dn_scp* DN_SK (struct sock*) ;
 unsigned char NSP_DISCINIT ;
 int __sk_dst_get (struct sock*) ;
 int dn_nsp_do_disc (struct sock*,unsigned char,unsigned short,int ,int ,int,int ,int ,int ) ;
 void* le16_to_cpu (int ) ;

void dn_nsp_send_disc(struct sock *sk, unsigned char msgflg,
   unsigned short reason, gfp_t gfp)
{
 struct dn_scp *scp = DN_SK(sk);
 int ddl = 0;

 if (msgflg == NSP_DISCINIT)
  ddl = le16_to_cpu(scp->discdata_out.opt_optl);

 if (reason == 0)
  reason = le16_to_cpu(scp->discdata_out.opt_status);

 dn_nsp_do_disc(sk, msgflg, reason, gfp, __sk_dst_get(sk), ddl,
  scp->discdata_out.opt_data, scp->addrrem, scp->addrloc);
}
