
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int err (char*,...) ;
 int errno ;
 int exit (int) ;

__attribute__((used)) static void check_ret(int ret, int exp_errno)
{
 if (ret > 0) {
  close(ret);
  err("broken sample loaded successfully!?\n");
  exit(1);
 }

 if (!ret || errno != exp_errno) {
  err("Program load returned: ret:%d/errno:%d, expected ret:%d/errno:%d\n",
      ret, errno, -1, exp_errno);
  exit(1);
 }
}
