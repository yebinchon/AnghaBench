
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_peer {unsigned long rate_tokens; unsigned long rate_last; } ;


 int XRLIM_BURST_FACTOR ;
 unsigned long jiffies ;

bool inet_peer_xrlim_allow(struct inet_peer *peer, int timeout)
{
 unsigned long now, token;
 bool rc = 0;

 if (!peer)
  return 1;

 token = peer->rate_tokens;
 now = jiffies;
 token += now - peer->rate_last;
 peer->rate_last = now;
 if (token > XRLIM_BURST_FACTOR * timeout)
  token = XRLIM_BURST_FACTOR * timeout;
 if (token >= timeout) {
  token -= timeout;
  rc = 1;
 }
 peer->rate_tokens = token;
 return rc;
}
