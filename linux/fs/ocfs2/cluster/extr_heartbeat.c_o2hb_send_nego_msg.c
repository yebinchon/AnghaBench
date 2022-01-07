
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct o2hb_nego_msg {int node_num; } ;
typedef int msg ;


 int EAGAIN ;
 int ENOMEM ;
 int msleep (int) ;
 int o2net_send_message (int,int,struct o2hb_nego_msg*,int,int ,int*) ;
 int o2nm_this_node () ;

__attribute__((used)) static int o2hb_send_nego_msg(int key, int type, u8 target)
{
 struct o2hb_nego_msg msg;
 int status, ret;

 msg.node_num = o2nm_this_node();
again:
 ret = o2net_send_message(type, key, &msg, sizeof(msg),
   target, &status);

 if (ret == -EAGAIN || ret == -ENOMEM) {
  msleep(100);
  goto again;
 }

 return ret;
}
