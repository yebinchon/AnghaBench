
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binfmt {int lh; int load_binary; } ;


 int BUG_ON (int) ;
 scalar_t__ WARN_ON (int) ;
 int binfmt_lock ;
 int formats ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void __register_binfmt(struct linux_binfmt * fmt, int insert)
{
 BUG_ON(!fmt);
 if (WARN_ON(!fmt->load_binary))
  return;
 write_lock(&binfmt_lock);
 insert ? list_add(&fmt->lh, &formats) :
   list_add_tail(&fmt->lh, &formats);
 write_unlock(&binfmt_lock);
}
