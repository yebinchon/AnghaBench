
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_ONCE (int ) ;
 int is_stopped () ;
 int sk_storage_map ;
 int usleep (int) ;

__attribute__((used)) static bool wait_for_map(void)
{
 while (READ_ONCE(sk_storage_map) == -1 && !is_stopped())
  usleep(50);

 return !is_stopped();
}
