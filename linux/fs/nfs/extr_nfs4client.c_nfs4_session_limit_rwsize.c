
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nfs_server {scalar_t__ dtsize; scalar_t__ rsize; scalar_t__ wsize; TYPE_2__* nfs_client; } ;
struct TYPE_3__ {scalar_t__ max_resp_sz; scalar_t__ max_rqst_sz; } ;
struct nfs4_session {TYPE_1__ fc_attrs; } ;
struct TYPE_4__ {struct nfs4_session* cl_session; } ;


 scalar_t__ nfs41_maxread_overhead ;
 scalar_t__ nfs41_maxwrite_overhead ;
 int nfs4_has_session (TYPE_2__*) ;

__attribute__((used)) static void nfs4_session_limit_rwsize(struct nfs_server *server)
{
}
