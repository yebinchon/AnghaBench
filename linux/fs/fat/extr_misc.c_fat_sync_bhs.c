
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int EIO ;
 int buffer_uptodate (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;
 int write_dirty_buffer (struct buffer_head*,int ) ;

int fat_sync_bhs(struct buffer_head **bhs, int nr_bhs)
{
 int i, err = 0;

 for (i = 0; i < nr_bhs; i++)
  write_dirty_buffer(bhs[i], 0);

 for (i = 0; i < nr_bhs; i++) {
  wait_on_buffer(bhs[i]);
  if (!err && !buffer_uptodate(bhs[i]))
   err = -EIO;
 }
 return err;
}
