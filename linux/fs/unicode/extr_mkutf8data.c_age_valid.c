
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int UNICODE_MAJ_MAX ;
 unsigned int UNICODE_MIN_MAX ;
 unsigned int UNICODE_REV_MAX ;

__attribute__((used)) static int age_valid(unsigned int major, unsigned int minor,
       unsigned int revision)
{
 if (major > UNICODE_MAJ_MAX)
  return 0;
 if (minor > UNICODE_MIN_MAX)
  return 0;
 if (revision > UNICODE_REV_MAX)
  return 0;
 return 1;
}
