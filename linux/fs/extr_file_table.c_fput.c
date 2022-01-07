
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int fput_many (struct file*,int) ;

void fput(struct file *file)
{
 fput_many(file, 1);
}
