
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nilfs_inode {int i_bmap; } ;
struct TYPE_5__ {int u_flags; int u_data; } ;
struct nilfs_bmap {TYPE_2__ b_u; void* b_last_allocated_ptr; int b_last_allocated_key; int b_ptr_type; int b_sem; TYPE_1__* b_inode; scalar_t__ b_state; } ;
struct TYPE_4__ {int i_ino; } ;
struct TYPE_6__ {TYPE_1__ vfs_inode; } ;


 TYPE_3__* NILFS_BMAP_I (struct nilfs_bmap*) ;
 void* NILFS_BMAP_INVALID_PTR ;
 int NILFS_BMAP_LARGE ;
 void* NILFS_BMAP_NEW_PTR_INIT ;
 int NILFS_BMAP_PTR_P ;
 int NILFS_BMAP_PTR_VM ;
 int NILFS_BMAP_PTR_VS ;
 int NILFS_BMAP_SIZE ;




 int init_rwsem (int *) ;
 int lockdep_set_class (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int nilfs_bmap_dat_lock_key ;
 int nilfs_bmap_mdt_lock_key ;
 int nilfs_btree_init (struct nilfs_bmap*) ;
 int nilfs_direct_init (struct nilfs_bmap*) ;

int nilfs_bmap_read(struct nilfs_bmap *bmap, struct nilfs_inode *raw_inode)
{
 if (raw_inode == ((void*)0))
  memset(bmap->b_u.u_data, 0, NILFS_BMAP_SIZE);
 else
  memcpy(bmap->b_u.u_data, raw_inode->i_bmap, NILFS_BMAP_SIZE);

 init_rwsem(&bmap->b_sem);
 bmap->b_state = 0;
 bmap->b_inode = &NILFS_BMAP_I(bmap)->vfs_inode;
 switch (bmap->b_inode->i_ino) {
 case 130:
  bmap->b_ptr_type = NILFS_BMAP_PTR_P;
  bmap->b_last_allocated_key = 0;
  bmap->b_last_allocated_ptr = NILFS_BMAP_NEW_PTR_INIT;
  lockdep_set_class(&bmap->b_sem, &nilfs_bmap_dat_lock_key);
  break;
 case 131:
 case 128:
  bmap->b_ptr_type = NILFS_BMAP_PTR_VS;
  bmap->b_last_allocated_key = 0;
  bmap->b_last_allocated_ptr = NILFS_BMAP_INVALID_PTR;
  lockdep_set_class(&bmap->b_sem, &nilfs_bmap_mdt_lock_key);
  break;
 case 129:
  lockdep_set_class(&bmap->b_sem, &nilfs_bmap_mdt_lock_key);

 default:
  bmap->b_ptr_type = NILFS_BMAP_PTR_VM;
  bmap->b_last_allocated_key = 0;
  bmap->b_last_allocated_ptr = NILFS_BMAP_INVALID_PTR;
  break;
 }

 return (bmap->b_u.u_flags & NILFS_BMAP_LARGE) ?
  nilfs_btree_init(bmap) : nilfs_direct_init(bmap);
}
