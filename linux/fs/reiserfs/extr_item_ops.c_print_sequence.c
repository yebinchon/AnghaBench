
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ INT_MAX ;
 int printk (char*,scalar_t__,...) ;

__attribute__((used)) static void print_sequence(__u32 start, int len)
{
 if (start == INT_MAX)
  return;

 if (len == 1)
  printk(" %d", start);
 else
  printk(" %d(%d)", start, len);
}
