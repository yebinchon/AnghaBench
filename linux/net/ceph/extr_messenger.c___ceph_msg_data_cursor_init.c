
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_msg_data_cursor {size_t total_resid; int need_crc; TYPE_1__* data; } ;
struct TYPE_2__ {int type; } ;







 int ceph_msg_data_bio_cursor_init (struct ceph_msg_data_cursor*,size_t) ;
 int ceph_msg_data_bvecs_cursor_init (struct ceph_msg_data_cursor*,size_t) ;
 int ceph_msg_data_pagelist_cursor_init (struct ceph_msg_data_cursor*,size_t) ;
 int ceph_msg_data_pages_cursor_init (struct ceph_msg_data_cursor*,size_t) ;

__attribute__((used)) static void __ceph_msg_data_cursor_init(struct ceph_msg_data_cursor *cursor)
{
 size_t length = cursor->total_resid;

 switch (cursor->data->type) {
 case 129:
  ceph_msg_data_pagelist_cursor_init(cursor, length);
  break;
 case 128:
  ceph_msg_data_pages_cursor_init(cursor, length);
  break;





 case 131:
  ceph_msg_data_bvecs_cursor_init(cursor, length);
  break;
 case 130:
 default:

  break;
 }
 cursor->need_crc = 1;
}
