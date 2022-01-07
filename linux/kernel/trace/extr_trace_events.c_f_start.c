
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
typedef scalar_t__ loff_t ;


 int ENODEV ;
 void* ERR_PTR (int ) ;
 scalar_t__ FORMAT_HEADER ;
 int event_file_data (int ) ;
 int event_mutex ;
 void* f_next (struct seq_file*,void*,scalar_t__*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void *f_start(struct seq_file *m, loff_t *pos)
{
 void *p = (void *)FORMAT_HEADER;
 loff_t l = 0;


 mutex_lock(&event_mutex);
 if (!event_file_data(m->private))
  return ERR_PTR(-ENODEV);

 while (l < *pos && p)
  p = f_next(m, p, &l);

 return p;
}
