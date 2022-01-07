
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct smp_chan {int security_timer; } ;
struct msghdr {int msg_iter; } ;
struct l2cap_conn {struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct kvec {int iov_len; int * iov_base; } ;
typedef int msg ;


 int BT_DBG (char*,int ) ;
 int SMP_TIMEOUT ;
 int WRITE ;
 int cancel_delayed_work_sync (int *) ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,int) ;
 int l2cap_chan_send (struct l2cap_chan*,struct msghdr*,int) ;
 int memset (struct msghdr*,int ,int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void smp_send_cmd(struct l2cap_conn *conn, u8 code, u16 len, void *data)
{
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp;
 struct kvec iv[2];
 struct msghdr msg;

 if (!chan)
  return;

 BT_DBG("code 0x%2.2x", code);

 iv[0].iov_base = &code;
 iv[0].iov_len = 1;

 iv[1].iov_base = data;
 iv[1].iov_len = len;

 memset(&msg, 0, sizeof(msg));

 iov_iter_kvec(&msg.msg_iter, WRITE, iv, 2, 1 + len);

 l2cap_chan_send(chan, &msg, 1 + len);

 if (!chan->data)
  return;

 smp = chan->data;

 cancel_delayed_work_sync(&smp->security_timer);
 schedule_delayed_work(&smp->security_timer, SMP_TIMEOUT);
}
