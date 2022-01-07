
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sidtab_convert_params {struct sidtab* target; struct convert_context_args* args; int func; } ;
struct sidtab {size_t len; scalar_t__ mls_enabled; } ;
struct selinux_state {int initialized; int avc; TYPE_1__* ss; } ;
struct selinux_mapping {size_t len; scalar_t__ mls_enabled; } ;
struct selinux_map {struct sidtab* mapping; int size; } ;
struct policydb {size_t len; scalar_t__ mls_enabled; } ;
struct policy_file {void* member_0; size_t member_1; } ;
struct convert_context_args {struct sidtab* newp; struct sidtab* oldp; struct selinux_state* state; } ;
struct TYPE_2__ {int policy_rwlock; scalar_t__ latest_granting; struct selinux_map map; struct sidtab* sidtab; struct sidtab policydb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int avc_ss_reset (int ,scalar_t__) ;
 int convert_context ;
 struct sidtab* kcalloc (int,int,int ) ;
 int kfree (struct sidtab*) ;
 struct sidtab* kmalloc (int,int ) ;
 int memcpy (struct sidtab*,struct sidtab*,int) ;
 int policydb_destroy (struct sidtab*) ;
 int policydb_load_isids (struct sidtab*,struct sidtab*) ;
 int policydb_read (struct sidtab*,struct policy_file*) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int secclass_map ;
 int security_load_policycaps (struct selinux_state*) ;
 int security_preserve_bools (struct selinux_state*,struct sidtab*) ;
 int selinux_complete_init () ;
 int selinux_netlbl_cache_invalidate () ;
 int selinux_set_mapping (struct sidtab*,int ,struct selinux_map*) ;
 int selinux_status_update_policyload (struct selinux_state*,scalar_t__) ;
 int selinux_xfrm_notify_policyload () ;
 int selnl_notify_policyload (scalar_t__) ;
 int sidtab_convert (struct sidtab*,struct sidtab_convert_params*) ;
 int sidtab_destroy (struct sidtab*) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int security_load_policy(struct selinux_state *state, void *data, size_t len)
{
 struct policydb *policydb;
 struct sidtab *oldsidtab, *newsidtab;
 struct policydb *oldpolicydb, *newpolicydb;
 struct selinux_mapping *oldmapping;
 struct selinux_map newmap;
 struct sidtab_convert_params convert_params;
 struct convert_context_args args;
 u32 seqno;
 int rc = 0;
 struct policy_file file = { data, len }, *fp = &file;

 oldpolicydb = kcalloc(2, sizeof(*oldpolicydb), GFP_KERNEL);
 if (!oldpolicydb) {
  rc = -ENOMEM;
  goto out;
 }
 newpolicydb = oldpolicydb + 1;

 policydb = &state->ss->policydb;

 newsidtab = kmalloc(sizeof(*newsidtab), GFP_KERNEL);
 if (!newsidtab) {
  rc = -ENOMEM;
  goto out;
 }

 if (!state->initialized) {
  rc = policydb_read(policydb, fp);
  if (rc) {
   kfree(newsidtab);
   goto out;
  }

  policydb->len = len;
  rc = selinux_set_mapping(policydb, secclass_map,
      &state->ss->map);
  if (rc) {
   kfree(newsidtab);
   policydb_destroy(policydb);
   goto out;
  }

  rc = policydb_load_isids(policydb, newsidtab);
  if (rc) {
   kfree(newsidtab);
   policydb_destroy(policydb);
   goto out;
  }

  state->ss->sidtab = newsidtab;
  security_load_policycaps(state);
  state->initialized = 1;
  seqno = ++state->ss->latest_granting;
  selinux_complete_init();
  avc_ss_reset(state->avc, seqno);
  selnl_notify_policyload(seqno);
  selinux_status_update_policyload(state, seqno);
  selinux_netlbl_cache_invalidate();
  selinux_xfrm_notify_policyload();
  goto out;
 }

 rc = policydb_read(newpolicydb, fp);
 if (rc) {
  kfree(newsidtab);
  goto out;
 }

 newpolicydb->len = len;

 if (policydb->mls_enabled && !newpolicydb->mls_enabled)
  pr_info("SELinux: Disabling MLS support...\n");
 else if (!policydb->mls_enabled && newpolicydb->mls_enabled)
  pr_info("SELinux: Enabling MLS support...\n");

 rc = policydb_load_isids(newpolicydb, newsidtab);
 if (rc) {
  pr_err("SELinux:  unable to load the initial SIDs\n");
  policydb_destroy(newpolicydb);
  kfree(newsidtab);
  goto out;
 }

 rc = selinux_set_mapping(newpolicydb, secclass_map, &newmap);
 if (rc)
  goto err;

 rc = security_preserve_bools(state, newpolicydb);
 if (rc) {
  pr_err("SELinux:  unable to preserve booleans\n");
  goto err;
 }

 oldsidtab = state->ss->sidtab;





 args.state = state;
 args.oldp = policydb;
 args.newp = newpolicydb;

 convert_params.func = convert_context;
 convert_params.args = &args;
 convert_params.target = newsidtab;

 rc = sidtab_convert(oldsidtab, &convert_params);
 if (rc) {
  pr_err("SELinux:  unable to convert the internal"
   " representation of contexts in the new SID"
   " table\n");
  goto err;
 }


 memcpy(oldpolicydb, policydb, sizeof(*policydb));


 write_lock_irq(&state->ss->policy_rwlock);
 memcpy(policydb, newpolicydb, sizeof(*policydb));
 state->ss->sidtab = newsidtab;
 security_load_policycaps(state);
 oldmapping = state->ss->map.mapping;
 state->ss->map.mapping = newmap.mapping;
 state->ss->map.size = newmap.size;
 seqno = ++state->ss->latest_granting;
 write_unlock_irq(&state->ss->policy_rwlock);


 policydb_destroy(oldpolicydb);
 sidtab_destroy(oldsidtab);
 kfree(oldsidtab);
 kfree(oldmapping);

 avc_ss_reset(state->avc, seqno);
 selnl_notify_policyload(seqno);
 selinux_status_update_policyload(state, seqno);
 selinux_netlbl_cache_invalidate();
 selinux_xfrm_notify_policyload();

 rc = 0;
 goto out;

err:
 kfree(newmap.mapping);
 sidtab_destroy(newsidtab);
 kfree(newsidtab);
 policydb_destroy(newpolicydb);

out:
 kfree(oldpolicydb);
 return rc;
}
