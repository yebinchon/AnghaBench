
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2cap_conn {int chan_lock; } ;
struct l2cap_cmd_rej_unk {int dummy; } ;
struct l2cap_cmd_hdr {int ident; } ;
struct l2cap_chan {int dummy; } ;


 int ECONNREFUSED ;
 int EPROTO ;
 struct l2cap_chan* __l2cap_get_chan_by_ident (struct l2cap_conn*,int ) ;
 int l2cap_chan_del (struct l2cap_chan*,int ) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline int l2cap_le_command_rej(struct l2cap_conn *conn,
           struct l2cap_cmd_hdr *cmd, u16 cmd_len,
           u8 *data)
{
 struct l2cap_cmd_rej_unk *rej = (struct l2cap_cmd_rej_unk *) data;
 struct l2cap_chan *chan;

 if (cmd_len < sizeof(*rej))
  return -EPROTO;

 mutex_lock(&conn->chan_lock);

 chan = __l2cap_get_chan_by_ident(conn, cmd->ident);
 if (!chan)
  goto done;

 l2cap_chan_lock(chan);
 l2cap_chan_del(chan, ECONNREFUSED);
 l2cap_chan_unlock(chan);

done:
 mutex_unlock(&conn->chan_lock);
 return 0;
}
