
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int conf_state; struct l2cap_conn* conn; } ;


 int BT_DBG (char*,struct l2cap_conn*,struct l2cap_chan*,int ,int ) ;
 int CONF_LOC_CONF_PEND ;
 int CONF_OUTPUT_DONE ;
 int L2CAP_CONF_RSP ;
 int L2CAP_CONF_SUCCESS ;
 int clear_bit (int ,int *) ;
 int l2cap_build_conf_rsp (struct l2cap_chan*,void*,int ,int ) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int ,void*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void l2cap_send_efs_conf_rsp(struct l2cap_chan *chan, void *data,
        u8 ident, u16 flags)
{
 struct l2cap_conn *conn = chan->conn;

 BT_DBG("conn %p chan %p ident %d flags 0x%4.4x", conn, chan, ident,
        flags);

 clear_bit(CONF_LOC_CONF_PEND, &chan->conf_state);
 set_bit(CONF_OUTPUT_DONE, &chan->conf_state);

 l2cap_send_cmd(conn, ident, L2CAP_CONF_RSP,
         l2cap_build_conf_rsp(chan, data,
         L2CAP_CONF_SUCCESS, flags), data);
}
