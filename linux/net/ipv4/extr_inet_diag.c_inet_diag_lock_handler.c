
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_diag_handler {int dummy; } ;


 int AF_INET ;
 int ENOENT ;
 struct inet_diag_handler const* ERR_PTR (int ) ;
 struct inet_diag_handler const** inet_diag_table ;
 int inet_diag_table_mutex ;
 int mutex_lock (int *) ;
 int sock_load_diag_module (int ,int) ;

__attribute__((used)) static const struct inet_diag_handler *inet_diag_lock_handler(int proto)
{
 if (!inet_diag_table[proto])
  sock_load_diag_module(AF_INET, proto);

 mutex_lock(&inet_diag_table_mutex);
 if (!inet_diag_table[proto])
  return ERR_PTR(-ENOENT);

 return inet_diag_table[proto];
}
