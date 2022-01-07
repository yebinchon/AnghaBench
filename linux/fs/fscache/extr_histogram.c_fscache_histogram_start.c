
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int HZ ;

__attribute__((used)) static void *fscache_histogram_start(struct seq_file *m, loff_t *_pos)
{
 if ((unsigned long long)*_pos >= HZ + 2)
  return ((void*)0);
 if (*_pos == 0)
  *_pos = 1;
 return (void *)(unsigned long) *_pos;
}
