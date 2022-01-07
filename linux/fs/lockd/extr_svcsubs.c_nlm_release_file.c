
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_file {scalar_t__ f_count; } ;


 int dprintk (char*,struct nlm_file*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nlm_delete_file (struct nlm_file*) ;
 int nlm_file_inuse (struct nlm_file*) ;
 int nlm_file_mutex ;

void
nlm_release_file(struct nlm_file *file)
{
 dprintk("lockd: nlm_release_file(%p, ct = %d)\n",
    file, file->f_count);


 mutex_lock(&nlm_file_mutex);


 if (--file->f_count == 0 && !nlm_file_inuse(file))
  nlm_delete_file(file);

 mutex_unlock(&nlm_file_mutex);
}
