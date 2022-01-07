
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hd_struct {int dummy; } ;
struct bio_vec {unsigned int bv_len; unsigned int bv_offset; int bv_page; } ;
struct TYPE_2__ {int bi_sector; int bi_size; } ;
struct bio {TYPE_1__ bi_iter; int bi_disk; int bi_partno; } ;
typedef int sector_t ;


 int REQ_OP_READ ;
 struct hd_struct* __disk_get_part (int ,int ) ;
 struct bio_vec* bio_last_bvec_all (struct bio*) ;
 int get_capacity (int ) ;
 scalar_t__ likely (int) ;
 int mp_bvec_last_segment (struct bio_vec*,struct bio_vec*) ;
 int part_nr_sects_read (struct hd_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;
 int zero_user (int ,unsigned int,unsigned int) ;

void guard_bio_eod(int op, struct bio *bio)
{
 sector_t maxsector;
 struct bio_vec *bvec = bio_last_bvec_all(bio);
 unsigned truncated_bytes;
 struct hd_struct *part;

 rcu_read_lock();
 part = __disk_get_part(bio->bi_disk, bio->bi_partno);
 if (part)
  maxsector = part_nr_sects_read(part);
 else
  maxsector = get_capacity(bio->bi_disk);
 rcu_read_unlock();

 if (!maxsector)
  return;






 if (unlikely(bio->bi_iter.bi_sector >= maxsector))
  return;

 maxsector -= bio->bi_iter.bi_sector;
 if (likely((bio->bi_iter.bi_size >> 9) <= maxsector))
  return;


 truncated_bytes = bio->bi_iter.bi_size - (maxsector << 9);





 if (truncated_bytes > bvec->bv_len)
  return;


 bio->bi_iter.bi_size -= truncated_bytes;
 bvec->bv_len -= truncated_bytes;


 if (op == REQ_OP_READ) {
  struct bio_vec bv;

  mp_bvec_last_segment(bvec, &bv);
  zero_user(bv.bv_page, bv.bv_offset + bv.bv_len,
    truncated_bytes);
 }
}
