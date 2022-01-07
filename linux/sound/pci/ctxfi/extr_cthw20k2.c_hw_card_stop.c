
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 int PLL_ENB ;
 int TRANSPORT_CTL ;
 unsigned int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,unsigned int) ;

__attribute__((used)) static int hw_card_stop(struct hw *hw)
{
 unsigned int data;


 hw_write_20kx(hw, TRANSPORT_CTL, 0x00);


 data = hw_read_20kx(hw, PLL_ENB);
 hw_write_20kx(hw, PLL_ENB, (data & (~0x07)));


 return 0;
}
