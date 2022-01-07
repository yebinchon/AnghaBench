
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ jiffies ;
 int loopback_timer ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void rose_set_loopback_timer(void)
{
 mod_timer(&loopback_timer, jiffies + 10);
}
