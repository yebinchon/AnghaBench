
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct in_core_key {int k_objectid; } ;
struct TYPE_5__ {int search_start; int beg; int end; TYPE_1__* th; struct in_core_key key; } ;
typedef TYPE_2__ reiserfs_blocknr_hint_t ;
struct TYPE_4__ {scalar_t__ displace_new_blocks; } ;


 int keyed_hash (char*,int) ;

__attribute__((used)) static inline void displace_new_packing_locality(reiserfs_blocknr_hint_t * hint)
{
 struct in_core_key *key = &hint->key;

 hint->th->displace_new_blocks = 0;
 hint->search_start =
     hint->beg + keyed_hash((char *)(&key->k_objectid),
       4) % (hint->end - hint->beg);
}
