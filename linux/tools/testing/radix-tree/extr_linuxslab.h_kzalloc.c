
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_ZERO ;
 void* kmalloc (size_t,int) ;

__attribute__((used)) static inline void *kzalloc(size_t size, gfp_t gfp)
{
        return kmalloc(size, gfp | __GFP_ZERO);
}
