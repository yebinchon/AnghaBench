
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_udp {int invflags; } ;
struct xt_mtchk_param {struct xt_udp* matchinfo; } ;


 int EINVAL ;
 int XT_UDP_INV_MASK ;

__attribute__((used)) static int udp_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_udp *udpinfo = par->matchinfo;


 return (udpinfo->invflags & ~XT_UDP_INV_MASK) ? -EINVAL : 0;
}
