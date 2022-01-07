
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parallel_io {int refcnt; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void get_parallel(struct parallel_io *p)
{
 kref_get(&p->refcnt);
}
