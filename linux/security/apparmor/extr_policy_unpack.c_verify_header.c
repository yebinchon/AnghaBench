
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ext {int version; } ;


 int EPROTONOSUPPORT ;
 scalar_t__ VERSION_GT (int ,int ) ;
 scalar_t__ VERSION_LT (int ,int ) ;
 int audit_iface (int *,int *,int *,char*,struct aa_ext*,int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ unpack_str (struct aa_ext*,char const**,char*) ;
 int unpack_u32 (struct aa_ext*,int *,char*) ;
 int v5 ;
 int v7 ;

__attribute__((used)) static int verify_header(struct aa_ext *e, int required, const char **ns)
{
 int error = -EPROTONOSUPPORT;
 const char *name = ((void*)0);
 *ns = ((void*)0);


 if (!unpack_u32(e, &e->version, "version")) {
  if (required) {
   audit_iface(((void*)0), ((void*)0), ((void*)0), "invalid profile format",
        e, error);
   return error;
  }
 }





 if (VERSION_LT(e->version, v5) || VERSION_GT(e->version, v7)) {
  audit_iface(((void*)0), ((void*)0), ((void*)0), "unsupported interface version",
       e, error);
  return error;
 }


 if (unpack_str(e, &name, "namespace")) {
  if (*name == '\0') {
   audit_iface(((void*)0), ((void*)0), ((void*)0), "invalid namespace name",
        e, error);
   return error;
  }
  if (*ns && strcmp(*ns, name))
   audit_iface(((void*)0), ((void*)0), ((void*)0), "invalid ns change", e,
        error);
  else if (!*ns)
   *ns = name;
 }

 return 0;
}
