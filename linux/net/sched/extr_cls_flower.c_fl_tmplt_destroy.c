
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_tmplt {int chain; } ;


 int fl_hw_destroy_tmplt (int ,struct fl_flow_tmplt*) ;
 int kfree (struct fl_flow_tmplt*) ;

__attribute__((used)) static void fl_tmplt_destroy(void *tmplt_priv)
{
 struct fl_flow_tmplt *tmplt = tmplt_priv;

 fl_hw_destroy_tmplt(tmplt->chain, tmplt);
 kfree(tmplt);
}
