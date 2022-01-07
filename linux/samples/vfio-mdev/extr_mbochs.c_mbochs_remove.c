
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_state {struct mdev_state* vconfig; struct mdev_state* pages; TYPE_1__* type; } ;
struct mdev_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mbytes; } ;


 int kfree (struct mdev_state*) ;
 int mbochs_used_mbytes ;
 struct mdev_state* mdev_get_drvdata (struct mdev_device*) ;
 int mdev_set_drvdata (struct mdev_device*,int *) ;

__attribute__((used)) static int mbochs_remove(struct mdev_device *mdev)
{
 struct mdev_state *mdev_state = mdev_get_drvdata(mdev);

 mbochs_used_mbytes -= mdev_state->type->mbytes;
 mdev_set_drvdata(mdev, ((void*)0));
 kfree(mdev_state->pages);
 kfree(mdev_state->vconfig);
 kfree(mdev_state);
 return 0;
}
