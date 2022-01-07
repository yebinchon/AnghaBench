
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_meta_info {int metaval; } ;


 int kfree (int ) ;

void ife_release_meta_gen(struct tcf_meta_info *mi)
{
 kfree(mi->metaval);
}
