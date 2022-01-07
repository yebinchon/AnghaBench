
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;
struct cpu_key {int dummy; } ;


 int ITEM_FOUND ;
 int ITEM_NOT_FOUND ;
 int comp_keys (struct reiserfs_key*,struct cpu_key*) ;

__attribute__((used)) static inline int bin_search(const void *key,
        const void *base,
        int num,
        int width,
        int *pos
    )
{
 int rbound, lbound, j;

 for (j = ((rbound = num - 1) + (lbound = 0)) / 2;
      lbound <= rbound; j = (rbound + lbound) / 2)
  switch (comp_keys
   ((struct reiserfs_key *)((char *)base + j * width),
    (struct cpu_key *)key)) {
  case -1:
   lbound = j + 1;
   continue;
  case 1:
   rbound = j - 1;
   continue;
  case 0:
   *pos = j;
   return ITEM_FOUND;
  }





 *pos = lbound;
 return ITEM_NOT_FOUND;
}
