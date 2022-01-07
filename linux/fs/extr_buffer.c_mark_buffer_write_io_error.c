
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {scalar_t__ b_assoc_map; TYPE_1__* b_page; } ;
struct TYPE_2__ {scalar_t__ mapping; } ;


 int EIO ;
 int mapping_set_error (scalar_t__,int ) ;
 int set_buffer_write_io_error (struct buffer_head*) ;

void mark_buffer_write_io_error(struct buffer_head *bh)
{
 set_buffer_write_io_error(bh);

 if (bh->b_page && bh->b_page->mapping)
  mapping_set_error(bh->b_page->mapping, -EIO);
 if (bh->b_assoc_map)
  mapping_set_error(bh->b_assoc_map, -EIO);
}
