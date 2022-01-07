
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct quad_buffer_head {scalar_t__ data; TYPE_1__** bh; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int mark_buffer_dirty (TYPE_1__*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 scalar_t__ unlikely (int) ;

void hpfs_mark_4buffers_dirty(struct quad_buffer_head *qbh)
{
 if (unlikely(qbh->data != qbh->bh[0]->b_data)) {
  memcpy(qbh->bh[0]->b_data, qbh->data + 0 * 512, 512);
  memcpy(qbh->bh[1]->b_data, qbh->data + 1 * 512, 512);
  memcpy(qbh->bh[2]->b_data, qbh->data + 2 * 512, 512);
  memcpy(qbh->bh[3]->b_data, qbh->data + 3 * 512, 512);
 }
 mark_buffer_dirty(qbh->bh[0]);
 mark_buffer_dirty(qbh->bh[1]);
 mark_buffer_dirty(qbh->bh[2]);
 mark_buffer_dirty(qbh->bh[3]);
}
