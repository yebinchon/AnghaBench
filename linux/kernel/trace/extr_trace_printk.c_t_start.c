
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* find_next (int *,int *) ;
 int format_mod_start () ;

__attribute__((used)) static void *
t_start(struct seq_file *m, loff_t *pos)
{
 format_mod_start();
 return find_next(((void*)0), pos);
}
