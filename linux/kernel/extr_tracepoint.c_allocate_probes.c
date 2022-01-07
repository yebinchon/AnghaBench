
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_probes {void* probes; } ;


 int GFP_KERNEL ;
 struct tp_probes* kmalloc (int ,int ) ;
 struct tp_probes* p ;
 int probes ;
 int struct_size (int ,int ,int) ;

__attribute__((used)) static inline void *allocate_probes(int count)
{
 struct tp_probes *p = kmalloc(struct_size(p, probes, count),
           GFP_KERNEL);
 return p == ((void*)0) ? ((void*)0) : p->probes;
}
