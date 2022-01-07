
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_holder {int gh_list; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool gfs2_holder_queued(struct gfs2_holder *gh)
{
 return !list_empty(&gh->gh_list);
}
