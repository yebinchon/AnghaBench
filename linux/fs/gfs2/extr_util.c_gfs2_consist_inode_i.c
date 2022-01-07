
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {scalar_t__ i_no_addr; scalar_t__ i_no_formal_ino; int i_inode; } ;


 struct gfs2_sbd* GFS2_SB (int *) ;
 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,unsigned long long,unsigned long long,char const*,char*,unsigned int) ;

int gfs2_consist_inode_i(struct gfs2_inode *ip, int cluster_wide,
    const char *function, char *file, unsigned int line)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 int rv;
 rv = gfs2_lm_withdraw(sdp,
         "fatal: filesystem consistency error\n"
         "  inode = %llu %llu\n"
         "  function = %s, file = %s, line = %u\n",
         (unsigned long long)ip->i_no_formal_ino,
         (unsigned long long)ip->i_no_addr,
         function, file, line);
 return rv;
}
