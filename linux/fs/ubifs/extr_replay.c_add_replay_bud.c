
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int replay_buds; int log_hash; } ;
struct ubifs_bud {int lnum; int start; int jhead; unsigned long long sqnum; int list; struct ubifs_bud* bud; int log_hash; } ;
struct bud_entry {int lnum; int start; int jhead; unsigned long long sqnum; int list; struct bud_entry* bud; int log_hash; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dbg_mnt (char*,int,int,int) ;
 int kfree (struct ubifs_bud*) ;
 struct ubifs_bud* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int ubifs_add_bud (struct ubifs_info*,struct ubifs_bud*) ;
 int ubifs_hash_get_desc (struct ubifs_info*) ;
 int ubifs_shash_copy_state (struct ubifs_info*,int ,int ) ;

__attribute__((used)) static int add_replay_bud(struct ubifs_info *c, int lnum, int offs, int jhead,
     unsigned long long sqnum)
{
 struct ubifs_bud *bud;
 struct bud_entry *b;
 int err;

 dbg_mnt("add replay bud LEB %d:%d, head %d", lnum, offs, jhead);

 bud = kmalloc(sizeof(struct ubifs_bud), GFP_KERNEL);
 if (!bud)
  return -ENOMEM;

 b = kmalloc(sizeof(struct bud_entry), GFP_KERNEL);
 if (!b) {
  err = -ENOMEM;
  goto out;
 }

 bud->lnum = lnum;
 bud->start = offs;
 bud->jhead = jhead;
 bud->log_hash = ubifs_hash_get_desc(c);
 if (IS_ERR(bud->log_hash)) {
  err = PTR_ERR(bud->log_hash);
  goto out;
 }

 ubifs_shash_copy_state(c, c->log_hash, bud->log_hash);

 ubifs_add_bud(c, bud);

 b->bud = bud;
 b->sqnum = sqnum;
 list_add_tail(&b->list, &c->replay_buds);

 return 0;
out:
 kfree(bud);
 kfree(b);

 return err;
}
