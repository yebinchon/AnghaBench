
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {scalar_t__ type; int lock; } ;


 int CSUER ;
 int RUER ;
 scalar_t__ VX_TYPE_VXPOCKET ;
 int XX_UER_CBITS_OFFSET_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vx_inb (struct vx_core*,int ) ;
 int vx_inl (struct vx_core*,int ) ;
 int vx_outb (struct vx_core*,int ,int) ;
 int vx_outl (struct vx_core*,int ,int) ;

__attribute__((used)) static int vx_read_one_cbit(struct vx_core *chip, int index)
{
 int val;

 mutex_lock(&chip->lock);
 if (chip->type >= VX_TYPE_VXPOCKET) {
  vx_outb(chip, CSUER, 1);
  vx_outb(chip, RUER, index & XX_UER_CBITS_OFFSET_MASK);
  val = (vx_inb(chip, RUER) >> 7) & 0x01;
 } else {
  vx_outl(chip, CSUER, 1);
  vx_outl(chip, RUER, index & XX_UER_CBITS_OFFSET_MASK);
  val = (vx_inl(chip, RUER) >> 7) & 0x01;
 }
 mutex_unlock(&chip->lock);
 return val;
}
