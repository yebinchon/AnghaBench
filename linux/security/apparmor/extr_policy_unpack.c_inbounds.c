
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ext {size_t end; size_t pos; } ;



__attribute__((used)) static bool inbounds(struct aa_ext *e, size_t size)
{
 return (size <= e->end - e->pos);
}
