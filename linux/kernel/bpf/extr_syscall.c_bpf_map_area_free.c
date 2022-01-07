
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvfree (void*) ;

void bpf_map_area_free(void *area)
{
 kvfree(area);
}
