
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int call_int_hook (int ,int ,struct file*) ;
 int file_alloc_security ;
 int lsm_file_alloc (struct file*) ;
 int security_file_free (struct file*) ;
 scalar_t__ unlikely (int) ;

int security_file_alloc(struct file *file)
{
 int rc = lsm_file_alloc(file);

 if (rc)
  return rc;
 rc = call_int_hook(file_alloc_security, 0, file);
 if (unlikely(rc))
  security_file_free(file);
 return rc;
}
