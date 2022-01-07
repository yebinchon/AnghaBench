
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_str {int refcnt; int str; } ;


 int free (struct comm_str*) ;
 int refcount_set (int *,int) ;
 int strdup (char const*) ;
 struct comm_str* zalloc (int) ;

__attribute__((used)) static struct comm_str *comm_str__alloc(const char *str)
{
 struct comm_str *cs;

 cs = zalloc(sizeof(*cs));
 if (!cs)
  return ((void*)0);

 cs->str = strdup(str);
 if (!cs->str) {
  free(cs);
  return ((void*)0);
 }

 refcount_set(&cs->refcnt, 1);

 return cs;
}
