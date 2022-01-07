
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ubi_num; } ;
struct ubifs_info {int jhead_cnt; TYPE_2__ vi; TYPE_1__* jheads; } ;
struct super_block {struct ubifs_info* s_fs_info; } ;
struct TYPE_3__ {int wbuf; } ;


 int ubi_sync (int ) ;
 int ubifs_run_commit (struct ubifs_info*) ;
 int ubifs_wbuf_sync (int *) ;

__attribute__((used)) static int ubifs_sync_fs(struct super_block *sb, int wait)
{
 int i, err;
 struct ubifs_info *c = sb->s_fs_info;






 if (!wait)
  return 0;





 for (i = 0; i < c->jhead_cnt; i++) {
  err = ubifs_wbuf_sync(&c->jheads[i].wbuf);
  if (err)
   return err;
 }
 err = ubifs_run_commit(c);
 if (err)
  return err;

 return ubi_sync(c->vi.ubi_num);
}
