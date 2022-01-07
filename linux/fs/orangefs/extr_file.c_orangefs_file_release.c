
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int i_data; scalar_t__ i_mapping; } ;


 int GOSSIP_FILE_DEBUG ;
 int GOSSIP_INODE_DEBUG ;
 int ORANGEFS_FEATURE_READAHEAD ;
 TYPE_1__* file_inode (struct file*) ;
 int flush_racache (struct inode*) ;
 int get_khandle_from_ino (struct inode*) ;
 int gossip_debug (int ,char*,...) ;
 scalar_t__ mapping_nrpages (int *) ;
 int orangefs_features ;

__attribute__((used)) static int orangefs_file_release(struct inode *inode, struct file *file)
{
 gossip_debug(GOSSIP_FILE_DEBUG,
       "orangefs_file_release: called on %pD\n",
       file);






 if (file_inode(file) &&
     file_inode(file)->i_mapping &&
     mapping_nrpages(&file_inode(file)->i_data)) {
  if (orangefs_features & ORANGEFS_FEATURE_READAHEAD) {
   gossip_debug(GOSSIP_INODE_DEBUG,
       "calling flush_racache on %pU\n",
       get_khandle_from_ino(inode));
   flush_racache(inode);
   gossip_debug(GOSSIP_INODE_DEBUG,
       "flush_racache finished\n");
  }

 }
 return 0;
}
