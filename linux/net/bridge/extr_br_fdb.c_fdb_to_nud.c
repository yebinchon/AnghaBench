
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_fdb_entry {scalar_t__ is_static; scalar_t__ is_local; } ;
struct net_bridge {int dummy; } ;


 int NUD_NOARP ;
 int NUD_PERMANENT ;
 int NUD_REACHABLE ;
 int NUD_STALE ;
 scalar_t__ has_expired (struct net_bridge const*,struct net_bridge_fdb_entry const*) ;

__attribute__((used)) static int fdb_to_nud(const struct net_bridge *br,
        const struct net_bridge_fdb_entry *fdb)
{
 if (fdb->is_local)
  return NUD_PERMANENT;
 else if (fdb->is_static)
  return NUD_NOARP;
 else if (has_expired(br, fdb))
  return NUD_STALE;
 else
  return NUD_REACHABLE;
}
