
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {int dummy; } ;


 int GPIO_DATA ;
 int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hw_dac_stop(struct hw *hw)
{
 u32 data;
 data = hw_read_20kx(hw, GPIO_DATA);
 data &= 0xFFFFFFFD;
 hw_write_20kx(hw, GPIO_DATA, data);
 usleep_range(10000, 11000);
}
