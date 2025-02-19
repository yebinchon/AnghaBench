
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_sock {int conn_type; int conn_instance; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {scalar_t__ msg_controllen; } ;


 int ENOMEM ;
 int SOL_TIPC ;

 int TIPC_DESTNAME ;
 int TIPC_DIRECT_MSG ;
 int TIPC_ERRINFO ;


 int TIPC_RETDATA ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int* msg_data (struct tipc_msg*) ;
 int msg_data_sz (struct tipc_msg*) ;
 int msg_errcode (struct tipc_msg*) ;
 int msg_namelower (struct tipc_msg*) ;
 int msg_nametype (struct tipc_msg*) ;
 int msg_nameupper (struct tipc_msg*) ;
 int msg_type (struct tipc_msg*) ;
 int put_cmsg (struct msghdr*,int ,int ,int,int*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tipc_sk_anc_data_recv(struct msghdr *m, struct sk_buff *skb,
     struct tipc_sock *tsk)
{
 struct tipc_msg *msg;
 u32 anc_data[3];
 u32 err;
 u32 dest_type;
 int has_name;
 int res;

 if (likely(m->msg_controllen == 0))
  return 0;
 msg = buf_msg(skb);


 err = msg ? msg_errcode(msg) : 0;
 if (unlikely(err)) {
  anc_data[0] = err;
  anc_data[1] = msg_data_sz(msg);
  res = put_cmsg(m, SOL_TIPC, TIPC_ERRINFO, 8, anc_data);
  if (res)
   return res;
  if (anc_data[1]) {
   if (skb_linearize(skb))
    return -ENOMEM;
   msg = buf_msg(skb);
   res = put_cmsg(m, SOL_TIPC, TIPC_RETDATA, anc_data[1],
           msg_data(msg));
   if (res)
    return res;
  }
 }


 dest_type = msg ? msg_type(msg) : TIPC_DIRECT_MSG;
 switch (dest_type) {
 case 128:
  has_name = 1;
  anc_data[0] = msg_nametype(msg);
  anc_data[1] = msg_namelower(msg);
  anc_data[2] = msg_namelower(msg);
  break;
 case 129:
  has_name = 1;
  anc_data[0] = msg_nametype(msg);
  anc_data[1] = msg_namelower(msg);
  anc_data[2] = msg_nameupper(msg);
  break;
 case 130:
  has_name = (tsk->conn_type != 0);
  anc_data[0] = tsk->conn_type;
  anc_data[1] = tsk->conn_instance;
  anc_data[2] = tsk->conn_instance;
  break;
 default:
  has_name = 0;
 }
 if (has_name) {
  res = put_cmsg(m, SOL_TIPC, TIPC_DESTNAME, 12, anc_data);
  if (res)
   return res;
 }

 return 0;
}
