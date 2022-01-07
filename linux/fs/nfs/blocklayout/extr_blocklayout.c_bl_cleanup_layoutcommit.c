
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct nfs4_layoutcommit_data {TYPE_1__ res; int args; } ;


 int ext_tree_mark_committed (int *,int ) ;

__attribute__((used)) static void
bl_cleanup_layoutcommit(struct nfs4_layoutcommit_data *lcdata)
{
 ext_tree_mark_committed(&lcdata->args, lcdata->res.status);
}
