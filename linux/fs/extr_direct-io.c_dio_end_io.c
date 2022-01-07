
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio {scalar_t__ is_async; } ;
struct bio {struct dio* bi_private; } ;


 int dio_bio_end_aio (struct bio*) ;
 int dio_bio_end_io (struct bio*) ;

void dio_end_io(struct bio *bio)
{
 struct dio *dio = bio->bi_private;

 if (dio->is_async)
  dio_bio_end_aio(bio);
 else
  dio_bio_end_io(bio);
}
