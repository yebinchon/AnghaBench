
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct inode {int dummy; } ;
struct ima_template_entry {int pcr; int digest; } ;
typedef int digest ;


 int AUDIT_CAUSE_LEN_MAX ;
 int AUDIT_INTEGRITY_PCR ;
 int EEXIST ;
 int TPM_DIGEST_SIZE ;
 int ima_add_digest_entry (struct ima_template_entry*,int) ;
 int ima_extend_list_mutex ;
 scalar_t__ ima_lookup_digest_entry (int *,int ) ;
 int ima_pcr_extend (int *,int ) ;
 int integrity_audit_msg (int ,struct inode*,unsigned char const*,char const*,char const*,int,int) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,int) ;

int ima_add_template_entry(struct ima_template_entry *entry, int violation,
      const char *op, struct inode *inode,
      const unsigned char *filename)
{
 u8 digest[TPM_DIGEST_SIZE];
 const char *audit_cause = "hash_added";
 char tpm_audit_cause[AUDIT_CAUSE_LEN_MAX];
 int audit_info = 1;
 int result = 0, tpmresult = 0;

 mutex_lock(&ima_extend_list_mutex);
 if (!violation) {
  memcpy(digest, entry->digest, sizeof(digest));
  if (ima_lookup_digest_entry(digest, entry->pcr)) {
   audit_cause = "hash_exists";
   result = -EEXIST;
   goto out;
  }
 }

 result = ima_add_digest_entry(entry, 1);
 if (result < 0) {
  audit_cause = "ENOMEM";
  audit_info = 0;
  goto out;
 }

 if (violation)
  memset(digest, 0xff, sizeof(digest));

 tpmresult = ima_pcr_extend(digest, entry->pcr);
 if (tpmresult != 0) {
  snprintf(tpm_audit_cause, AUDIT_CAUSE_LEN_MAX, "TPM_error(%d)",
    tpmresult);
  audit_cause = tpm_audit_cause;
  audit_info = 0;
 }
out:
 mutex_unlock(&ima_extend_list_mutex);
 integrity_audit_msg(AUDIT_INTEGRITY_PCR, inode, filename,
       op, audit_cause, result, audit_info);
 return result;
}
