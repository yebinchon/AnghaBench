
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;
struct dt_info {int dummy; } ;


 int DTSF_V1 ;
 struct dt_info* build_dt_info (int ,int *,struct node*,int ) ;
 int guess_boot_cpuid (struct node*) ;
 struct node* name_node (struct node*,char*) ;
 struct node* read_fstree (char const*) ;

struct dt_info *dt_from_fs(const char *dirname)
{
 struct node *tree;

 tree = read_fstree(dirname);
 tree = name_node(tree, "");

 return build_dt_info(DTSF_V1, ((void*)0), tree, guess_boot_cpuid(tree));
}
