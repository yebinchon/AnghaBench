
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key {int enabled; } ;


 int atomic_read (int *) ;

int static_key_count(struct static_key *key)
{




 int n = atomic_read(&key->enabled);

 return n >= 0 ? n : 1;
}
