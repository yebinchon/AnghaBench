
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ PAGE_SIZE ;
 int dump_mle (struct dlm_master_list_entry*,char*,scalar_t__) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;

void dlm_print_one_mle(struct dlm_master_list_entry *mle)
{
 char *buf;

 buf = (char *) get_zeroed_page(GFP_ATOMIC);
 if (buf) {
  dump_mle(mle, buf, PAGE_SIZE - 1);
  free_page((unsigned long)buf);
 }
}
