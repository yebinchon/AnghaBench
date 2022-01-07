
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_str {int str; int rb_node; int refcnt; } ;


 int comm_str_lock ;
 int comm_str_root ;
 int down_write (int *) ;
 int free (struct comm_str*) ;
 int rb_erase (int *,int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int up_write (int *) ;
 int zfree (int *) ;

__attribute__((used)) static void comm_str__put(struct comm_str *cs)
{
 if (cs && refcount_dec_and_test(&cs->refcnt)) {
  down_write(&comm_str_lock);
  rb_erase(&cs->rb_node, &comm_str_root);
  up_write(&comm_str_lock);
  zfree(&cs->str);
  free(cs);
 }
}
