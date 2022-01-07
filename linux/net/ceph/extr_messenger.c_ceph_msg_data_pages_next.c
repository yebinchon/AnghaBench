
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ceph_msg_data_cursor {size_t page_index; size_t page_count; size_t page_offset; size_t resid; scalar_t__ last_piece; struct ceph_msg_data* data; } ;
struct ceph_msg_data {scalar_t__ type; struct page** pages; } ;


 int BUG_ON (int) ;
 scalar_t__ CEPH_MSG_DATA_PAGES ;
 size_t PAGE_SIZE ;

__attribute__((used)) static struct page *
ceph_msg_data_pages_next(struct ceph_msg_data_cursor *cursor,
     size_t *page_offset, size_t *length)
{
 struct ceph_msg_data *data = cursor->data;

 BUG_ON(data->type != CEPH_MSG_DATA_PAGES);

 BUG_ON(cursor->page_index >= cursor->page_count);
 BUG_ON(cursor->page_offset >= PAGE_SIZE);

 *page_offset = cursor->page_offset;
 if (cursor->last_piece)
  *length = cursor->resid;
 else
  *length = PAGE_SIZE - *page_offset;

 return data->pages[cursor->page_index];
}
