
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_extlen_t ;
struct xfs_perag {int pag_agno; struct xfs_mount* pag_mount; } ;
struct xfs_mount {int m_ag_max_usable; } ;
struct xfs_ag_resv {scalar_t__ ar_reserved; scalar_t__ ar_orig_reserved; scalar_t__ ar_asked; } ;
typedef int int64_t ;
typedef enum xfs_ag_resv_type { ____Placeholder_xfs_ag_resv_type } xfs_ag_resv_type ;


 int ASSERT (int ) ;
 int EINVAL ;


 int _RET_IP_ ;
 int trace_xfs_ag_resv_init (struct xfs_perag*,int,scalar_t__) ;
 int trace_xfs_ag_resv_init_error (struct xfs_mount*,int ,int,int ) ;
 int xfs_mod_fdblocks (struct xfs_mount*,int ,int) ;
 struct xfs_ag_resv* xfs_perag_resv (struct xfs_perag*,int) ;
 int xfs_warn (struct xfs_mount*,char*,int ) ;

__attribute__((used)) static int
__xfs_ag_resv_init(
 struct xfs_perag *pag,
 enum xfs_ag_resv_type type,
 xfs_extlen_t ask,
 xfs_extlen_t used)
{
 struct xfs_mount *mp = pag->pag_mount;
 struct xfs_ag_resv *resv;
 int error;
 xfs_extlen_t hidden_space;

 if (used > ask)
  ask = used;

 switch (type) {
 case 128:






  hidden_space = ask;
  break;
 case 129:





  hidden_space = ask - used;
  break;
 default:
  ASSERT(0);
  return -EINVAL;
 }
 error = xfs_mod_fdblocks(mp, -(int64_t)hidden_space, 1);
 if (error) {
  trace_xfs_ag_resv_init_error(pag->pag_mount, pag->pag_agno,
    error, _RET_IP_);
  xfs_warn(mp,
"Per-AG reservation for AG %u failed.  Filesystem may run out of space.",
    pag->pag_agno);
  return error;
 }







 if (pag->pag_agno == 0)
  mp->m_ag_max_usable -= ask;

 resv = xfs_perag_resv(pag, type);
 resv->ar_asked = ask;
 resv->ar_orig_reserved = hidden_space;
 resv->ar_reserved = ask - used;

 trace_xfs_ag_resv_init(pag, type, ask);
 return 0;
}
