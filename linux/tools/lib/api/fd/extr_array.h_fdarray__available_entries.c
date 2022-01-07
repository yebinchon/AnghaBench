
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdarray {int nr_alloc; int nr; } ;



__attribute__((used)) static inline int fdarray__available_entries(struct fdarray *fda)
{
 return fda->nr_alloc - fda->nr;
}
