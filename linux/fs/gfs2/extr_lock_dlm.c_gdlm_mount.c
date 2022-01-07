
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lm_lockstruct {int ls_first; int ls_dlm; scalar_t__ ls_recover_flags; int * ls_lvb_bits; int * ls_recover_result; int * ls_recover_submit; scalar_t__ ls_recover_size; scalar_t__ ls_recover_block; scalar_t__ ls_recover_start; scalar_t__ ls_recover_mount; int ls_recover_spin; } ;
struct gfs2_sbd {scalar_t__ sd_flags; int sd_control_work; struct lm_lockstruct sd_lockstruct; } ;
typedef int cluster ;


 int DFL_FIRST_MOUNT ;
 int DFL_NO_DLM_OPS ;
 int DLM_LSFL_FS ;
 int DLM_LSFL_NEWEXCL ;
 int EINVAL ;
 int GDLM_LVB_SIZE ;
 int GFS2_LOCKNAME_LEN ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int SDF_NOJOURNALID ;
 int clear_bit (int ,scalar_t__*) ;
 int control_mount (struct gfs2_sbd*) ;
 int dlm_new_lockspace (char const*,char*,int,int ,int *,struct gfs2_sbd*,int*,int *) ;
 int dlm_release_lockspace (int ,int) ;
 int free_recover_size (struct lm_lockstruct*) ;
 int fs_err (struct gfs2_sbd*,char*,...) ;
 int fs_info (struct gfs2_sbd*,char*) ;
 int gdlm_lockspace_ops ;
 int gfs2_control_func ;
 int memcpy (char*,char const*,scalar_t__) ;
 int memset (char*,int ,int) ;
 int set_bit (int ,scalar_t__*) ;
 int set_recover_size (struct gfs2_sbd*,int *,int ) ;
 int smp_mb__after_atomic () ;
 int spin_lock_init (int *) ;
 char* strchr (char const*,char) ;
 scalar_t__ strlen (char const*) ;
 int test_bit (int ,scalar_t__*) ;
 int wake_up_bit (scalar_t__*,int ) ;

__attribute__((used)) static int gdlm_mount(struct gfs2_sbd *sdp, const char *table)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 char cluster[GFS2_LOCKNAME_LEN];
 const char *fsname;
 uint32_t flags;
 int error, ops_result;





 INIT_DELAYED_WORK(&sdp->sd_control_work, gfs2_control_func);
 spin_lock_init(&ls->ls_recover_spin);
 ls->ls_recover_flags = 0;
 ls->ls_recover_mount = 0;
 ls->ls_recover_start = 0;
 ls->ls_recover_block = 0;
 ls->ls_recover_size = 0;
 ls->ls_recover_submit = ((void*)0);
 ls->ls_recover_result = ((void*)0);
 ls->ls_lvb_bits = ((void*)0);

 error = set_recover_size(sdp, ((void*)0), 0);
 if (error)
  goto fail;





 fsname = strchr(table, ':');
 if (!fsname) {
  fs_info(sdp, "no fsname found\n");
  error = -EINVAL;
  goto fail_free;
 }
 memset(cluster, 0, sizeof(cluster));
 memcpy(cluster, table, strlen(table) - strlen(fsname));
 fsname++;

 flags = DLM_LSFL_FS | DLM_LSFL_NEWEXCL;





 error = dlm_new_lockspace(fsname, cluster, flags, GDLM_LVB_SIZE,
      &gdlm_lockspace_ops, sdp, &ops_result,
      &ls->ls_dlm);
 if (error) {
  fs_err(sdp, "dlm_new_lockspace error %d\n", error);
  goto fail_free;
 }

 if (ops_result < 0) {




  fs_info(sdp, "dlm lockspace ops not used\n");
  free_recover_size(ls);
  set_bit(DFL_NO_DLM_OPS, &ls->ls_recover_flags);
  return 0;
 }

 if (!test_bit(SDF_NOJOURNALID, &sdp->sd_flags)) {
  fs_err(sdp, "dlm lockspace ops disallow jid preset\n");
  error = -EINVAL;
  goto fail_release;
 }






 error = control_mount(sdp);
 if (error) {
  fs_err(sdp, "mount control error %d\n", error);
  goto fail_release;
 }

 ls->ls_first = !!test_bit(DFL_FIRST_MOUNT, &ls->ls_recover_flags);
 clear_bit(SDF_NOJOURNALID, &sdp->sd_flags);
 smp_mb__after_atomic();
 wake_up_bit(&sdp->sd_flags, SDF_NOJOURNALID);
 return 0;

fail_release:
 dlm_release_lockspace(ls->ls_dlm, 2);
fail_free:
 free_recover_size(ls);
fail:
 return error;
}
