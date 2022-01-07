
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int batadv_algo_seq_print_text ;
 int batadv_debugfs_deprecated (struct file*,char*) ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int batadv_algorithms_open(struct inode *inode, struct file *file)
{
 batadv_debugfs_deprecated(file,
      "Use genl command BATADV_CMD_GET_ROUTING_ALGOS instead\n");
 return single_open(file, batadv_algo_seq_print_text, ((void*)0));
}
