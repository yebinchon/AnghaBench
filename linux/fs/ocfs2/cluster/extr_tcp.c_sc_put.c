
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_sock_container {int sc_kref; } ;


 int kref_put (int *,int ) ;
 int sc_kref_release ;
 int sclog (struct o2net_sock_container*,char*) ;

__attribute__((used)) static void sc_put(struct o2net_sock_container *sc)
{
 sclog(sc, "put\n");
 kref_put(&sc->sc_kref, sc_kref_release);
}
