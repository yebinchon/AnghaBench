
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTPROTO_CMTP ;
 int bt_procfs_cleanup (int *,char*) ;
 int bt_sock_unregister (int ) ;
 int cmtp_proto ;
 int init_net ;
 int proto_unregister (int *) ;

void cmtp_cleanup_sockets(void)
{
 bt_procfs_cleanup(&init_net, "cmtp");
 bt_sock_unregister(BTPROTO_CMTP);
 proto_unregister(&cmtp_proto);
}
