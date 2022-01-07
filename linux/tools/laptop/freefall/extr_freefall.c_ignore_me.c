
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int protect (int ) ;
 int set_led (int ) ;

__attribute__((used)) static void ignore_me(int signum)
{
 protect(0);
 set_led(0);
}
