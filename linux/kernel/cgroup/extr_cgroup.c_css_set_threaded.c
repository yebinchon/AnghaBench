
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_set {struct css_set* dom_cset; } ;



__attribute__((used)) static bool css_set_threaded(struct css_set *cset)
{
 return cset->dom_cset != cset;
}
