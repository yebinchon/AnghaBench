
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int hsr_node_table_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int
hsr_node_table_open(struct inode *inode, struct file *filp)
{
 return single_open(filp, hsr_node_table_show, inode->i_private);
}
