
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_khandle {int u; } ;


 int memcpy (int ,void*,int) ;
 int memset (struct orangefs_khandle*,int ,int) ;

__attribute__((used)) static inline void ORANGEFS_khandle_from(struct orangefs_khandle *kh,
         void *p, int size)
{
 memset(kh, 0, 16);
 memcpy(kh->u, p, 16);

}
