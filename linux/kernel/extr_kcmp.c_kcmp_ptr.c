
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kcmp_type { ____Placeholder_kcmp_type } kcmp_type ;


 long kptr_obfuscate (long,int) ;

__attribute__((used)) static int kcmp_ptr(void *v1, void *v2, enum kcmp_type type)
{
 long t1, t2;

 t1 = kptr_obfuscate((long)v1, type);
 t2 = kptr_obfuscate((long)v2, type);

 return (t1 < t2) | ((t1 > t2) << 1);
}
