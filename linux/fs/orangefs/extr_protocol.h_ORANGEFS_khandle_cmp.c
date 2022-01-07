
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_khandle {scalar_t__* u; } ;



__attribute__((used)) static inline int ORANGEFS_khandle_cmp(const struct orangefs_khandle *kh1,
       const struct orangefs_khandle *kh2)
{
 int i;

 for (i = 15; i >= 0; i--) {
  if (kh1->u[i] > kh2->u[i])
   return 1;
  if (kh1->u[i] < kh2->u[i])
   return -1;
 }

 return 0;
}
