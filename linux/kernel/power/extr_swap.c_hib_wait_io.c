
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hib_bio_batch {int error; int count; int wait; } ;
typedef int blk_status_t ;


 scalar_t__ atomic_read (int *) ;
 int blk_status_to_errno (int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static blk_status_t hib_wait_io(struct hib_bio_batch *hb)
{
 wait_event(hb->wait, atomic_read(&hb->count) == 0);
 return blk_status_to_errno(hb->error);
}
