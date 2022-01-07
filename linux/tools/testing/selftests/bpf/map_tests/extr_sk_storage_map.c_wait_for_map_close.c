
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_ONCE (int ) ;
 int is_stopped () ;
 int sk_storage_map ;

__attribute__((used)) static bool wait_for_map_close(void)
{
 while (READ_ONCE(sk_storage_map) != -1 && !is_stopped())
  ;

 return !is_stopped();
}
