
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_dirent {int last; int namelen; int name; int fnode; scalar_t__ down; } ;
struct TYPE_5__ {TYPE_1__* external; } ;
struct fnode {unsigned char* name; int len; TYPE_2__ u; int up; } ;
struct dnode {int up; scalar_t__ root_dnode; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ fnode_secno ;
typedef scalar_t__ dnode_secno ;
struct TYPE_6__ {scalar_t__ sb_chk; } ;
struct TYPE_4__ {int disk_secno; } ;


 int GFP_NOFS ;
 int brelse (struct buffer_head*) ;
 scalar_t__ de_down_pointer (struct hpfs_dirent*) ;
 struct hpfs_dirent* de_next_de (struct hpfs_dirent*) ;
 struct hpfs_dirent* dnode_end_de (struct dnode*) ;
 struct hpfs_dirent* dnode_first_de (struct dnode*) ;
 int fnode_is_dir (struct fnode*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_compare_names (struct super_block*,unsigned char*,int,int ,int ,int ) ;
 int hpfs_error (struct super_block*,char*,scalar_t__,...) ;
 struct dnode* hpfs_map_dnode (struct super_block*,scalar_t__,struct quad_buffer_head*) ;
 struct fnode* hpfs_map_fnode (struct super_block*,scalar_t__,struct buffer_head**) ;
 TYPE_3__* hpfs_sb (struct super_block*) ;
 scalar_t__ hpfs_stop_cycles (struct super_block*,scalar_t__,int*,int*,char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int,int) ;
 int pr_err (char*) ;

struct hpfs_dirent *map_fnode_dirent(struct super_block *s, fnode_secno fno,
         struct fnode *f, struct quad_buffer_head *qbh)
{
 unsigned char *name1;
 unsigned char *name2;
 int name1len, name2len;
 struct dnode *d;
 dnode_secno dno, downd;
 struct fnode *upf;
 struct buffer_head *bh;
 struct hpfs_dirent *de, *de_end;
 int c;
 int c1, c2 = 0;
 int d1, d2 = 0;
 name1 = f->name;
 if (!(name2 = kmalloc(256, GFP_NOFS))) {
  pr_err("out of memory, can't map dirent\n");
  return ((void*)0);
 }
 if (f->len <= 15)
  memcpy(name2, name1, name1len = name2len = f->len);
 else {
  memcpy(name2, name1, 15);
  memset(name2 + 15, 0xff, 256 - 15);

  name1len = 15; name2len = 256;
 }
 if (!(upf = hpfs_map_fnode(s, le32_to_cpu(f->up), &bh))) {
  kfree(name2);
  return ((void*)0);
 }
 if (!fnode_is_dir(upf)) {
  brelse(bh);
  hpfs_error(s, "fnode %08x has non-directory parent %08x", fno, le32_to_cpu(f->up));
  kfree(name2);
  return ((void*)0);
 }
 dno = le32_to_cpu(upf->u.external[0].disk_secno);
 brelse(bh);
 go_down:
 downd = 0;
 go_up:
 if (!(d = hpfs_map_dnode(s, dno, qbh))) {
  kfree(name2);
  return ((void*)0);
 }
 de_end = dnode_end_de(d);
 de = dnode_first_de(d);
 if (downd) {
  while (de < de_end) {
   if (de->down) if (de_down_pointer(de) == downd) goto f;
   de = de_next_de(de);
  }
  hpfs_error(s, "pointer to dnode %08x not found in dnode %08x", downd, dno);
  hpfs_brelse4(qbh);
  kfree(name2);
  return ((void*)0);
 }
 next_de:
 if (le32_to_cpu(de->fnode) == fno) {
  kfree(name2);
  return de;
 }
 c = hpfs_compare_names(s, name1, name1len, de->name, de->namelen, de->last);
 if (c < 0 && de->down) {
  dno = de_down_pointer(de);
  hpfs_brelse4(qbh);
  if (hpfs_sb(s)->sb_chk)
   if (hpfs_stop_cycles(s, dno, &c1, &c2, "map_fnode_dirent #1")) {
    kfree(name2);
    return ((void*)0);
  }
  goto go_down;
 }
 f:
 if (le32_to_cpu(de->fnode) == fno) {
  kfree(name2);
  return de;
 }
 c = hpfs_compare_names(s, name2, name2len, de->name, de->namelen, de->last);
 if (c < 0 && !de->last) goto not_found;
 if ((de = de_next_de(de)) < de_end) goto next_de;
 if (d->root_dnode) goto not_found;
 downd = dno;
 dno = le32_to_cpu(d->up);
 hpfs_brelse4(qbh);
 if (hpfs_sb(s)->sb_chk)
  if (hpfs_stop_cycles(s, downd, &d1, &d2, "map_fnode_dirent #2")) {
   kfree(name2);
   return ((void*)0);
  }
 goto go_up;
 not_found:
 hpfs_brelse4(qbh);
 hpfs_error(s, "dirent for fnode %08x not found", fno);
 kfree(name2);
 return ((void*)0);
}
