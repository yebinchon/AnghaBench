
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int out_base; } ;
struct sst_dsp {TYPE_1__ mailbox; } ;


 int memcpy_fromio (void*,int ,size_t) ;
 int trace_sst_ipc_outbox_rdata (size_t,size_t) ;
 int trace_sst_ipc_outbox_read (size_t) ;

void sst_dsp_outbox_read(struct sst_dsp *sst, void *message, size_t bytes)
{
 u32 i;

 trace_sst_ipc_outbox_read(bytes);

 memcpy_fromio(message, sst->mailbox.out_base, bytes);

 for (i = 0; i < bytes; i += 4)
  trace_sst_ipc_outbox_rdata(i, *(u32 *)(message + i));
}
