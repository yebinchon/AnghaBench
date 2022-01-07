
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prompt_integer (int*,char const*) ;

__attribute__((used)) static void prompt_percent(int *target, const char *msg)
{
 int tmp = 0;

 prompt_integer(&tmp, msg);
 if (tmp >= 0 && tmp <= 100)
  *target = tmp;
}
