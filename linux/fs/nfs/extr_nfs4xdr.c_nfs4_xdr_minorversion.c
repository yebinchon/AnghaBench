
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nfs4_session {TYPE_4__* clp; } ;
struct nfs4_sequence_args {TYPE_2__* sa_slot; } ;
struct TYPE_8__ {TYPE_3__* cl_mvops; } ;
struct TYPE_7__ {int minor_version; } ;
struct TYPE_6__ {TYPE_1__* table; } ;
struct TYPE_5__ {struct nfs4_session* session; } ;



__attribute__((used)) static u32 nfs4_xdr_minorversion(const struct nfs4_sequence_args *args)
{





 return 0;
}
