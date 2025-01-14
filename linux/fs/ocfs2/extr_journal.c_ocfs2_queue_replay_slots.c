
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int journal; struct ocfs2_replay_map* replay_map; } ;
struct ocfs2_replay_map {scalar_t__ rm_state; int rm_slots; scalar_t__* rm_replay_slots; } ;
typedef enum ocfs2_orphan_reco_type { ____Placeholder_ocfs2_orphan_reco_type } ocfs2_orphan_reco_type ;


 scalar_t__ REPLAY_DONE ;
 scalar_t__ REPLAY_NEEDED ;
 int ocfs2_queue_recovery_completion (int ,int,int *,int *,int *,int) ;

__attribute__((used)) static void ocfs2_queue_replay_slots(struct ocfs2_super *osb,
  enum ocfs2_orphan_reco_type orphan_reco_type)
{
 struct ocfs2_replay_map *replay_map = osb->replay_map;
 int i;

 if (!replay_map)
  return;

 if (replay_map->rm_state != REPLAY_NEEDED)
  return;

 for (i = 0; i < replay_map->rm_slots; i++)
  if (replay_map->rm_replay_slots[i])
   ocfs2_queue_recovery_completion(osb->journal, i, ((void*)0),
       ((void*)0), ((void*)0),
       orphan_reco_type);
 replay_map->rm_state = REPLAY_DONE;
}
