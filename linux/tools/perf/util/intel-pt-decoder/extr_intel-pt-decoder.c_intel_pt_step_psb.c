
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTEL_PT_PSB_LEN ;
 int INTEL_PT_PSB_STR ;
 unsigned char* memmem (unsigned char*,size_t,int ,int ) ;

__attribute__((used)) static bool intel_pt_step_psb(unsigned char **buf, size_t *len)
{
 unsigned char *next;

 if (!*len)
  return 0;

 next = memmem(*buf + 1, *len - 1, INTEL_PT_PSB_STR, INTEL_PT_PSB_LEN);
 if (next) {
  *len -= next - *buf;
  *buf = next;
  return 1;
 }
 return 0;
}
