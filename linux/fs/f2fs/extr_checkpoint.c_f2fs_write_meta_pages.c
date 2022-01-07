
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; long nr_to_write; int pages_skipped; } ;
struct f2fs_sb_info {int cp_mutex; } ;
struct address_space {int host; } ;


 int F2FS_DIRTY_META ;
 struct f2fs_sb_info* F2FS_M_SB (struct address_space*) ;
 int FS_META_IO ;
 int META ;
 int SBI_POR_DOING ;
 scalar_t__ WB_SYNC_ALL ;
 long f2fs_sync_meta_pages (struct f2fs_sb_info*,int ,long,int ) ;
 scalar_t__ get_pages (struct f2fs_sb_info*,int ) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 long max (long,long) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nr_pages_to_skip (struct f2fs_sb_info*,int ) ;
 long nr_pages_to_write (struct f2fs_sb_info*,int ,struct writeback_control*) ;
 int trace_f2fs_writepages (int ,struct writeback_control*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int f2fs_write_meta_pages(struct address_space *mapping,
    struct writeback_control *wbc)
{
 struct f2fs_sb_info *sbi = F2FS_M_SB(mapping);
 long diff, written;

 if (unlikely(is_sbi_flag_set(sbi, SBI_POR_DOING)))
  goto skip_write;


 if (wbc->sync_mode != WB_SYNC_ALL &&
   get_pages(sbi, F2FS_DIRTY_META) <
     nr_pages_to_skip(sbi, META))
  goto skip_write;


 if (!mutex_trylock(&sbi->cp_mutex))
  goto skip_write;

 trace_f2fs_writepages(mapping->host, wbc, META);
 diff = nr_pages_to_write(sbi, META, wbc);
 written = f2fs_sync_meta_pages(sbi, META, wbc->nr_to_write, FS_META_IO);
 mutex_unlock(&sbi->cp_mutex);
 wbc->nr_to_write = max((long)0, wbc->nr_to_write - written - diff);
 return 0;

skip_write:
 wbc->pages_skipped += get_pages(sbi, F2FS_DIRTY_META);
 trace_f2fs_writepages(mapping->host, wbc, META);
 return 0;
}
