
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdname {int name; } ;


 int strcmp (int ,int ) ;

int cmdname_compare(const void *a_, const void *b_)
{
 struct cmdname *a = *(struct cmdname **)a_;
 struct cmdname *b = *(struct cmdname **)b_;
 return strcmp(a->name, b->name);
}
