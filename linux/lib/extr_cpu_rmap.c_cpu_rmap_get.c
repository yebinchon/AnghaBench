
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_rmap {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void cpu_rmap_get(struct cpu_rmap *rmap)
{
 kref_get(&rmap->refcount);
}
