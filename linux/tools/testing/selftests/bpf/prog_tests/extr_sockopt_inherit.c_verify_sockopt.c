
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;


 int SOL_CUSTOM ;
 int getsockopt (int,int ,int,char*,int*) ;
 int log_err (char*,char const*,...) ;
 int printf (char*,char const*,int,char,char) ;

__attribute__((used)) static int verify_sockopt(int fd, int optname, const char *msg, char expected)
{
 socklen_t optlen = 1;
 char buf = 0;
 int err;

 err = getsockopt(fd, SOL_CUSTOM, optname, &buf, &optlen);
 if (err) {
  log_err("%s: failed to call getsockopt", msg);
  return 1;
 }

 printf("%s %d: got=0x%x ? expected=0x%x\n", msg, optname, buf, expected);

 if (buf != expected) {
  log_err("%s: unexpected getsockopt value %d != %d", msg,
   buf, expected);
  return 1;
 }

 return 0;
}
