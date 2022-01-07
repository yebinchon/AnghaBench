
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jffs2_sb_info {int resv_blocks_deletion; int flash_size; int nr_blocks; int sector_size; int resv_blocks_write; int resv_blocks_gctrigger; int resv_blocks_gcmerge; int resv_blocks_gcbad; int vdirty_blocks_gctrigger; int nospc_dirty_size; } ;


 int dbg_fsbuild (char*,int,...) ;
 scalar_t__ jffs2_can_mark_obsolete (struct jffs2_sb_info*) ;

__attribute__((used)) static void jffs2_calc_trigger_levels(struct jffs2_sb_info *c)
{
 uint32_t size;




 c->resv_blocks_deletion = 2;






 size = c->flash_size / 50;
 size += c->nr_blocks * 100;
 size += c->sector_size - 1;

 c->resv_blocks_write = c->resv_blocks_deletion + (size / c->sector_size);



 c->resv_blocks_gctrigger = c->resv_blocks_write + 1;



 c->resv_blocks_gcmerge = c->resv_blocks_deletion + 1;



 c->resv_blocks_gcbad = 0;





 c->vdirty_blocks_gctrigger = c->resv_blocks_gctrigger;
 if (jffs2_can_mark_obsolete(c))
  c->vdirty_blocks_gctrigger *= 10;



 c->nospc_dirty_size = c->sector_size + (c->flash_size / 100);

 dbg_fsbuild("trigger levels (size %d KiB, block size %d KiB, %d blocks)\n",
      c->flash_size / 1024, c->sector_size / 1024, c->nr_blocks);
 dbg_fsbuild("Blocks required to allow deletion:    %d (%d KiB)\n",
    c->resv_blocks_deletion, c->resv_blocks_deletion*c->sector_size/1024);
 dbg_fsbuild("Blocks required to allow writes:      %d (%d KiB)\n",
    c->resv_blocks_write, c->resv_blocks_write*c->sector_size/1024);
 dbg_fsbuild("Blocks required to quiesce GC thread: %d (%d KiB)\n",
    c->resv_blocks_gctrigger, c->resv_blocks_gctrigger*c->sector_size/1024);
 dbg_fsbuild("Blocks required to allow GC merges:   %d (%d KiB)\n",
    c->resv_blocks_gcmerge, c->resv_blocks_gcmerge*c->sector_size/1024);
 dbg_fsbuild("Blocks required to GC bad blocks:     %d (%d KiB)\n",
    c->resv_blocks_gcbad, c->resv_blocks_gcbad*c->sector_size/1024);
 dbg_fsbuild("Amount of dirty space required to GC: %d bytes\n",
    c->nospc_dirty_size);
 dbg_fsbuild("Very dirty blocks before GC triggered: %d\n",
    c->vdirty_blocks_gctrigger);
}
