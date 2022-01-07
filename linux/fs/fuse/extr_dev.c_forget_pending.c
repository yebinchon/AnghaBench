
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * next; } ;
struct fuse_iqueue {TYPE_1__ forget_list_head; } ;



__attribute__((used)) static int forget_pending(struct fuse_iqueue *fiq)
{
 return fiq->forget_list_head.next != ((void*)0);
}
