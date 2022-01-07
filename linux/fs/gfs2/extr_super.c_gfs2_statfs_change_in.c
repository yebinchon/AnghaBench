
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_statfs_change_host {void* sc_dinodes; void* sc_free; void* sc_total; } ;
struct gfs2_statfs_change {int sc_dinodes; int sc_free; int sc_total; } ;


 void* be64_to_cpu (int ) ;

void gfs2_statfs_change_in(struct gfs2_statfs_change_host *sc, const void *buf)
{
 const struct gfs2_statfs_change *str = buf;

 sc->sc_total = be64_to_cpu(str->sc_total);
 sc->sc_free = be64_to_cpu(str->sc_free);
 sc->sc_dinodes = be64_to_cpu(str->sc_dinodes);
}
