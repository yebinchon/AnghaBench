
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfnl_err {int head; } ;


 int kfree (struct nfnl_err*) ;
 int list_del (int *) ;

__attribute__((used)) static void nfnl_err_del(struct nfnl_err *nfnl_err)
{
 list_del(&nfnl_err->head);
 kfree(nfnl_err);
}
