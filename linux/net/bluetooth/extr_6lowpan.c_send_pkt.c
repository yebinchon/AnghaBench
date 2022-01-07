
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int tx_bytes; int tx_errors; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct msghdr {int msg_iter; } ;
struct l2cap_chan {struct sk_buff* data; } ;
struct kvec {int iov_len; int iov_base; } ;
typedef int msg ;


 int WRITE ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,int ) ;
 int l2cap_chan_send (struct l2cap_chan*,struct msghdr*,int ) ;
 int memset (struct msghdr*,int ,int) ;

__attribute__((used)) static int send_pkt(struct l2cap_chan *chan, struct sk_buff *skb,
      struct net_device *netdev)
{
 struct msghdr msg;
 struct kvec iv;
 int err;




 chan->data = skb;

 iv.iov_base = skb->data;
 iv.iov_len = skb->len;

 memset(&msg, 0, sizeof(msg));
 iov_iter_kvec(&msg.msg_iter, WRITE, &iv, 1, skb->len);

 err = l2cap_chan_send(chan, &msg, skb->len);
 if (err > 0) {
  netdev->stats.tx_bytes += err;
  netdev->stats.tx_packets++;
  return 0;
 }

 if (err < 0)
  netdev->stats.tx_errors++;

 return err;
}
