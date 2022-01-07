
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int * d_name; } ;


 scalar_t__ isdigit (int ) ;

int dir_filter(const struct dirent *dirp)
{
 if (isdigit(dirp->d_name[0]))
  return 1;
 else
  return 0;
}
