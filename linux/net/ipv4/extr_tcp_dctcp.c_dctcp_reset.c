
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int delivered_ce; int delivered; int snd_nxt; } ;
struct dctcp {int old_delivered_ce; int old_delivered; int next_seq; } ;



__attribute__((used)) static void dctcp_reset(const struct tcp_sock *tp, struct dctcp *ca)
{
 ca->next_seq = tp->snd_nxt;

 ca->old_delivered = tp->delivered;
 ca->old_delivered_ce = tp->delivered_ce;
}
