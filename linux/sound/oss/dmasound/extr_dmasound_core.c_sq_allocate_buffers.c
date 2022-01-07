
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sound_queue {int numBufs; int bufSize; int * buffers; } ;
struct TYPE_3__ {int (* dma_free ) (int ,int) ;int (* dma_alloc ) (int,int ) ;} ;
struct TYPE_4__ {TYPE_1__ mach; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__ dmasound ;
 int kfree (int *) ;
 int * kmalloc_array (int,int,int ) ;
 int stub1 (int,int ) ;
 int stub2 (int ,int) ;

__attribute__((used)) static int sq_allocate_buffers(struct sound_queue *sq, int num, int size)
{
 int i;

 if (sq->buffers)
  return 0;
 sq->numBufs = num;
 sq->bufSize = size;
 sq->buffers = kmalloc_array (num, sizeof(char *), GFP_KERNEL);
 if (!sq->buffers)
  return -ENOMEM;
 for (i = 0; i < num; i++) {
  sq->buffers[i] = dmasound.mach.dma_alloc(size, GFP_KERNEL);
  if (!sq->buffers[i]) {
   while (i--)
    dmasound.mach.dma_free(sq->buffers[i], size);
   kfree(sq->buffers);
   sq->buffers = ((void*)0);
   return -ENOMEM;
  }
 }
 return 0;
}
