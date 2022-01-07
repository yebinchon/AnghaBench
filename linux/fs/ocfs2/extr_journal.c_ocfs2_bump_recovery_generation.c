
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ij_recovery_generation; } ;
struct TYPE_4__ {TYPE_1__ journal1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;


 int le32_add_cpu (int *,int) ;

__attribute__((used)) static void ocfs2_bump_recovery_generation(struct ocfs2_dinode *di)
{
 le32_add_cpu(&(di->id1.journal1.ij_recovery_generation), 1);
}
