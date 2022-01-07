
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_diag_handler {size_t family; } ;


 size_t AF_MAX ;
 int EBUSY ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sock_diag_handler const** sock_diag_handlers ;
 int sock_diag_table_mutex ;

int sock_diag_register(const struct sock_diag_handler *hndl)
{
 int err = 0;

 if (hndl->family >= AF_MAX)
  return -EINVAL;

 mutex_lock(&sock_diag_table_mutex);
 if (sock_diag_handlers[hndl->family])
  err = -EBUSY;
 else
  sock_diag_handlers[hndl->family] = hndl;
 mutex_unlock(&sock_diag_table_mutex);

 return err;
}
