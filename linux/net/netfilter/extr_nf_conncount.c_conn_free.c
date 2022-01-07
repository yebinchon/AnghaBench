
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conncount_tuple {int node; } ;
struct nf_conncount_list {int count; int list_lock; } ;


 int conncount_conn_cachep ;
 int kmem_cache_free (int ,struct nf_conncount_tuple*) ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void conn_free(struct nf_conncount_list *list,
        struct nf_conncount_tuple *conn)
{
 lockdep_assert_held(&list->list_lock);

 list->count--;
 list_del(&conn->node);

 kmem_cache_free(conncount_conn_cachep, conn);
}
