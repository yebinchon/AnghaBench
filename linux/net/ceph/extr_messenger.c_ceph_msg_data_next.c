
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct ceph_msg_data_cursor {size_t resid; int last_piece; TYPE_1__* data; } ;
struct TYPE_2__ {int type; } ;


 int BUG_ON (int) ;





 size_t PAGE_SIZE ;
 struct page* ceph_msg_data_bio_next (struct ceph_msg_data_cursor*,size_t*,size_t*) ;
 struct page* ceph_msg_data_bvecs_next (struct ceph_msg_data_cursor*,size_t*,size_t*) ;
 struct page* ceph_msg_data_pagelist_next (struct ceph_msg_data_cursor*,size_t*,size_t*) ;
 struct page* ceph_msg_data_pages_next (struct ceph_msg_data_cursor*,size_t*,size_t*) ;

__attribute__((used)) static struct page *ceph_msg_data_next(struct ceph_msg_data_cursor *cursor,
     size_t *page_offset, size_t *length,
     bool *last_piece)
{
 struct page *page;

 switch (cursor->data->type) {
 case 129:
  page = ceph_msg_data_pagelist_next(cursor, page_offset, length);
  break;
 case 128:
  page = ceph_msg_data_pages_next(cursor, page_offset, length);
  break;





 case 131:
  page = ceph_msg_data_bvecs_next(cursor, page_offset, length);
  break;
 case 130:
 default:
  page = ((void*)0);
  break;
 }

 BUG_ON(!page);
 BUG_ON(*page_offset + *length > PAGE_SIZE);
 BUG_ON(!*length);
 BUG_ON(*length > cursor->resid);
 if (last_piece)
  *last_piece = cursor->last_piece;

 return page;
}
