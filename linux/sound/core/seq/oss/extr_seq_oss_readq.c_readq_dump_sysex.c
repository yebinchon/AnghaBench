
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readq_sysex_ctx {int dev; int readq; } ;


 int snd_seq_oss_readq_puts (int ,int ,void*,int) ;

__attribute__((used)) static int readq_dump_sysex(void *ptr, void *buf, int count)
{
 struct readq_sysex_ctx *ctx = ptr;

 return snd_seq_oss_readq_puts(ctx->readq, ctx->dev, buf, count);
}
