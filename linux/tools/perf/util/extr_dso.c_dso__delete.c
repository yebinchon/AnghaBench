
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int short_name_allocated; int long_name_allocated; char* symsrc_filename; int lock; int nsinfo; int auxtrace_cache; int long_name; int short_name; int symbols; int srclines; int inlined_nodes; int rb_node; } ;


 int RB_EMPTY_NODE (int *) ;
 int auxtrace_cache__free (int ) ;
 int dso__data_close (struct dso*) ;
 int dso__free_a2l (struct dso*) ;
 int dso_cache__free (struct dso*) ;
 int free (struct dso*) ;
 int inlines__tree_delete (int *) ;
 int nsinfo__zput (int ) ;
 int pr_err (char*,int ) ;
 int pthread_mutex_destroy (int *) ;
 int srcline__tree_delete (int *) ;
 int symbols__delete (int *) ;
 int zfree (char**) ;

void dso__delete(struct dso *dso)
{
 if (!RB_EMPTY_NODE(&dso->rb_node))
  pr_err("DSO %s is still in rbtree when being deleted!\n",
         dso->long_name);


 inlines__tree_delete(&dso->inlined_nodes);
 srcline__tree_delete(&dso->srclines);
 symbols__delete(&dso->symbols);

 if (dso->short_name_allocated) {
  zfree((char **)&dso->short_name);
  dso->short_name_allocated = 0;
 }

 if (dso->long_name_allocated) {
  zfree((char **)&dso->long_name);
  dso->long_name_allocated = 0;
 }

 dso__data_close(dso);
 auxtrace_cache__free(dso->auxtrace_cache);
 dso_cache__free(dso);
 dso__free_a2l(dso);
 zfree(&dso->symsrc_filename);
 nsinfo__zput(dso->nsinfo);
 pthread_mutex_destroy(&dso->lock);
 free(dso);
}
