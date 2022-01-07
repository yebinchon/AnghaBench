
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {int* mp_list; } ;
typedef int __be64 ;


 int * metaptr1 (unsigned int,struct metapath const*) ;

__attribute__((used)) static inline __be64 *metapointer(unsigned int height, const struct metapath *mp)
{
 __be64 *p = metaptr1(height, mp);
 return p + mp->mp_list[height];
}
