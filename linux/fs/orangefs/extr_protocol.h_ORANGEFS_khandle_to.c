
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_khandle {int u; } ;


 int memcpy (void*,int ,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static inline void ORANGEFS_khandle_to(const struct orangefs_khandle *kh,
       void *p, int size)
{

 memcpy(p, kh->u, 16);
 memset(p + 16, 0, size - 16);

}
