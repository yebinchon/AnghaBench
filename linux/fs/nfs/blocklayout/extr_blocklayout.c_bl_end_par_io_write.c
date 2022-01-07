
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tk_work; } ;
struct TYPE_6__ {TYPE_2__ u; int tk_status; } ;
struct TYPE_4__ {int committed; } ;
struct nfs_pgio_header {TYPE_3__ task; TYPE_1__ verf; int pnfs_error; } ;


 int INIT_WORK (int *,int ) ;
 int NFS_FILE_SYNC ;
 int bl_write_cleanup ;
 int schedule_work (int *) ;

__attribute__((used)) static void bl_end_par_io_write(void *data)
{
 struct nfs_pgio_header *hdr = data;

 hdr->task.tk_status = hdr->pnfs_error;
 hdr->verf.committed = NFS_FILE_SYNC;
 INIT_WORK(&hdr->task.u.tk_work, bl_write_cleanup);
 schedule_work(&hdr->task.u.tk_work);
}
