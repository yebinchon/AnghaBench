
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hib_bio_batch {int error; int wait; int count; } ;


 int BLK_STS_OK ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static void hib_init_batch(struct hib_bio_batch *hb)
{
 atomic_set(&hb->count, 0);
 init_waitqueue_head(&hb->wait);
 hb->error = BLK_STS_OK;
}
