
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tcp {int invflags; } ;
struct xt_mtchk_param {struct xt_tcp* matchinfo; } ;


 int EINVAL ;
 int XT_TCP_INV_MASK ;

__attribute__((used)) static int tcp_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_tcp *tcpinfo = par->matchinfo;


 return (tcpinfo->invflags & ~XT_TCP_INV_MASK) ? -EINVAL : 0;
}
