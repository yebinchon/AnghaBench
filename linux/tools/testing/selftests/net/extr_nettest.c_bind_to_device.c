
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOL_SOCKET ;
 int SO_BINDTODEVICE ;
 int log_err_errno (char*) ;
 int setsockopt (int,int ,int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int bind_to_device(int sd, const char *name)
{
 int rc;

 rc = setsockopt(sd, SOL_SOCKET, SO_BINDTODEVICE, name, strlen(name)+1);
 if (rc < 0)
  log_err_errno("setsockopt(SO_BINDTODEVICE)");

 return rc;
}
