
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET6 ;
 int set_pktinfo_v4 (int) ;
 int set_recverr_v4 (int) ;
 int set_recverr_v6 (int) ;
 int set_recvpktinfo_v6 (int) ;

__attribute__((used)) static void set_recv_attr(int sd, int version)
{
 if (version == AF_INET6) {
  set_recvpktinfo_v6(sd);
  set_recverr_v6(sd);
 } else {
  set_pktinfo_v4(sd);
  set_recverr_v4(sd);
 }
}
