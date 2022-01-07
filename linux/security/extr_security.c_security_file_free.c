
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_security; } ;


 int call_void_hook (int ,struct file*) ;
 int file_free_security ;
 int kmem_cache_free (int ,void*) ;
 int lsm_file_cache ;

void security_file_free(struct file *file)
{
 void *blob;

 call_void_hook(file_free_security, file);

 blob = file->f_security;
 if (blob) {
  file->f_security = ((void*)0);
  kmem_cache_free(lsm_file_cache, blob);
 }
}
