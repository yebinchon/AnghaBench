
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int FLOWCTL_BLK_SZ ;

__attribute__((used)) static u16 tsk_adv_blocks(int len)
{
 return len / FLOWCTL_BLK_SZ / 4;
}
