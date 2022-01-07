
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_cluster {size_t cl_fence_method; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 char** o2nm_fence_method_desc ;
 int sprintf (char*,char*,char*) ;
 struct o2nm_cluster* to_o2nm_cluster (struct config_item*) ;

__attribute__((used)) static ssize_t o2nm_cluster_fence_method_show(
 struct config_item *item, char *page)
{
 struct o2nm_cluster *cluster = to_o2nm_cluster(item);
 ssize_t ret = 0;

 if (cluster)
  ret = sprintf(page, "%s\n",
         o2nm_fence_method_desc[cluster->cl_fence_method]);
 return ret;
}
