
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_zbranch {int lnum; int offs; } ;



__attribute__((used)) static int matches_position(struct ubifs_zbranch *zbr, int lnum, int offs)
{
 if (zbr->lnum == lnum && zbr->offs == offs)
  return 1;
 else
  return 0;
}
