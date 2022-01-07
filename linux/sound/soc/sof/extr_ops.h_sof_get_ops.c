
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_ops_table {struct snd_sof_dsp_ops const* ops; struct sof_dev_desc const* desc; } ;
struct sof_dev_desc {int dummy; } ;
struct snd_sof_dsp_ops {int dummy; } ;



__attribute__((used)) static inline const struct snd_sof_dsp_ops
*sof_get_ops(const struct sof_dev_desc *d,
      const struct sof_ops_table mach_ops[], int asize)
{
 int i;

 for (i = 0; i < asize; i++) {
  if (d == mach_ops[i].desc)
   return mach_ops[i].ops;
 }


 return ((void*)0);
}
