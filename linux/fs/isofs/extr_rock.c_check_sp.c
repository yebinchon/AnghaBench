
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* magic; int skip; } ;
struct TYPE_5__ {TYPE_1__ SP; } ;
struct rock_ridge {TYPE_2__ u; } ;
struct inode {int i_sb; } ;
struct TYPE_6__ {int s_rock_offset; } ;


 TYPE_3__* ISOFS_SB (int ) ;

__attribute__((used)) static int check_sp(struct rock_ridge *rr, struct inode *inode)
{
 if (rr->u.SP.magic[0] != 0xbe)
  return -1;
 if (rr->u.SP.magic[1] != 0xef)
  return -1;
 ISOFS_SB(inode->i_sb)->s_rock_offset = rr->u.SP.skip;
 return 0;
}
