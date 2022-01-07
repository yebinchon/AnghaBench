
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parallel_io {int refcnt; } ;


 int destroy_parallel ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void put_parallel(struct parallel_io *p)
{
 kref_put(&p->refcnt, destroy_parallel);
}
