
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tk_work; } ;
struct TYPE_4__ {TYPE_1__ u; int tk_status; } ;
struct nfs_pgio_header {TYPE_2__ task; int pnfs_error; } ;


 int INIT_WORK (int *,int ) ;
 int bl_read_cleanup ;
 int schedule_work (int *) ;

__attribute__((used)) static void
bl_end_par_io_read(void *data)
{
 struct nfs_pgio_header *hdr = data;

 hdr->task.tk_status = hdr->pnfs_error;
 INIT_WORK(&hdr->task.u.tk_work, bl_read_cleanup);
 schedule_work(&hdr->task.u.tk_work);
}
