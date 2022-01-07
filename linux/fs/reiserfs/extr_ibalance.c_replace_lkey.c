
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int ** CFL; int * lkey; int tb_path; int ** L; } ;
struct item_head {int dummy; } ;


 scalar_t__ B_NR_ITEMS (int ) ;
 int KEY_SIZE ;
 int PATH_H_PBUFFER (int ,int) ;
 int RFALSE (int,char*,int *,int *) ;
 int do_balance_mark_internal_dirty (struct tree_balance*,int *,int ) ;
 int internal_key (int *,int ) ;
 int memcpy (int ,struct item_head*,int ) ;

__attribute__((used)) static void replace_lkey(struct tree_balance *tb, int h, struct item_head *key)
{
 RFALSE(tb->L[h] == ((void*)0) || tb->CFL[h] == ((void*)0),
        "L[h](%p) and CFL[h](%p) must exist in replace_lkey",
        tb->L[h], tb->CFL[h]);

 if (B_NR_ITEMS(PATH_H_PBUFFER(tb->tb_path, h)) == 0)
  return;

 memcpy(internal_key(tb->CFL[h], tb->lkey[h]), key, KEY_SIZE);

 do_balance_mark_internal_dirty(tb, tb->CFL[h], 0);
}
