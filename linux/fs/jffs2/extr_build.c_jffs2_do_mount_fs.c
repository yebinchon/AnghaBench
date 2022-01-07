
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct jffs2_sb_info {int free_size; int flash_size; int nr_blocks; int sector_size; int highest_ino; TYPE_1__* blocks; int * summary; int bad_used_list; int bad_list; int free_list; int erase_complete_list; int erasable_pending_wbuf_list; int erase_pending_list; int erase_checking_list; int erasing_list; int erasable_list; int dirty_list; int very_dirty_list; int clean_list; } ;
struct jffs2_eraseblock {int dummy; } ;
struct TYPE_4__ {int offset; int free_size; int list; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dbg_fsbuild (char*) ;
 scalar_t__ jffs2_blocks_use_vmalloc (struct jffs2_sb_info*) ;
 scalar_t__ jffs2_build_filesystem (struct jffs2_sb_info*) ;
 int jffs2_calc_trigger_levels (struct jffs2_sb_info*) ;
 int jffs2_free_ino_caches (struct jffs2_sb_info*) ;
 int jffs2_free_raw_node_refs (struct jffs2_sb_info*) ;
 int jffs2_sum_init (struct jffs2_sb_info*) ;
 int kvfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 TYPE_1__* vzalloc (int) ;

int jffs2_do_mount_fs(struct jffs2_sb_info *c)
{
 int ret;
 int i;
 int size;

 c->free_size = c->flash_size;
 c->nr_blocks = c->flash_size / c->sector_size;
 size = sizeof(struct jffs2_eraseblock) * c->nr_blocks;

 if (jffs2_blocks_use_vmalloc(c))
  c->blocks = vzalloc(size);
 else

  c->blocks = kzalloc(size, GFP_KERNEL);
 if (!c->blocks)
  return -ENOMEM;

 for (i=0; i<c->nr_blocks; i++) {
  INIT_LIST_HEAD(&c->blocks[i].list);
  c->blocks[i].offset = i * c->sector_size;
  c->blocks[i].free_size = c->sector_size;
 }

 INIT_LIST_HEAD(&c->clean_list);
 INIT_LIST_HEAD(&c->very_dirty_list);
 INIT_LIST_HEAD(&c->dirty_list);
 INIT_LIST_HEAD(&c->erasable_list);
 INIT_LIST_HEAD(&c->erasing_list);
 INIT_LIST_HEAD(&c->erase_checking_list);
 INIT_LIST_HEAD(&c->erase_pending_list);
 INIT_LIST_HEAD(&c->erasable_pending_wbuf_list);
 INIT_LIST_HEAD(&c->erase_complete_list);
 INIT_LIST_HEAD(&c->free_list);
 INIT_LIST_HEAD(&c->bad_list);
 INIT_LIST_HEAD(&c->bad_used_list);
 c->highest_ino = 1;
 c->summary = ((void*)0);

 ret = jffs2_sum_init(c);
 if (ret)
  goto out_free;

 if (jffs2_build_filesystem(c)) {
  dbg_fsbuild("build_fs failed\n");
  jffs2_free_ino_caches(c);
  jffs2_free_raw_node_refs(c);
  ret = -EIO;
  goto out_free;
 }

 jffs2_calc_trigger_levels(c);

 return 0;

 out_free:
 kvfree(c->blocks);

 return ret;
}
