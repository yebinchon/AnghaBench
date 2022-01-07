
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_pn {int spn_family; } ;
struct sock {int dummy; } ;
struct pn_sock {int sobject; } ;
struct net {int dummy; } ;


 int AF_PHONET ;
 int EADDRINUSE ;
 int WARN_ON (int) ;
 int memset (struct sockaddr_pn*,int ,int) ;
 int mutex_is_locked (int *) ;
 int phonet_get_local_port_range (int*,int*) ;
 int pn_addr (int ) ;
 struct sock* pn_find_sock_by_sa (struct net*,struct sockaddr_pn*) ;
 int pn_object (int ,unsigned short) ;
 struct pn_sock* pn_sk (struct sock*) ;
 int pn_sockaddr_set_port (struct sockaddr_pn*,unsigned short) ;
 int port_mutex ;
 struct net* sock_net (struct sock*) ;
 int sock_put (struct sock*) ;

int pn_sock_get_port(struct sock *sk, unsigned short sport)
{
 static int port_cur;
 struct net *net = sock_net(sk);
 struct pn_sock *pn = pn_sk(sk);
 struct sockaddr_pn try_sa;
 struct sock *tmpsk;

 memset(&try_sa, 0, sizeof(struct sockaddr_pn));
 try_sa.spn_family = AF_PHONET;
 WARN_ON(!mutex_is_locked(&port_mutex));
 if (!sport) {

  int port, pmin, pmax;

  phonet_get_local_port_range(&pmin, &pmax);
  for (port = pmin; port <= pmax; port++) {
   port_cur++;
   if (port_cur < pmin || port_cur > pmax)
    port_cur = pmin;

   pn_sockaddr_set_port(&try_sa, port_cur);
   tmpsk = pn_find_sock_by_sa(net, &try_sa);
   if (tmpsk == ((void*)0)) {
    sport = port_cur;
    goto found;
   } else
    sock_put(tmpsk);
  }
 } else {

  pn_sockaddr_set_port(&try_sa, sport);
  tmpsk = pn_find_sock_by_sa(net, &try_sa);
  if (tmpsk == ((void*)0))

   goto found;
  else
   sock_put(tmpsk);
 }

 return -EADDRINUSE;

found:
 pn->sobject = pn_object(pn_addr(pn->sobject), sport);
 return 0;
}
