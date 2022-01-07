
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int FIB6_NO_SERNUM_CHANGE ;
 int __fib6_clean_all (struct net*,int (*) (struct fib6_info*,void*),int ,void*,int) ;

void fib6_clean_all(struct net *net, int (*func)(struct fib6_info *, void *),
      void *arg)
{
 __fib6_clean_all(net, func, FIB6_NO_SERNUM_CHANGE, arg, 0);
}
