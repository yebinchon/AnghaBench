
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quad_buffer_head {scalar_t__ data; } ;
struct hpfs_dirent {int down; } ;
struct dnode {int up; } ;
typedef scalar_t__ dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;


 scalar_t__ de_down_pointer (struct hpfs_dirent*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_error (struct super_block*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 scalar_t__ hpfs_stop_cycles (struct super_block*,scalar_t__,int*,int*,char*) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct hpfs_dirent* map_nth_dirent (struct super_block*,scalar_t__,int,struct quad_buffer_head*,int *) ;

dnode_secno hpfs_de_as_down_as_possible(struct super_block *s, dnode_secno dno)
{
 struct quad_buffer_head qbh;
 dnode_secno d = dno;
 dnode_secno up = 0;
 struct hpfs_dirent *de;
 int c1, c2 = 0;

 again:
 if (hpfs_sb(s)->sb_chk)
  if (hpfs_stop_cycles(s, d, &c1, &c2, "hpfs_de_as_down_as_possible"))
   return d;
 if (!(de = map_nth_dirent(s, d, 1, &qbh, ((void*)0)))) return dno;
 if (hpfs_sb(s)->sb_chk)
  if (up && le32_to_cpu(((struct dnode *)qbh.data)->up) != up)
   hpfs_error(s, "hpfs_de_as_down_as_possible: bad up pointer; dnode %08x, down %08x points to %08x", up, d, le32_to_cpu(((struct dnode *)qbh.data)->up));
 if (!de->down) {
  hpfs_brelse4(&qbh);
  return d;
 }
 up = d;
 d = de_down_pointer(de);
 hpfs_brelse4(&qbh);
 goto again;
}
