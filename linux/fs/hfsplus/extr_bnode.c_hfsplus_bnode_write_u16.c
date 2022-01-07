
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfs_bnode {int dummy; } ;
typedef int __be16 ;


 int cpu_to_be16 (int ) ;
 int hfs_bnode_write (struct hfs_bnode*,int *,int,int) ;

void hfs_bnode_write_u16(struct hfs_bnode *node, int off, u16 data)
{
 __be16 v = cpu_to_be16(data);

 hfs_bnode_write(node, &v, off, 2);
}
