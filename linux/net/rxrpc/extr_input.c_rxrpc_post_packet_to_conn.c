
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rxrpc_connection {int rx_queue; } ;


 int _enter (char*,struct rxrpc_connection*,struct sk_buff*) ;
 int rxrpc_queue_conn (struct rxrpc_connection*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void rxrpc_post_packet_to_conn(struct rxrpc_connection *conn,
          struct sk_buff *skb)
{
 _enter("%p,%p", conn, skb);

 skb_queue_tail(&conn->rx_queue, skb);
 rxrpc_queue_conn(conn);
}
