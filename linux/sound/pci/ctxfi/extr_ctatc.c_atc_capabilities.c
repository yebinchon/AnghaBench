
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {struct capabilities (* capabilities ) (struct hw*) ;} ;
struct ct_atc {struct hw* hw; } ;
struct capabilities {int dummy; } ;


 struct capabilities stub1 (struct hw*) ;

__attribute__((used)) static struct capabilities atc_capabilities(struct ct_atc *atc)
{
 struct hw *hw = atc->hw;

 return hw->capabilities(hw);
}
