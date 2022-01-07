
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_holder {int * gh_gl; } ;



__attribute__((used)) static inline void gfs2_holder_mark_uninitialized(struct gfs2_holder *gh)
{
 gh->gh_gl = ((void*)0);
}
