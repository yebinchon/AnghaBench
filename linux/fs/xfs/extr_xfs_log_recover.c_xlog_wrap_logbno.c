
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_daddr_t ;
struct xlog {int l_logBBsize; } ;


 int div_s64_rem (int,int ,int*) ;

__attribute__((used)) static inline xfs_daddr_t
xlog_wrap_logbno(
 struct xlog *log,
 xfs_daddr_t bno)
{
 int mod;

 div_s64_rem(bno, log->l_logBBsize, &mod);
 return mod;
}
