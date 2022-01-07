
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct map_iter* private; } ;
struct map_iter {int dummy; } ;



__attribute__((used)) static struct map_iter *map_iter(struct seq_file *m)
{
 return m->private;
}
