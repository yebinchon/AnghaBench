
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct resource {int dummy; } ;
typedef int loff_t ;


 scalar_t__ next_resource (struct resource*,int) ;

__attribute__((used)) static void *r_next(struct seq_file *m, void *v, loff_t *pos)
{
 struct resource *p = v;
 (*pos)++;
 return (void *)next_resource(p, 0);
}
