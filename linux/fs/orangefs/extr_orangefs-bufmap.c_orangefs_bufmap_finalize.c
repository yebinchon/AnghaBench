
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_bufmap {int dummy; } ;


 int GOSSIP_BUFMAP_DEBUG ;
 struct orangefs_bufmap* __orangefs_bufmap ;
 int gossip_debug (int ,char*) ;
 int mark_killed (int *) ;
 int readdir_map ;
 int rw_map ;

void orangefs_bufmap_finalize(void)
{
 struct orangefs_bufmap *bufmap = __orangefs_bufmap;
 if (!bufmap)
  return;
 gossip_debug(GOSSIP_BUFMAP_DEBUG, "orangefs_bufmap_finalize: called\n");
 mark_killed(&rw_map);
 mark_killed(&readdir_map);
 gossip_debug(GOSSIP_BUFMAP_DEBUG,
       "orangefs_bufmap_finalize: exiting normally\n");
}
