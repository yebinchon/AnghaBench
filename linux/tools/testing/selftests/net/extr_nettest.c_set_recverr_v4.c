
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int one ;


 int ENOTSUP ;
 int IP_RECVERR ;
 int SOL_IP ;
 int log_err_errno (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static int set_recverr_v4(int sd)
{
 int one = 1;
 int rc;

 rc = setsockopt(sd, SOL_IP, IP_RECVERR, &one, sizeof(one));
 if (rc < 0 && rc != -ENOTSUP)
  log_err_errno("setsockopt(IP_RECVERR)");

 return rc;
}
