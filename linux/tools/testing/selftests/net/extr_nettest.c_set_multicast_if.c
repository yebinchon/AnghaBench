
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mreqn {int imr_ifindex; } ;
typedef int mreq ;


 int IP_MULTICAST_IF ;
 int SOL_IP ;
 int log_err_errno (char*) ;
 int setsockopt (int,int ,int ,struct ip_mreqn*,int) ;

__attribute__((used)) static int set_multicast_if(int sd, int ifindex)
{
 struct ip_mreqn mreq = { .imr_ifindex = ifindex };
 int rc;

 rc = setsockopt(sd, SOL_IP, IP_MULTICAST_IF, &mreq, sizeof(mreq));
 if (rc < 0)
  log_err_errno("setsockopt(IP_MULTICAST_IF)");

 return rc;
}
