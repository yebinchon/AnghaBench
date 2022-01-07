
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cookie; int last_queue; } ;
struct iomap_dio {TYPE_1__ submit; TYPE_2__* iocb; int ref; } ;
struct iomap {int bdev; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {int ki_flags; } ;


 int IOCB_HIPRI ;
 int atomic_inc (int *) ;
 int bdev_get_queue (int ) ;
 int bio_set_polled (struct bio*,TYPE_2__*) ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static void iomap_dio_submit_bio(struct iomap_dio *dio, struct iomap *iomap,
  struct bio *bio)
{
 atomic_inc(&dio->ref);

 if (dio->iocb->ki_flags & IOCB_HIPRI)
  bio_set_polled(bio, dio->iocb);

 dio->submit.last_queue = bdev_get_queue(iomap->bdev);
 dio->submit.cookie = submit_bio(bio);
}
