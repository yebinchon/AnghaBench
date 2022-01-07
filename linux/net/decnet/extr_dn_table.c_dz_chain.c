
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_zone {struct dn_fib_node** dz_hash; } ;
struct dn_fib_node {int dummy; } ;
typedef int dn_fib_key_t ;
struct TYPE_2__ {size_t datum; } ;


 TYPE_1__ dn_hash (int ,struct dn_zone*) ;

__attribute__((used)) static inline struct dn_fib_node *dz_chain(dn_fib_key_t key, struct dn_zone *dz)
{
 return dz->dz_hash[dn_hash(key, dz).datum];
}
