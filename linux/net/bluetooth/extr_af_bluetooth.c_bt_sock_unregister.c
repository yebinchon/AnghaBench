
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT_MAX_PROTO ;
 int ** bt_proto ;
 int bt_proto_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void bt_sock_unregister(int proto)
{
 if (proto < 0 || proto >= BT_MAX_PROTO)
  return;

 write_lock(&bt_proto_lock);
 bt_proto[proto] = ((void*)0);
 write_unlock(&bt_proto_lock);
}
