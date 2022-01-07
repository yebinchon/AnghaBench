
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_zbranch {int * leaf; } ;


 int kfree (int *) ;

__attribute__((used)) static void lnc_free(struct ubifs_zbranch *zbr)
{
 if (!zbr->leaf)
  return;
 kfree(zbr->leaf);
 zbr->leaf = ((void*)0);
}
