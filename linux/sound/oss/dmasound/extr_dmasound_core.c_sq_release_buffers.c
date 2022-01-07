
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sound_queue {int numBufs; int * buffers; int bufSize; } ;
struct TYPE_3__ {int (* dma_free ) (int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ mach; } ;


 TYPE_2__ dmasound ;
 int kfree (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void sq_release_buffers(struct sound_queue *sq)
{
 int i;

 if (sq->buffers) {
  for (i = 0; i < sq->numBufs; i++)
   dmasound.mach.dma_free(sq->buffers[i], sq->bufSize);
  kfree(sq->buffers);
  sq->buffers = ((void*)0);
 }
}
