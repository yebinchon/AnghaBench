
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INTEL_PT_PSB_LEN ;
 char* INTEL_PT_PSB_STR ;
 int memcmp (unsigned char*,char const*,size_t) ;
 unsigned char* memrchr (unsigned char*,char const,size_t) ;

__attribute__((used)) static unsigned char *intel_pt_last_psb(unsigned char *buf, size_t len)
{
 const char *n = INTEL_PT_PSB_STR;
 unsigned char *p;
 size_t k;

 if (len < INTEL_PT_PSB_LEN)
  return ((void*)0);

 k = len - INTEL_PT_PSB_LEN + 1;
 while (1) {
  p = memrchr(buf, n[0], k);
  if (!p)
   return ((void*)0);
  if (!memcmp(p + 1, n + 1, INTEL_PT_PSB_LEN - 1))
   return p;
  k = p - buf;
  if (!k)
   return ((void*)0);
 }
}
