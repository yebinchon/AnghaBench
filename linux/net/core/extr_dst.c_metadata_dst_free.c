
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dst_cache; } ;
struct TYPE_4__ {TYPE_1__ tun_info; } ;
struct metadata_dst {scalar_t__ type; TYPE_2__ u; } ;


 scalar_t__ METADATA_IP_TUNNEL ;
 int dst_cache_destroy (int *) ;
 int kfree (struct metadata_dst*) ;

void metadata_dst_free(struct metadata_dst *md_dst)
{




 kfree(md_dst);
}
