
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conncount_data {int gc_work; int pending_trees; } ;


 int schedule_work (int *) ;
 int set_bit (int,int ) ;

__attribute__((used)) static void schedule_gc_worker(struct nf_conncount_data *data, int tree)
{
 set_bit(tree, data->pending_trees);
 schedule_work(&data->gc_work);
}
