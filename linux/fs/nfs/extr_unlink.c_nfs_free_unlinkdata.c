
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nfs_unlinkdata* name; } ;
struct TYPE_4__ {TYPE_1__ name; } ;
struct nfs_unlinkdata {TYPE_2__ args; int cred; } ;


 int kfree (struct nfs_unlinkdata*) ;
 int put_cred (int ) ;

__attribute__((used)) static void
nfs_free_unlinkdata(struct nfs_unlinkdata *data)
{
 put_cred(data->cred);
 kfree(data->args.name.name);
 kfree(data);
}
