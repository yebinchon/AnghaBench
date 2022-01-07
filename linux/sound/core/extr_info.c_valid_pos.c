
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef long loff_t ;



__attribute__((used)) static bool valid_pos(loff_t pos, size_t count)
{
 if (pos < 0 || (long) pos != pos || (ssize_t) count < 0)
  return 0;
 if ((unsigned long) pos + (unsigned long) count < (unsigned long) pos)
  return 0;
 return 1;
}
