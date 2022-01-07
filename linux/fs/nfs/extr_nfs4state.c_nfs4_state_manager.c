
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {int cl_hostname; int cl_state; TYPE_1__* cl_mvops; int cl_count; } ;
struct TYPE_2__ {int nograce_recovery_ops; int reboot_recovery_ops; } ;


 int EAGAIN ;
 int NFS4CLNT_BIND_CONN_TO_SESSION ;
 int NFS4CLNT_CHECK_LEASE ;
 int NFS4CLNT_DELEGATION_EXPIRED ;
 int NFS4CLNT_DELEGRETURN ;
 int NFS4CLNT_DELEGRETURN_RUNNING ;
 int NFS4CLNT_LEASE_EXPIRED ;
 int NFS4CLNT_LEASE_MOVED ;
 int NFS4CLNT_MANAGER_RUNNING ;
 int NFS4CLNT_MOVED ;
 int NFS4CLNT_PURGE_STATE ;
 int NFS4CLNT_RECLAIM_NOGRACE ;
 int NFS4CLNT_RECLAIM_REBOOT ;
 int NFS4CLNT_RUN_MANAGER ;
 int NFS4CLNT_SESSION_RESET ;
 int clear_bit (int ,int *) ;
 int nfs4_bind_conn_to_session (struct nfs_client*) ;
 int nfs4_check_lease (struct nfs_client*) ;
 int nfs4_clear_state_manager_bit (struct nfs_client*) ;
 int nfs4_do_reclaim (struct nfs_client*,int ) ;
 int nfs4_end_drain_session (struct nfs_client*) ;
 int nfs4_handle_lease_moved (struct nfs_client*) ;
 int nfs4_handle_migration (struct nfs_client*) ;
 int nfs4_purge_lease (struct nfs_client*) ;
 int nfs4_reclaim_lease (struct nfs_client*) ;
 int nfs4_reset_session (struct nfs_client*) ;
 int nfs4_state_end_reclaim_reboot (struct nfs_client*) ;
 int nfs_client_return_marked_delegations (struct nfs_client*) ;
 int nfs_reap_expired_delegations (struct nfs_client*) ;
 int pr_warn_ratelimited (char*,char const*,char const*,int ,int) ;
 int refcount_read (int *) ;
 int set_bit (int ,int *) ;
 int signalled () ;
 int ssleep (int) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs4_state_manager(struct nfs_client *clp)
{
 int status = 0;
 const char *section = "", *section_sep = "";


 do {
  clear_bit(NFS4CLNT_RUN_MANAGER, &clp->cl_state);
  if (test_bit(NFS4CLNT_PURGE_STATE, &clp->cl_state)) {
   section = "purge state";
   status = nfs4_purge_lease(clp);
   if (status < 0)
    goto out_error;
   continue;
  }

  if (test_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state)) {
   section = "lease expired";

   status = nfs4_reclaim_lease(clp);
   if (status < 0)
    goto out_error;
   continue;
  }


  if (test_and_clear_bit(NFS4CLNT_SESSION_RESET, &clp->cl_state)) {
   section = "reset session";
   status = nfs4_reset_session(clp);
   if (test_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
    continue;
   if (status < 0)
    goto out_error;
  }


  if (test_and_clear_bit(NFS4CLNT_BIND_CONN_TO_SESSION,
    &clp->cl_state)) {
   section = "bind conn to session";
   status = nfs4_bind_conn_to_session(clp);
   if (status < 0)
    goto out_error;
   continue;
  }

  if (test_and_clear_bit(NFS4CLNT_CHECK_LEASE, &clp->cl_state)) {
   section = "check lease";
   status = nfs4_check_lease(clp);
   if (status < 0)
    goto out_error;
   continue;
  }

  if (test_and_clear_bit(NFS4CLNT_MOVED, &clp->cl_state)) {
   section = "migration";
   status = nfs4_handle_migration(clp);
   if (status < 0)
    goto out_error;
  }

  if (test_and_clear_bit(NFS4CLNT_LEASE_MOVED, &clp->cl_state)) {
   section = "lease moved";
   status = nfs4_handle_lease_moved(clp);
   if (status < 0)
    goto out_error;
  }


  if (test_bit(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state)) {
   section = "reclaim reboot";
   status = nfs4_do_reclaim(clp,
    clp->cl_mvops->reboot_recovery_ops);
   if (status == -EAGAIN)
    continue;
   if (status < 0)
    goto out_error;
   nfs4_state_end_reclaim_reboot(clp);
  }


  if (test_and_clear_bit(NFS4CLNT_DELEGATION_EXPIRED, &clp->cl_state)) {
   section = "detect expired delegations";
   nfs_reap_expired_delegations(clp);
   continue;
  }


  if (test_bit(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state)) {
   section = "reclaim nograce";
   status = nfs4_do_reclaim(clp,
    clp->cl_mvops->nograce_recovery_ops);
   if (status == -EAGAIN)
    continue;
   if (status < 0)
    goto out_error;
   clear_bit(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state);
  }

  nfs4_end_drain_session(clp);
  nfs4_clear_state_manager_bit(clp);

  if (!test_and_set_bit(NFS4CLNT_DELEGRETURN_RUNNING, &clp->cl_state)) {
   if (test_and_clear_bit(NFS4CLNT_DELEGRETURN, &clp->cl_state)) {
    nfs_client_return_marked_delegations(clp);
    set_bit(NFS4CLNT_RUN_MANAGER, &clp->cl_state);
   }
   clear_bit(NFS4CLNT_DELEGRETURN_RUNNING, &clp->cl_state);
  }


  if (!test_bit(NFS4CLNT_RUN_MANAGER, &clp->cl_state))
   return;
  if (test_and_set_bit(NFS4CLNT_MANAGER_RUNNING, &clp->cl_state) != 0)
   return;
 } while (refcount_read(&clp->cl_count) > 1 && !signalled());
 goto out_drain;

out_error:
 if (strlen(section))
  section_sep = ": ";
 pr_warn_ratelimited("NFS: state manager%s%s failed on NFSv4 server %s"
   " with error %d\n", section_sep, section,
   clp->cl_hostname, -status);
 ssleep(1);
out_drain:
 nfs4_end_drain_session(clp);
 nfs4_clear_state_manager_bit(clp);
}
