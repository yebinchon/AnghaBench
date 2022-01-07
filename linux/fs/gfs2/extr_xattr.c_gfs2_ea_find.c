
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int dummy; } ;
struct gfs2_ea_location {int dummy; } ;
struct ea_find {int type; char const* name; struct gfs2_ea_location* ef_el; int namel; } ;


 int ea_find_i ;
 int ea_foreach (struct gfs2_inode*,int ,struct ea_find*) ;
 int memset (struct gfs2_ea_location*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int gfs2_ea_find(struct gfs2_inode *ip, int type, const char *name,
   struct gfs2_ea_location *el)
{
 struct ea_find ef;
 int error;

 ef.type = type;
 ef.name = name;
 ef.namel = strlen(name);
 ef.ef_el = el;

 memset(el, 0, sizeof(struct gfs2_ea_location));

 error = ea_foreach(ip, ea_find_i, &ef);
 if (error > 0)
  return 0;

 return error;
}
