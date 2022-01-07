
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int seglist_lock; scalar_t__* nr_dirty; int * dirty_segmap; } ;
typedef enum dirty_type { ____Placeholder_dirty_type } dirty_type ;


 struct dirty_seglist_info* DIRTY_I (struct f2fs_sb_info*) ;
 int kvfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void discard_dirty_segmap(struct f2fs_sb_info *sbi,
  enum dirty_type dirty_type)
{
 struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);

 mutex_lock(&dirty_i->seglist_lock);
 kvfree(dirty_i->dirty_segmap[dirty_type]);
 dirty_i->nr_dirty[dirty_type] = 0;
 mutex_unlock(&dirty_i->seglist_lock);
}
