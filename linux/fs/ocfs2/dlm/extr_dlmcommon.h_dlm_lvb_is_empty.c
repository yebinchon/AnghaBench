
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLM_LVB_LEN ;

__attribute__((used)) static inline int dlm_lvb_is_empty(char *lvb)
{
 int i;
 for (i=0; i<DLM_LVB_LEN; i++)
  if (lvb[i])
   return 0;
 return 1;
}
