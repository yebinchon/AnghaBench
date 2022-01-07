
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_meta_header {int mh_magic; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int GFS2_MAGIC ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int cpu_to_be32 (int ) ;
 int lock_buffer (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void meta_prep_new(struct buffer_head *bh)
{
 struct gfs2_meta_header *mh = (struct gfs2_meta_header *)bh->b_data;

 lock_buffer(bh);
 clear_buffer_dirty(bh);
 set_buffer_uptodate(bh);
 unlock_buffer(bh);

 mh->mh_magic = cpu_to_be32(GFS2_MAGIC);
}
