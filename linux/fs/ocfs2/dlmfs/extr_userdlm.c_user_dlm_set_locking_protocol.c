
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lp_max_version; } ;


 int ocfs2_stack_glue_set_max_proto_version (int *) ;
 TYPE_1__ user_dlm_lproto ;

void user_dlm_set_locking_protocol(void)
{
 ocfs2_stack_glue_set_max_proto_version(&user_dlm_lproto.lp_max_version);
}
