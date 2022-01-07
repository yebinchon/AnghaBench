
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {void* raw_data; } ;



__attribute__((used)) static inline void *perf_sample__synth_ptr(struct perf_sample *sample)
{
 return sample->raw_data - 4;
}
