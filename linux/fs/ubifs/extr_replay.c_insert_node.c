
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
typedef int u8 ;
struct ubifs_info {scalar_t__ highest_inum; int replay_list; } ;
struct replay_entry {int lnum; int offs; int len; int deletion; unsigned long long sqnum; int list; void* new_size; void* old_size; int key; int hash; } ;
typedef void* loff_t ;


 scalar_t__ ALIGN (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dbg_mntk (union ubifs_key*,char*,int,int) ;
 int key_copy (struct ubifs_info*,union ubifs_key*,int *) ;
 scalar_t__ key_inum (struct ubifs_info*,union ubifs_key*) ;
 struct replay_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int ubifs_copy_hash (struct ubifs_info*,int const*,int ) ;

__attribute__((used)) static int insert_node(struct ubifs_info *c, int lnum, int offs, int len,
         const u8 *hash, union ubifs_key *key,
         unsigned long long sqnum, int deletion, int *used,
         loff_t old_size, loff_t new_size)
{
 struct replay_entry *r;

 dbg_mntk(key, "add LEB %d:%d, key ", lnum, offs);

 if (key_inum(c, key) >= c->highest_inum)
  c->highest_inum = key_inum(c, key);

 r = kzalloc(sizeof(struct replay_entry), GFP_KERNEL);
 if (!r)
  return -ENOMEM;

 if (!deletion)
  *used += ALIGN(len, 8);
 r->lnum = lnum;
 r->offs = offs;
 r->len = len;
 ubifs_copy_hash(c, hash, r->hash);
 r->deletion = !!deletion;
 r->sqnum = sqnum;
 key_copy(c, key, &r->key);
 r->old_size = old_size;
 r->new_size = new_size;

 list_add_tail(&r->list, &c->replay_list);
 return 0;
}
