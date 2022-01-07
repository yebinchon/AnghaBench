
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_path; } ;


 char* d_path (int *,char*,int) ;

char *file_path(struct file *filp, char *buf, int buflen)
{
 return d_path(&filp->f_path, buf, buflen);
}
