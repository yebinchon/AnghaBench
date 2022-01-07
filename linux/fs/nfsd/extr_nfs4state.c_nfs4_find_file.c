
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nfsd_file {int dummy; } ;
struct nfs4_stid {int sc_type; TYPE_1__* sc_file; } ;
struct TYPE_3__ {int fi_deleg_file; } ;





 int RD_STATE ;
 int WARN_ON_ONCE (int) ;
 struct nfsd_file* find_readable_file (TYPE_1__*) ;
 struct nfsd_file* find_writeable_file (TYPE_1__*) ;
 struct nfsd_file* nfsd_file_get (int ) ;

__attribute__((used)) static struct nfsd_file *
nfs4_find_file(struct nfs4_stid *s, int flags)
{
 if (!s)
  return ((void*)0);

 switch (s->sc_type) {
 case 130:
  if (WARN_ON_ONCE(!s->sc_file->fi_deleg_file))
   return ((void*)0);
  return nfsd_file_get(s->sc_file->fi_deleg_file);
 case 128:
 case 129:
  if (flags & RD_STATE)
   return find_readable_file(s->sc_file);
  else
   return find_writeable_file(s->sc_file);
  break;
 }

 return ((void*)0);
}
