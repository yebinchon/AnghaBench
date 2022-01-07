
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct j1939_session {int priv; int transmission; } ;


 int j1939_session_deactivate_activate_next (struct j1939_session*) ;
 struct sk_buff* j1939_session_skb_find (struct j1939_session*) ;
 int j1939_sk_recv (int ,struct sk_buff*) ;

__attribute__((used)) static void j1939_session_completed(struct j1939_session *session)
{
 struct sk_buff *skb;

 if (!session->transmission) {
  skb = j1939_session_skb_find(session);

  j1939_sk_recv(session->priv, skb);
 }

 j1939_session_deactivate_activate_next(session);
}
