
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct inode {scalar_t__ i_private; } ;
struct file {int dummy; } ;


 int batadv_debugfs_deprecated (struct file*,char*) ;
 int batadv_hardif_neigh_seq_print_text ;
 int single_open (struct file*,int ,struct net_device*) ;

__attribute__((used)) static int neighbors_open(struct inode *inode, struct file *file)
{
 struct net_device *net_dev = (struct net_device *)inode->i_private;

 batadv_debugfs_deprecated(file,
      "Use genl command BATADV_CMD_GET_NEIGHBORS instead\n");
 return single_open(file, batadv_hardif_neigh_seq_print_text, net_dev);
}
