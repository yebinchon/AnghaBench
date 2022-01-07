
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int skl_cldma_stream_run (struct sst_dsp*,int) ;

__attribute__((used)) static void skl_cldma_stop(struct sst_dsp *ctx)
{
 skl_cldma_stream_run(ctx, 0);
}
