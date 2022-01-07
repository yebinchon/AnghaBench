
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsm_handle {int dummy; } ;
struct nlm_reboot {int dummy; } ;
struct nlm_host {int dummy; } ;
struct net {int dummy; } ;


 struct nlm_host* next_host_state (int ,struct nsm_handle*,struct nlm_reboot const*) ;
 int nlm_client_hosts ;
 int nlm_server_hosts ;
 int nlmclnt_recovery (struct nlm_host*) ;
 int nlmclnt_release_host (struct nlm_host*) ;
 int nlmsvc_free_host_resources (struct nlm_host*) ;
 int nlmsvc_release_host (struct nlm_host*) ;
 struct nsm_handle* nsm_reboot_lookup (struct net const*,struct nlm_reboot const*) ;
 int nsm_release (struct nsm_handle*) ;
 scalar_t__ unlikely (int ) ;

void nlm_host_rebooted(const struct net *net, const struct nlm_reboot *info)
{
 struct nsm_handle *nsm;
 struct nlm_host *host;

 nsm = nsm_reboot_lookup(net, info);
 if (unlikely(nsm == ((void*)0)))
  return;






 while ((host = next_host_state(nlm_server_hosts, nsm, info)) != ((void*)0)) {
  nlmsvc_free_host_resources(host);
  nlmsvc_release_host(host);
 }
 while ((host = next_host_state(nlm_client_hosts, nsm, info)) != ((void*)0)) {
  nlmclnt_recovery(host);
  nlmclnt_release_host(host);
 }

 nsm_release(nsm);
}
