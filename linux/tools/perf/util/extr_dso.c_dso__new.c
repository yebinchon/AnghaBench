
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int open_entry; int status; int cache; } ;
struct dso {int is_64_bit; int has_srcline; int a2l_fails; int refcnt; int lock; TYPE_1__ data; int node; int * root; int rb_node; int comp; int needs_swap; int kernel; scalar_t__ has_build_id; scalar_t__ sorted_by_name; scalar_t__ rel; scalar_t__ loaded; void* binary_type; void* symtab_type; void* srclines; void* inlined_nodes; void* symbol_names; void* symbols; int name; } ;


 int COMP_ID__NONE ;
 void* DSO_BINARY_TYPE__NOT_FOUND ;
 int DSO_DATA_STATUS_UNKNOWN ;
 int DSO_SWAP__UNSET ;
 int DSO_TYPE_USER ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int RB_ROOT ;
 void* RB_ROOT_CACHED ;
 struct dso* calloc (int,scalar_t__) ;
 int dso__set_long_name (struct dso*,int ,int) ;
 int dso__set_short_name (struct dso*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;
 int refcount_set (int *,int) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

struct dso *dso__new(const char *name)
{
 struct dso *dso = calloc(1, sizeof(*dso) + strlen(name) + 1);

 if (dso != ((void*)0)) {
  strcpy(dso->name, name);
  dso__set_long_name(dso, dso->name, 0);
  dso__set_short_name(dso, dso->name, 0);
  dso->symbols = dso->symbol_names = RB_ROOT_CACHED;
  dso->data.cache = RB_ROOT;
  dso->inlined_nodes = RB_ROOT_CACHED;
  dso->srclines = RB_ROOT_CACHED;
  dso->data.fd = -1;
  dso->data.status = DSO_DATA_STATUS_UNKNOWN;
  dso->symtab_type = DSO_BINARY_TYPE__NOT_FOUND;
  dso->binary_type = DSO_BINARY_TYPE__NOT_FOUND;
  dso->is_64_bit = (sizeof(void *) == 8);
  dso->loaded = 0;
  dso->rel = 0;
  dso->sorted_by_name = 0;
  dso->has_build_id = 0;
  dso->has_srcline = 1;
  dso->a2l_fails = 1;
  dso->kernel = DSO_TYPE_USER;
  dso->needs_swap = DSO_SWAP__UNSET;
  dso->comp = COMP_ID__NONE;
  RB_CLEAR_NODE(&dso->rb_node);
  dso->root = ((void*)0);
  INIT_LIST_HEAD(&dso->node);
  INIT_LIST_HEAD(&dso->data.open_entry);
  pthread_mutex_init(&dso->lock, ((void*)0));
  refcount_set(&dso->refcnt, 1);
 }

 return dso;
}
