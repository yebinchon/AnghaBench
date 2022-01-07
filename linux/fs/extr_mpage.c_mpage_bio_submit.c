
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_end_io; } ;


 int bio_set_op_attrs (struct bio*,int,int) ;
 int guard_bio_eod (int,struct bio*) ;
 int mpage_end_io ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static struct bio *mpage_bio_submit(int op, int op_flags, struct bio *bio)
{
 bio->bi_end_io = mpage_end_io;
 bio_set_op_attrs(bio, op, op_flags);
 guard_bio_eod(op, bio);
 submit_bio(bio);
 return ((void*)0);
}
