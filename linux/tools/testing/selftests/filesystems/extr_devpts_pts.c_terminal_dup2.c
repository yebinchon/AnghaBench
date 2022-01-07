
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dup2 (int,int) ;

__attribute__((used)) static bool terminal_dup2(int duplicate, int original)
{
 int ret;

 ret = dup2(duplicate, original);
 if (ret < 0)
  return 0;

 return 1;
}
