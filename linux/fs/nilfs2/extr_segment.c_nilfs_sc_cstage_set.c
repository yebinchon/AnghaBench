
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scnt; } ;
struct nilfs_sc_info {TYPE_1__ sc_stage; } ;


 int trace_nilfs2_collection_stage_transition (struct nilfs_sc_info*) ;

__attribute__((used)) static inline void nilfs_sc_cstage_set(struct nilfs_sc_info *sci, int next_scnt)
{
 sci->sc_stage.scnt = next_scnt;
 trace_nilfs2_collection_stage_transition(sci);
}
