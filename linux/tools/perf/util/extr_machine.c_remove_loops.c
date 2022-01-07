
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iterations {scalar_t__ from; } ;
struct branch_entry {scalar_t__ from; } ;
typedef int chash ;


 int BUG_ON (int) ;
 int CHASHBITS ;
 int CHASHSZ ;
 unsigned char NO_ENTRY ;
 int PERF_MAX_BRANCH_DEPTH ;
 int hash_64 (scalar_t__,int ) ;
 int memmove (struct iterations*,struct iterations*,int) ;
 int memset (unsigned char*,unsigned char,int) ;
 int save_iterations (struct iterations*,struct iterations*,int) ;

__attribute__((used)) static int remove_loops(struct branch_entry *l, int nr,
   struct iterations *iter)
{
 int i, j, off;
 unsigned char chash[CHASHSZ];

 memset(chash, NO_ENTRY, sizeof(chash));

 BUG_ON(PERF_MAX_BRANCH_DEPTH > 255);

 for (i = 0; i < nr; i++) {
  int h = hash_64(l[i].from, CHASHBITS) % CHASHSZ;


  if (chash[h] == NO_ENTRY) {
   chash[h] = i;
  } else if (l[chash[h]].from == l[i].from) {
   bool is_loop = 1;

   off = 0;
   for (j = chash[h]; j < i && i + off < nr; j++, off++)
    if (l[j].from != l[i + off].from) {
     is_loop = 0;
     break;
    }
   if (is_loop) {
    j = nr - (i + off);
    if (j > 0) {
     save_iterations(iter + i + off,
      l + i, off);

     memmove(iter + i, iter + i + off,
      j * sizeof(*iter));

     memmove(l + i, l + i + off,
      j * sizeof(*l));
    }

    nr -= off;
   }
  }
 }
 return nr;
}
