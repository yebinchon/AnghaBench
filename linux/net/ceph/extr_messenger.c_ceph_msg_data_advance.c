
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_msg_data_cursor {size_t resid; int need_crc; TYPE_1__* data; int last_piece; scalar_t__ total_resid; } ;
struct TYPE_2__ {int type; } ;


 int BUG () ;
 int BUG_ON (int) ;





 int WARN_ON (int) ;
 int __ceph_msg_data_cursor_init (struct ceph_msg_data_cursor*) ;
 int ceph_msg_data_bio_advance (struct ceph_msg_data_cursor*,size_t) ;
 int ceph_msg_data_bvecs_advance (struct ceph_msg_data_cursor*,size_t) ;
 int ceph_msg_data_pagelist_advance (struct ceph_msg_data_cursor*,size_t) ;
 int ceph_msg_data_pages_advance (struct ceph_msg_data_cursor*,size_t) ;

__attribute__((used)) static void ceph_msg_data_advance(struct ceph_msg_data_cursor *cursor,
      size_t bytes)
{
 bool new_piece;

 BUG_ON(bytes > cursor->resid);
 switch (cursor->data->type) {
 case 129:
  new_piece = ceph_msg_data_pagelist_advance(cursor, bytes);
  break;
 case 128:
  new_piece = ceph_msg_data_pages_advance(cursor, bytes);
  break;





 case 131:
  new_piece = ceph_msg_data_bvecs_advance(cursor, bytes);
  break;
 case 130:
 default:
  BUG();
  break;
 }
 cursor->total_resid -= bytes;

 if (!cursor->resid && cursor->total_resid) {
  WARN_ON(!cursor->last_piece);
  cursor->data++;
  __ceph_msg_data_cursor_init(cursor);
  new_piece = 1;
 }
 cursor->need_crc = new_piece;
}
