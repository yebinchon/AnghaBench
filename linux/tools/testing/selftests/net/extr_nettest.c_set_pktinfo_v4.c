
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int one ;


 int ENOTSUP ;
 int IP_PKTINFO ;
 int SOL_IP ;
 int log_err_errno (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static int set_pktinfo_v4(int sd)
{
 int one = 1;
 int rc;

 rc = setsockopt(sd, SOL_IP, IP_PKTINFO, &one, sizeof(one));
 if (rc < 0 && rc != -ENOTSUP)
  log_err_errno("setsockopt(IP_PKTINFO)");

 return rc;
}
