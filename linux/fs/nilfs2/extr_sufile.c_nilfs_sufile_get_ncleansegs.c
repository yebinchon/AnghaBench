
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {unsigned long ncleansegs; } ;


 TYPE_1__* NILFS_SUI (struct inode*) ;

unsigned long nilfs_sufile_get_ncleansegs(struct inode *sufile)
{
 return NILFS_SUI(sufile)->ncleansegs;
}
