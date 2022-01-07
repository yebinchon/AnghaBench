
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_pagelist {scalar_t__ length; int head; } ;
struct ceph_msg_data_cursor {scalar_t__ offset; scalar_t__ resid; int last_piece; TYPE_1__* page; struct ceph_msg_data* data; } ;
struct ceph_msg_data {scalar_t__ type; struct ceph_pagelist* pagelist; } ;
struct TYPE_3__ {int lru; } ;


 int BUG_ON (int) ;
 scalar_t__ CEPH_MSG_DATA_PAGELIST ;
 size_t PAGE_MASK ;
 size_t PAGE_SIZE ;
 int list_is_last (int *,int *) ;
 TYPE_1__* list_next_entry (TYPE_1__*,int ) ;
 int lru ;

__attribute__((used)) static bool ceph_msg_data_pagelist_advance(struct ceph_msg_data_cursor *cursor,
      size_t bytes)
{
 struct ceph_msg_data *data = cursor->data;
 struct ceph_pagelist *pagelist;

 BUG_ON(data->type != CEPH_MSG_DATA_PAGELIST);

 pagelist = data->pagelist;
 BUG_ON(!pagelist);

 BUG_ON(cursor->offset + cursor->resid != pagelist->length);
 BUG_ON((cursor->offset & ~PAGE_MASK) + bytes > PAGE_SIZE);



 cursor->resid -= bytes;
 cursor->offset += bytes;

 if (!bytes || cursor->offset & ~PAGE_MASK)
  return 0;

 if (!cursor->resid)
  return 0;



 BUG_ON(list_is_last(&cursor->page->lru, &pagelist->head));
 cursor->page = list_next_entry(cursor->page, lru);
 cursor->last_piece = cursor->resid <= PAGE_SIZE;

 return 1;
}
