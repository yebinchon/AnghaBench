
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int one ;


 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int log_err_errno (char*) ;
 scalar_t__ setsockopt (int,int ,int ,unsigned int*,int) ;

__attribute__((used)) static int set_reuseaddr(int sd)
{
 unsigned int one = 1;
 int rc = 0;

 if (setsockopt(sd, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one)) != 0) {
  log_err_errno("setsockopt(SO_REUSEADDR)");
  rc = -1;
 }

 return rc;
}
