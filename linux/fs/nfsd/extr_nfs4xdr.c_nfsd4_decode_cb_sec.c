
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct user_namespace {int dummy; } ;
struct nfsd4_compoundargs {int rqstp; } ;
struct nfsd4_cb_sec {int flavor; int gid; int uid; } ;
typedef int kuid_t ;
typedef int kgid_t ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;



 int SAVEMEM (char*,int) ;
 int XDR_QUADLEN (int) ;
 int be32_to_cpup (int ) ;
 int dprintk (char*) ;
 int gid_valid (int ) ;
 int make_kgid (struct user_namespace*,int) ;
 int make_kuid (struct user_namespace*,int) ;
 struct user_namespace* nfsd_user_namespace (int ) ;
 int nfserr_inval ;
 scalar_t__ p ;
 int uid_valid (int ) ;

__attribute__((used)) static __be32 nfsd4_decode_cb_sec(struct nfsd4_compoundargs *argp, struct nfsd4_cb_sec *cbs)
{
 DECODE_HEAD;
 struct user_namespace *userns = nfsd_user_namespace(argp->rqstp);
 u32 dummy, uid, gid;
 char *machine_name;
 int i;
 int nr_secflavs;


 READ_BUF(4);
 nr_secflavs = be32_to_cpup(p++);
 if (nr_secflavs)
  cbs->flavor = (u32)(-1);
 else

  cbs->flavor = 0;
 for (i = 0; i < nr_secflavs; ++i) {
  READ_BUF(4);
  dummy = be32_to_cpup(p++);
  switch (dummy) {
  case 129:

   if (cbs->flavor == (u32)(-1))
    cbs->flavor = 129;
   break;
  case 128:
   READ_BUF(8);

   dummy = be32_to_cpup(p++);


   dummy = be32_to_cpup(p++);
   READ_BUF(dummy);
   SAVEMEM(machine_name, dummy);


   READ_BUF(8);
   uid = be32_to_cpup(p++);
   gid = be32_to_cpup(p++);


   READ_BUF(4);
   dummy = be32_to_cpup(p++);
   READ_BUF(dummy * 4);
   if (cbs->flavor == (u32)(-1)) {
    kuid_t kuid = make_kuid(userns, uid);
    kgid_t kgid = make_kgid(userns, gid);
    if (uid_valid(kuid) && gid_valid(kgid)) {
     cbs->uid = kuid;
     cbs->gid = kgid;
     cbs->flavor = 128;
    } else {
     dprintk("RPC_AUTH_UNIX with invalid"
      "uid or gid ignoring!\n");
    }
   }
   break;
  case 130:
   dprintk("RPC_AUTH_GSS callback secflavor "
    "not supported!\n");
   READ_BUF(8);

   dummy = be32_to_cpup(p++);

   dummy = be32_to_cpup(p++);
   READ_BUF(dummy);
   p += XDR_QUADLEN(dummy);

   READ_BUF(4);
   dummy = be32_to_cpup(p++);
   READ_BUF(dummy);
   break;
  default:
   dprintk("Illegal callback secflavor\n");
   return nfserr_inval;
  }
 }
 DECODE_TAIL;
}
