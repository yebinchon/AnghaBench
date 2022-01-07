
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap_store {int state; int last_allocated_ptr; int last_allocated_key; int data; } ;
struct TYPE_2__ {int u_data; } ;
struct nilfs_bmap {int b_state; int b_last_allocated_ptr; int b_last_allocated_key; TYPE_1__ b_u; } ;


 int memcpy (int ,int ,int) ;

void nilfs_bmap_save(const struct nilfs_bmap *bmap,
       struct nilfs_bmap_store *store)
{
 memcpy(store->data, bmap->b_u.u_data, sizeof(store->data));
 store->last_allocated_key = bmap->b_last_allocated_key;
 store->last_allocated_ptr = bmap->b_last_allocated_ptr;
 store->state = bmap->b_state;
}
