
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {TYPE_1__* replay_map; } ;
struct TYPE_2__ {int rm_state; } ;


 int REPLAY_DONE ;

__attribute__((used)) static void ocfs2_replay_map_set_state(struct ocfs2_super *osb, int state)
{
 if (!osb->replay_map)
  return;


 if (osb->replay_map->rm_state == REPLAY_DONE)
  return;

 osb->replay_map->rm_state = state;
}
