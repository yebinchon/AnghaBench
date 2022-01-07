
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int ** CFR; int * rkey; int ** R; } ;
struct item_head {int dummy; } ;


 int B_NR_ITEMS (int *) ;
 int KEY_SIZE ;
 int RFALSE (int,char*,int ,...) ;
 int do_balance_mark_internal_dirty (struct tree_balance*,int *,int ) ;
 int internal_key (int *,int ) ;
 int memcpy (int ,struct item_head*,int ) ;

__attribute__((used)) static void replace_rkey(struct tree_balance *tb, int h, struct item_head *key)
{
 RFALSE(tb->R[h] == ((void*)0) || tb->CFR[h] == ((void*)0),
        "R[h](%p) and CFR[h](%p) must exist in replace_rkey",
        tb->R[h], tb->CFR[h]);
 RFALSE(B_NR_ITEMS(tb->R[h]) == 0,
        "R[h] can not be empty if it exists (item number=%d)",
        B_NR_ITEMS(tb->R[h]));

 memcpy(internal_key(tb->CFR[h], tb->rkey[h]), key, KEY_SIZE);

 do_balance_mark_internal_dirty(tb, tb->CFR[h], 0);
}
