
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_sock_container {int sc_kref; } ;


 int kref_get (int *) ;
 int sclog (struct o2net_sock_container*,char*) ;

__attribute__((used)) static void sc_get(struct o2net_sock_container *sc)
{
 sclog(sc, "get\n");
 kref_get(&sc->sc_kref);
}
