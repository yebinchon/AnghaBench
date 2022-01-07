
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dao_ctrl_blk {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct dao_ctrl_blk* kzalloc (int,int ) ;

__attribute__((used)) static int dao_get_ctrl_blk(void **rblk)
{
 struct dao_ctrl_blk *blk;

 *rblk = ((void*)0);
 blk = kzalloc(sizeof(*blk), GFP_KERNEL);
 if (!blk)
  return -ENOMEM;

 *rblk = blk;

 return 0;
}
