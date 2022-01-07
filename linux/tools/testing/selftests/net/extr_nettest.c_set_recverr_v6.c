
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int one ;


 int ENOTSUP ;
 int IPV6_RECVERR ;
 int SOL_IPV6 ;
 int log_err_errno (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static int set_recverr_v6(int sd)
{
 int one = 1;
 int rc;

 rc = setsockopt(sd, SOL_IPV6, IPV6_RECVERR, &one, sizeof(one));
 if (rc < 0 && rc != -ENOTSUP)
  log_err_errno("setsockopt(IPV6_RECVERR)");

 return rc;
}
