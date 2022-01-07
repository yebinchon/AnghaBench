
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pageio_descriptor {int pg_error; TYPE_1__* pg_completion_ops; } ;
struct nfs_page {int dummy; } ;
struct TYPE_2__ {int (* error_cleanup ) (int *,int ) ;} ;


 int LIST_HEAD (int ) ;
 int head ;
 int nfs_list_move_request (struct nfs_page*,int *) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void
nfs_pageio_cleanup_request(struct nfs_pageio_descriptor *desc,
  struct nfs_page *req)
{
 LIST_HEAD(head);

 nfs_list_move_request(req, &head);
 desc->pg_completion_ops->error_cleanup(&head, desc->pg_error);
}
