
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void fsl_asrc_sel_proc(int inrate, int outrate,
        int *pre_proc, int *post_proc)
{
 bool post_proc_cond2;
 bool post_proc_cond0;


 if (inrate * 8 > 33 * outrate)
  *pre_proc = 2;
 else if (inrate * 8 > 15 * outrate) {
  if (inrate > 152000)
   *pre_proc = 2;
  else
   *pre_proc = 1;
 } else if (inrate < 76000)
  *pre_proc = 0;
 else if (inrate > 152000)
  *pre_proc = 2;
 else
  *pre_proc = 1;


 post_proc_cond2 = (inrate * 15 > outrate * 16 && outrate < 56000) ||
     (inrate > 56000 && outrate < 56000);
 post_proc_cond0 = inrate * 23 < outrate * 8;

 if (post_proc_cond2)
  *post_proc = 2;
 else if (post_proc_cond0)
  *post_proc = 0;
 else
  *post_proc = 1;
}
