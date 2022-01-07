
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;



__attribute__((used)) static void *single_next(struct seq_file *p, void *v, loff_t *pos)
{
 ++*pos;
 return ((void*)0);
}
