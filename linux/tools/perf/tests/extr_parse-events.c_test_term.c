
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terms_test {int (* check ) (struct list_head*) ;int str; } ;
struct list_head {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int parse_events_terms (struct list_head*,int ) ;
 int parse_events_terms__purge (struct list_head*) ;
 int pr_debug (char*,int ,int) ;
 int stub1 (struct list_head*) ;

__attribute__((used)) static int test_term(struct terms_test *t)
{
 struct list_head terms;
 int ret;

 INIT_LIST_HEAD(&terms);

 ret = parse_events_terms(&terms, t->str);
 if (ret) {
  pr_debug("failed to parse terms '%s', err %d\n",
    t->str , ret);
  return ret;
 }

 ret = t->check(&terms);
 parse_events_terms__purge(&terms);

 return ret;
}
