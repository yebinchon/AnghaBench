
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ltail_lnum; int log_mutex; int buds_lock; scalar_t__ cmt_bud_bytes; int bud_bytes; int leb_size; int min_log_bytes; } ;


 int dbg_check_bud_bytes (struct ubifs_info*) ;
 int dbg_log (char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_write_master (struct ubifs_info*) ;

int ubifs_log_end_commit(struct ubifs_info *c, int ltail_lnum)
{
 int err;






 mutex_lock(&c->log_mutex);

 dbg_log("old tail was LEB %d:0, new tail is LEB %d:0",
  c->ltail_lnum, ltail_lnum);

 c->ltail_lnum = ltail_lnum;




 c->min_log_bytes = c->leb_size;

 spin_lock(&c->buds_lock);
 c->bud_bytes -= c->cmt_bud_bytes;
 spin_unlock(&c->buds_lock);

 err = dbg_check_bud_bytes(c);
 if (err)
  goto out;

 err = ubifs_write_master(c);

out:
 mutex_unlock(&c->log_mutex);
 return err;
}
