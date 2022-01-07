
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* codecs; TYPE_1__* cpus; } ;
struct TYPE_5__ {int * of_node; } ;
struct TYPE_4__ {int * of_node; } ;


 int of_node_put (int *) ;
 TYPE_3__ rk_dailink ;

__attribute__((used)) static int snd_rk_mc_remove(struct platform_device *pdev)
{
 of_node_put(rk_dailink.cpus->of_node);
 rk_dailink.cpus->of_node = ((void*)0);
 of_node_put(rk_dailink.codecs->of_node);
 rk_dailink.codecs->of_node = ((void*)0);

 return 0;
}
