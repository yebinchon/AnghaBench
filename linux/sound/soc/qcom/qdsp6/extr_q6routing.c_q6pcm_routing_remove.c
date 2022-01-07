
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int kfree (int *) ;
 int * routing_data ;

__attribute__((used)) static int q6pcm_routing_remove(struct platform_device *pdev)
{
 kfree(routing_data);
 routing_data = ((void*)0);

 return 0;
}
