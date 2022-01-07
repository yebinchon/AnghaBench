
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __event (int,void*,int) ;

__attribute__((used)) static int wp_event(void *addr, int sig)
{
 return __event(0, addr, sig);
}
