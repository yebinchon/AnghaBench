
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qnx4_inode_entry {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct qnx4_inode_entry raw; } ;


 TYPE_1__* qnx4_i (struct inode*) ;

__attribute__((used)) static inline struct qnx4_inode_entry *qnx4_raw_inode(struct inode *inode)
{
 return &qnx4_i(inode)->raw;
}
