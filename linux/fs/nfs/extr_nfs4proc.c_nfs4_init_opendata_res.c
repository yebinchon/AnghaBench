
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int access; int server; int seqid; } ;
struct TYPE_7__ {int access_request; int server; int seqid; int f_label; int * f_attr; } ;
struct TYPE_6__ {int seqid; } ;
struct TYPE_5__ {int seqid; } ;
struct nfs4_opendata {int group_name; int owner_name; int f_attr; TYPE_4__ o_arg; TYPE_3__ o_res; TYPE_2__ c_arg; TYPE_1__ c_res; int f_label; } ;


 int nfs_fattr_init (int *) ;
 int nfs_fattr_init_names (int *,int *,int *) ;

__attribute__((used)) static void nfs4_init_opendata_res(struct nfs4_opendata *p)
{
 p->o_res.f_attr = &p->f_attr;
 p->o_res.f_label = p->f_label;
 p->o_res.seqid = p->o_arg.seqid;
 p->c_res.seqid = p->c_arg.seqid;
 p->o_res.server = p->o_arg.server;
 p->o_res.access_request = p->o_arg.access;
 nfs_fattr_init(&p->f_attr);
 nfs_fattr_init_names(&p->f_attr, &p->owner_name, &p->group_name);
}
