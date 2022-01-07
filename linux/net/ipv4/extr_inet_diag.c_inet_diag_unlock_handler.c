
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_diag_handler {int dummy; } ;


 int inet_diag_table_mutex ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void inet_diag_unlock_handler(const struct inet_diag_handler *handler)
{
 mutex_unlock(&inet_diag_table_mutex);
}
