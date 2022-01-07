
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key {int enabled; } ;


 int WARN (int,char*) ;
 int atomic_fetch_add_unless (int *,int,int) ;

__attribute__((used)) static bool static_key_slow_try_dec(struct static_key *key)
{
 int val;

 val = atomic_fetch_add_unless(&key->enabled, -1, 1);
 if (val == 1)
  return 0;
 WARN(val < 0, "jump label: negative count!\n");
 return 1;
}
