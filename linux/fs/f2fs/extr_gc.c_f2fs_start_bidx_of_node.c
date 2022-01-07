
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef scalar_t__ block_t ;


 unsigned int ADDRS_PER_BLOCK (struct inode*) ;
 scalar_t__ ADDRS_PER_INODE (struct inode*) ;
 int NIDS_PER_BLOCK ;

block_t f2fs_start_bidx_of_node(unsigned int node_ofs, struct inode *inode)
{
 unsigned int indirect_blks = 2 * NIDS_PER_BLOCK + 4;
 unsigned int bidx;

 if (node_ofs == 0)
  return 0;

 if (node_ofs <= 2) {
  bidx = node_ofs - 1;
 } else if (node_ofs <= indirect_blks) {
  int dec = (node_ofs - 4) / (NIDS_PER_BLOCK + 1);
  bidx = node_ofs - 2 - dec;
 } else {
  int dec = (node_ofs - indirect_blks - 3) / (NIDS_PER_BLOCK + 1);
  bidx = node_ofs - 5 - dec;
 }
 return bidx * ADDRS_PER_BLOCK(inode) + ADDRS_PER_INODE(inode);
}
