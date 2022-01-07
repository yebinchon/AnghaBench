
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_mask {int ref_count; } ;


 int GFP_KERNEL ;
 struct sw_flow_mask* kmalloc (int,int ) ;

__attribute__((used)) static struct sw_flow_mask *mask_alloc(void)
{
 struct sw_flow_mask *mask;

 mask = kmalloc(sizeof(*mask), GFP_KERNEL);
 if (mask)
  mask->ref_count = 1;

 return mask;
}
