
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_sock {int state; } ;
struct j1939_sk_buff_cb {int dummy; } ;


 int J1939_SOCK_BOUND ;
 int j1939_sk_match_dst (struct j1939_sock*,struct j1939_sk_buff_cb const*) ;
 int j1939_sk_match_filter (struct j1939_sock*,struct j1939_sk_buff_cb const*) ;

__attribute__((used)) static bool j1939_sk_recv_match_one(struct j1939_sock *jsk,
        const struct j1939_sk_buff_cb *skcb)
{
 if (!(jsk->state & J1939_SOCK_BOUND))
  return 0;

 if (!j1939_sk_match_dst(jsk, skcb))
  return 0;

 if (!j1939_sk_match_filter(jsk, skcb))
  return 0;

 return 1;
}
