
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_holder {int gh_gl; } ;



__attribute__((used)) static inline bool gfs2_holder_initialized(struct gfs2_holder *gh)
{
 return gh->gh_gl;
}
