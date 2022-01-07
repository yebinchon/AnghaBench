
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {int flags; int node; int scheduled; int entry; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int WORKER_PREP ;
 struct worker* kzalloc_node (int,int ,int) ;

__attribute__((used)) static struct worker *alloc_worker(int node)
{
 struct worker *worker;

 worker = kzalloc_node(sizeof(*worker), GFP_KERNEL, node);
 if (worker) {
  INIT_LIST_HEAD(&worker->entry);
  INIT_LIST_HEAD(&worker->scheduled);
  INIT_LIST_HEAD(&worker->node);

  worker->flags = WORKER_PREP;
 }
 return worker;
}
