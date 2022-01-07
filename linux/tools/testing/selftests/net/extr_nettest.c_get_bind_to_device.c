
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t socklen_t ;


 int SOL_SOCKET ;
 int SO_BINDTODEVICE ;
 int getsockopt (int,int ,int ,char*,size_t*) ;
 int log_err_errno (char*) ;

__attribute__((used)) static int get_bind_to_device(int sd, char *name, size_t len)
{
 int rc;
 socklen_t optlen = len;

 name[0] = '\0';
 rc = getsockopt(sd, SOL_SOCKET, SO_BINDTODEVICE, name, &optlen);
 if (rc < 0)
  log_err_errno("setsockopt(SO_BINDTODEVICE)");

 return rc;
}
