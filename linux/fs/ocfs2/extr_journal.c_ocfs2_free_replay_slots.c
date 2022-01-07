
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct ocfs2_replay_map* replay_map; } ;
struct ocfs2_replay_map {int dummy; } ;


 int kfree (struct ocfs2_replay_map*) ;

__attribute__((used)) static void ocfs2_free_replay_slots(struct ocfs2_super *osb)
{
 struct ocfs2_replay_map *replay_map = osb->replay_map;

 if (!osb->replay_map)
  return;

 kfree(replay_map);
 osb->replay_map = ((void*)0);
}
