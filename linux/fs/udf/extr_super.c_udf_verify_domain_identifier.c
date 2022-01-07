
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct regid {int flags; scalar_t__ identSuffix; int ident; } ;
struct domainEntityIDSuffix {int flags; } ;


 int EACCES ;
 int ENTITYIDSUFFIX_FLAGS_HARDWRITEPROTECT ;
 int ENTITYIDSUFFIX_FLAGS_SOFTWRITEPROTECT ;
 int ENTITYID_FLAGS_DIRTY ;
 int UDF_FLAG_RW_INCOMPAT ;
 int UDF_ID_COMPLIANT ;
 int UDF_SET_FLAG (struct super_block*,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int sb_rdonly (struct super_block*) ;
 int strlen (int ) ;
 int udf_warn (struct super_block*,char*,char*) ;

__attribute__((used)) static int udf_verify_domain_identifier(struct super_block *sb,
     struct regid *ident, char *dname)
{
 struct domainEntityIDSuffix *suffix;

 if (memcmp(ident->ident, UDF_ID_COMPLIANT, strlen(UDF_ID_COMPLIANT))) {
  udf_warn(sb, "Not OSTA UDF compliant %s descriptor.\n", dname);
  goto force_ro;
 }
 if (ident->flags & (1 << ENTITYID_FLAGS_DIRTY)) {
  udf_warn(sb, "Possibly not OSTA UDF compliant %s descriptor.\n",
    dname);
  goto force_ro;
 }
 suffix = (struct domainEntityIDSuffix *)ident->identSuffix;
 if (suffix->flags & (1 << ENTITYIDSUFFIX_FLAGS_HARDWRITEPROTECT) ||
     suffix->flags & (1 << ENTITYIDSUFFIX_FLAGS_SOFTWRITEPROTECT)) {
  if (!sb_rdonly(sb)) {
   udf_warn(sb, "Descriptor for %s marked write protected."
     " Forcing read only mount.\n", dname);
  }
  goto force_ro;
 }
 return 0;

force_ro:
 if (!sb_rdonly(sb))
  return -EACCES;
 UDF_SET_FLAG(sb, UDF_FLAG_RW_INCOMPAT);
 return 0;
}
