
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_glock {TYPE_1__* gl_ops; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {int go_flags; } ;


 int GLOF_ASPACE ;

__attribute__((used)) static inline struct address_space *gfs2_glock2aspace(struct gfs2_glock *gl)
{
 if (gl->gl_ops->go_flags & GLOF_ASPACE)
  return (struct address_space *)(gl + 1);
 return ((void*)0);
}
