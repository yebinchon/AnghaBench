
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_cork {int * dst; int * opt; int flags; } ;


 int IPCORK_OPT ;
 int dst_release (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void ip_cork_release(struct inet_cork *cork)
{
 cork->flags &= ~IPCORK_OPT;
 kfree(cork->opt);
 cork->opt = ((void*)0);
 dst_release(cork->dst);
 cork->dst = ((void*)0);
}
