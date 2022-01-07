
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfs_bnode {int dummy; } ;


 int hfs_bnode_read (struct hfs_bnode*,int *,int,int) ;

u8 hfs_bnode_read_u8(struct hfs_bnode *node, int off)
{
 u8 data;

 hfs_bnode_read(node, &data, off, 1);
 return data;
}
