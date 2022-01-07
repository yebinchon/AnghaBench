
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_VSOCK ;
 int mb () ;
 int misc_deregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int proto_unregister (int *) ;
 int sock_unregister (int ) ;
 int * transport ;
 int vsock_device ;
 int vsock_proto ;
 int vsock_register_mutex ;

void vsock_core_exit(void)
{
 mutex_lock(&vsock_register_mutex);

 misc_deregister(&vsock_device);
 sock_unregister(AF_VSOCK);
 proto_unregister(&vsock_proto);


 mb();
 transport = ((void*)0);

 mutex_unlock(&vsock_register_mutex);
}
