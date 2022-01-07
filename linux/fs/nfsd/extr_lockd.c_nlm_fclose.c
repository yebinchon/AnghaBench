
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int fput (struct file*) ;

__attribute__((used)) static void
nlm_fclose(struct file *filp)
{
 fput(filp);
}
