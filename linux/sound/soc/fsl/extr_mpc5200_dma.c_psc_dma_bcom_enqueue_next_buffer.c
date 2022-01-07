
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psc_dma_stream {int period_bytes; int period_next; TYPE_1__* runtime; int bcom_task; } ;
struct bcom_bd {int status; scalar_t__* data; } ;
struct TYPE_2__ {int periods; scalar_t__ dma_addr; } ;


 struct bcom_bd* bcom_prepare_next_buffer (int ) ;
 int bcom_submit_next_buffer (int ,int *) ;

__attribute__((used)) static void psc_dma_bcom_enqueue_next_buffer(struct psc_dma_stream *s)
{
 struct bcom_bd *bd;


 bd = bcom_prepare_next_buffer(s->bcom_task);
 bd->status = s->period_bytes;
 bd->data[0] = s->runtime->dma_addr + (s->period_next * s->period_bytes);
 bcom_submit_next_buffer(s->bcom_task, ((void*)0));


 s->period_next = (s->period_next + 1) % s->runtime->periods;
}
