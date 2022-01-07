
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifindex ;


 int AF_INET6 ;
 int IPV6_UNICAST_IF ;
 int IP_UNICAST_IF ;
 int SOL_IP ;
 int SOL_IPV6 ;
 int htonl (int) ;
 int log_err_errno (char*) ;
 int setsockopt (int,int,int,int*,int) ;

__attribute__((used)) static int set_unicast_if(int sd, int ifindex, int version)
{
 int opt = IP_UNICAST_IF;
 int level = SOL_IP;
 int rc;

 ifindex = htonl(ifindex);

 if (version == AF_INET6) {
  opt = IPV6_UNICAST_IF;
  level = SOL_IPV6;
 }
 rc = setsockopt(sd, level, opt, &ifindex, sizeof(ifindex));
 if (rc < 0)
  log_err_errno("setsockopt(IP_UNICAST_IF)");

 return rc;
}
