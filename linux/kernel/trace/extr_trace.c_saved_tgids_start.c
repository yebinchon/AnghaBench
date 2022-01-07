
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 void* saved_tgids_next (struct seq_file*,void*,scalar_t__*) ;
 int * tgid_map ;

__attribute__((used)) static void *saved_tgids_start(struct seq_file *m, loff_t *pos)
{
 void *v;
 loff_t l = 0;

 if (!tgid_map)
  return ((void*)0);

 v = &tgid_map[0];
 while (l <= *pos) {
  v = saved_tgids_next(m, v, &l);
  if (!v)
   return ((void*)0);
 }

 return v;
}
