
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MAP_HUGETLB ;
 int strcmp (char const*,char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static inline int is_anon_memory(const char *filename, u32 flags)
{
 return flags & MAP_HUGETLB ||
        !strcmp(filename, "//anon") ||
        !strncmp(filename, "/dev/zero", sizeof("/dev/zero") - 1) ||
        !strncmp(filename, "/anon_hugepage", sizeof("/anon_hugepage") - 1);
}
