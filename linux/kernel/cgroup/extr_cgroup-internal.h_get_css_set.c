
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_set {int refcount; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline void get_css_set(struct css_set *cset)
{
 refcount_inc(&cset->refcount);
}
