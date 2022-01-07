
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PREFIX_SIZE ;

__attribute__((used)) static int remaining(int wrote)
{
 if (PREFIX_SIZE - wrote > 0)
  return PREFIX_SIZE - wrote;
 return 0;
}
