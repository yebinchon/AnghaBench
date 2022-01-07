
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int BUG_ON (int ) ;
 int buffer_dirty (struct buffer_head*) ;
 int clear_buffer_mapped (struct buffer_head*) ;

__attribute__((used)) static int ocfs2_clear_cow_buffer(handle_t *handle, struct buffer_head *bh)
{
 BUG_ON(buffer_dirty(bh));

 clear_buffer_mapped(bh);

 return 0;
}
