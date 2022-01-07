
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTPROTO_CMTP ;
 int BTPROTO_HIDP ;
 int BT_ERR (char*) ;
 int BT_INFO (char*) ;
 int bt_procfs_init (int *,char*,int *,int *) ;
 int bt_sock_register (int ,int *) ;
 int bt_sock_unregister (int ) ;
 int cmtp_proto ;
 int cmtp_sk_list ;
 int cmtp_sock_family_ops ;
 int init_net ;
 int proto_register (int *,int ) ;
 int proto_unregister (int *) ;

int cmtp_init_sockets(void)
{
 int err;

 err = proto_register(&cmtp_proto, 0);
 if (err < 0)
  return err;

 err = bt_sock_register(BTPROTO_CMTP, &cmtp_sock_family_ops);
 if (err < 0) {
  BT_ERR("Can't register CMTP socket");
  goto error;
 }

 err = bt_procfs_init(&init_net, "cmtp", &cmtp_sk_list, ((void*)0));
 if (err < 0) {
  BT_ERR("Failed to create CMTP proc file");
  bt_sock_unregister(BTPROTO_HIDP);
  goto error;
 }

 BT_INFO("CMTP socket layer initialized");

 return 0;

error:
 proto_unregister(&cmtp_proto);
 return err;
}
