
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct seq_file {struct super_block* private; } ;
struct reiserfs_sb_info {int dummy; } ;


 int MAX_HEIGHT ;
 struct reiserfs_sb_info* REISERFS_SB (struct super_block*) ;
 int SFPL (int ) ;
 int balance_at ;
 int can_node_be_removed ;
 int free_at ;
 int get_neighbors ;
 int get_neighbors_restart ;
 int items_at ;
 int lbytes ;
 int lnum ;
 int need_l_neighbor ;
 int need_r_neighbor ;
 int rbytes ;
 int rnum ;
 int sbk_fs_changed ;
 int sbk_read_at ;
 int sbk_restarted ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int show_per_level(struct seq_file *m, void *unused)
{
 struct super_block *sb = m->private;
 struct reiserfs_sb_info *r = REISERFS_SB(sb);
 int level;

 seq_printf(m, "level\t"
     "     balances"
     " [sbk:  reads"
     "   fs_changed"
     "   restarted]"
     "   free space"
     "        items"
     "   can_remove"
     "         lnum"
     "         rnum"
     "       lbytes"
     "       rbytes"
     "     get_neig"
     " get_neig_res" "  need_l_neig" "  need_r_neig" "\n");

 for (level = 0; level < MAX_HEIGHT; ++level) {
  seq_printf(m, "%i\t"
      " %12lu"
      " %12lu"
      " %12lu"
      " %12lu"
      " %12lu"
      " %12lu"
      " %12lu"
      " %12li"
      " %12li"
      " %12li"
      " %12li"
      " %12lu"
      " %12lu"
      " %12lu"
      " %12lu"
      "\n",
      level,
      SFPL(balance_at),
      SFPL(sbk_read_at),
      SFPL(sbk_fs_changed),
      SFPL(sbk_restarted),
      SFPL(free_at),
      SFPL(items_at),
      SFPL(can_node_be_removed),
      SFPL(lnum),
      SFPL(rnum),
      SFPL(lbytes),
      SFPL(rbytes),
      SFPL(get_neighbors),
      SFPL(get_neighbors_restart),
      SFPL(need_l_neighbor), SFPL(need_r_neighbor)
      );
 }
 return 0;
}
