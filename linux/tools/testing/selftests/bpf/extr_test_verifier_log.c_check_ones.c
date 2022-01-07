
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (char*,char const*) ;
 int exit (int) ;

__attribute__((used)) static void check_ones(const char *buf, size_t len, const char *msg)
{
 while (len--)
  if (buf[len] != 1) {
   err("%s", msg);
   exit(1);
  }
}
