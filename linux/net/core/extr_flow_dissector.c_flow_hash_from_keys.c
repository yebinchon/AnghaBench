
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct flow_keys {int dummy; } ;


 int __flow_hash_from_keys (struct flow_keys*,int *) ;
 int __flow_hash_secret_init () ;
 int hashrnd ;

u32 flow_hash_from_keys(struct flow_keys *keys)
{
 __flow_hash_secret_init();
 return __flow_hash_from_keys(keys, &hashrnd);
}
