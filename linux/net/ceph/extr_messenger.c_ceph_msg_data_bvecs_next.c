
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct ceph_msg_data_cursor {int bvec_iter; TYPE_2__* data; } ;
struct bio_vec {size_t bv_offset; size_t bv_len; struct page* bv_page; } ;
struct TYPE_3__ {int bvecs; } ;
struct TYPE_4__ {TYPE_1__ bvec_pos; } ;


 struct bio_vec bvec_iter_bvec (int ,int ) ;

__attribute__((used)) static struct page *ceph_msg_data_bvecs_next(struct ceph_msg_data_cursor *cursor,
      size_t *page_offset,
      size_t *length)
{
 struct bio_vec bv = bvec_iter_bvec(cursor->data->bvec_pos.bvecs,
        cursor->bvec_iter);

 *page_offset = bv.bv_offset;
 *length = bv.bv_len;
 return bv.bv_page;
}
