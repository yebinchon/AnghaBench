
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;
struct daio_mgr_ctrl_blk {void* spictl; void* spoctl; void* i2sctl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2SCTL ;
 int SPICTL ;
 int SPOCTL ;
 void* hw_read_20kx (struct hw*,int ) ;
 struct daio_mgr_ctrl_blk* kzalloc (int,int ) ;

__attribute__((used)) static int daio_mgr_get_ctrl_blk(struct hw *hw, void **rblk)
{
 struct daio_mgr_ctrl_blk *blk;

 *rblk = ((void*)0);
 blk = kzalloc(sizeof(*blk), GFP_KERNEL);
 if (!blk)
  return -ENOMEM;

 blk->i2sctl = hw_read_20kx(hw, I2SCTL);
 blk->spoctl = hw_read_20kx(hw, SPOCTL);
 blk->spictl = hw_read_20kx(hw, SPICTL);

 *rblk = blk;

 return 0;
}
