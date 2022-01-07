
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ctl_table; struct ctl_dir* parent; } ;
struct ctl_dir {TYPE_2__ header; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {char* procname; } ;


 scalar_t__ strscpy (char*,char*,size_t) ;

__attribute__((used)) static ssize_t sysctl_cpy_dir(const struct ctl_dir *dir, char **bufp,
         size_t *lenp)
{
 ssize_t tmp_ret = 0, ret;

 if (dir->header.parent) {
  tmp_ret = sysctl_cpy_dir(dir->header.parent, bufp, lenp);
  if (tmp_ret < 0)
   return tmp_ret;
 }

 ret = strscpy(*bufp, dir->header.ctl_table[0].procname, *lenp);
 if (ret < 0)
  return ret;
 *bufp += ret;
 *lenp -= ret;
 ret += tmp_ret;


 if (!ret)
  return ret;

 tmp_ret = strscpy(*bufp, "/", *lenp);
 if (tmp_ret < 0)
  return tmp_ret;
 *bufp += tmp_ret;
 *lenp -= tmp_ret;

 return ret + tmp_ret;
}
