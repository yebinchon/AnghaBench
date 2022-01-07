
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {void* thread_context; } ;



__attribute__((used)) static inline void *sst_dsp_get_thread_context(struct sst_dsp *sst)
{
 return sst->thread_context;
}
