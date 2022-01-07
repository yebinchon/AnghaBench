
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int overlay_adjust_node_phandles (void*,int ,int ) ;

__attribute__((used)) static int overlay_adjust_local_phandles(void *fdto, uint32_t delta)
{



 return overlay_adjust_node_phandles(fdto, 0, delta);
}
