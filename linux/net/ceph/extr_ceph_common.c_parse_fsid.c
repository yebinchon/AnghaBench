
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_fsid {int* fsid; } ;


 int EINVAL ;
 int dout (char*,...) ;
 scalar_t__ ispunct (char const) ;
 int isxdigit (char const) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static int parse_fsid(const char *str, struct ceph_fsid *fsid)
{
 int i = 0;
 char tmp[3];
 int err = -EINVAL;
 int d;

 dout("parse_fsid '%s'\n", str);
 tmp[2] = 0;
 while (*str && i < 16) {
  if (ispunct(*str)) {
   str++;
   continue;
  }
  if (!isxdigit(str[0]) || !isxdigit(str[1]))
   break;
  tmp[0] = str[0];
  tmp[1] = str[1];
  if (sscanf(tmp, "%x", &d) < 1)
   break;
  fsid->fsid[i] = d & 0xff;
  i++;
  str += 2;
 }

 if (i == 16)
  err = 0;
 dout("parse_fsid ret %d got fsid %pU\n", err, fsid);
 return err;
}
