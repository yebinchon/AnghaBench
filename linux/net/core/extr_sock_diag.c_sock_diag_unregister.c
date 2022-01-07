
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_diag_handler {int family; } ;


 int AF_MAX ;
 int BUG_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sock_diag_handler const** sock_diag_handlers ;
 int sock_diag_table_mutex ;

void sock_diag_unregister(const struct sock_diag_handler *hnld)
{
 int family = hnld->family;

 if (family >= AF_MAX)
  return;

 mutex_lock(&sock_diag_table_mutex);
 BUG_ON(sock_diag_handlers[family] != hnld);
 sock_diag_handlers[family] = ((void*)0);
 mutex_unlock(&sock_diag_table_mutex);
}
