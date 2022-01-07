
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mdev_state {TYPE_1__* type; scalar_t__ memblk; } ;
struct mdev_device {int dummy; } ;
struct TYPE_2__ {int width; int bytepp; int height; } ;


 struct mdev_state* mdev_get_drvdata (struct mdev_device*) ;
 int memset (scalar_t__,int,int) ;

__attribute__((used)) static int mdpy_reset(struct mdev_device *mdev)
{
 struct mdev_state *mdev_state = mdev_get_drvdata(mdev);
 u32 stride, i;


 stride = mdev_state->type->width * mdev_state->type->bytepp;
 for (i = 0; i < mdev_state->type->height; i++)
  memset(mdev_state->memblk + i * stride,
         i * 255 / mdev_state->type->height,
         stride);
 return 0;
}
