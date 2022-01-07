
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __gang_check (unsigned long,int,int,int,int) ;
 int rand () ;

void __big_gang_check(void)
{
 unsigned long start;
 int wrapped = 0;

 start = 0;
 do {
  unsigned long old_start;


  __gang_check(start, rand() % 113 + 1, rand() % 71,
    rand() % 157, rand() % 91 + 1);
  old_start = start;
  start += rand() % 1000000;
  start %= 1ULL << 33;
  if (start < old_start)
   wrapped = 1;
 } while (!wrapped);
}
