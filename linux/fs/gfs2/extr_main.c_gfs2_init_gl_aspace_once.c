
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int dummy; } ;
struct address_space {int dummy; } ;


 int address_space_init_once (struct address_space*) ;
 int gfs2_init_glock_once (struct gfs2_glock*) ;

__attribute__((used)) static void gfs2_init_gl_aspace_once(void *foo)
{
 struct gfs2_glock *gl = foo;
 struct address_space *mapping = (struct address_space *)(gl + 1);

 gfs2_init_glock_once(gl);
 address_space_init_once(mapping);
}
