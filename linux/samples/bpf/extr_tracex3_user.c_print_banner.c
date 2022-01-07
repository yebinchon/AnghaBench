
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ full_range ;
 int printf (char*) ;

__attribute__((used)) static void print_banner(void)
{
 if (full_range)
  printf("|1ns     |10ns     |100ns    |1us      |10us     |100us"
         "    |1ms      |10ms     |100ms    |1s       |10s\n");
 else
  printf("|1us      |10us     |100us    |1ms      |10ms     "
         "|100ms    |1s       |10s\n");
}
