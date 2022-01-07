
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iter; } ;
struct iomap_dio {int size; TYPE_1__ submit; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ iov_iter_zero (scalar_t__,int ) ;

__attribute__((used)) static loff_t
iomap_dio_hole_actor(loff_t length, struct iomap_dio *dio)
{
 length = iov_iter_zero(length, dio->submit.iter);
 dio->size += length;
 return length;
}
