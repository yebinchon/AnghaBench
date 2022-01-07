
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_msg_data_cursor {size_t page_offset; size_t resid; scalar_t__ page_index; scalar_t__ page_count; int last_piece; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int BUG_ON (int) ;
 scalar_t__ CEPH_MSG_DATA_PAGES ;
 size_t PAGE_MASK ;
 size_t PAGE_SIZE ;

__attribute__((used)) static bool ceph_msg_data_pages_advance(struct ceph_msg_data_cursor *cursor,
      size_t bytes)
{
 BUG_ON(cursor->data->type != CEPH_MSG_DATA_PAGES);

 BUG_ON(cursor->page_offset + bytes > PAGE_SIZE);



 cursor->resid -= bytes;
 cursor->page_offset = (cursor->page_offset + bytes) & ~PAGE_MASK;
 if (!bytes || cursor->page_offset)
  return 0;

 if (!cursor->resid)
  return 0;



 BUG_ON(cursor->page_index >= cursor->page_count);
 cursor->page_index++;
 cursor->last_piece = cursor->resid <= PAGE_SIZE;

 return 1;
}
