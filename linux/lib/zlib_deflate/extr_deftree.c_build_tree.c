
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ ush ;
typedef scalar_t__ uch ;
struct TYPE_15__ {int max_code; TYPE_1__* stat_desc; TYPE_4__* dyn_tree; } ;
typedef TYPE_2__ tree_desc ;
struct TYPE_16__ {size_t heap_len; size_t heap_max; int* heap; int bl_count; TYPE_4__* bl_tree; scalar_t__* depth; int static_len; int opt_len; } ;
typedef TYPE_3__ deflate_state ;
struct TYPE_17__ {int Freq; scalar_t__ Dad; scalar_t__ Len; } ;
typedef TYPE_4__ ct_data ;
struct TYPE_14__ {int elems; TYPE_4__* static_tree; } ;


 size_t HEAP_SIZE ;
 size_t SMALLEST ;
 int fprintf (int ,char*,int,int,int,int,int,int) ;
 int gen_bitlen (TYPE_3__*,TYPE_2__*) ;
 int gen_codes (TYPE_4__*,int,int ) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int pqdownheap (TYPE_3__*,TYPE_4__*,size_t) ;
 int pqremove (TYPE_3__*,TYPE_4__*,int) ;
 int stderr ;

__attribute__((used)) static void build_tree(
 deflate_state *s,
 tree_desc *desc
)
{
    ct_data *tree = desc->dyn_tree;
    const ct_data *stree = desc->stat_desc->static_tree;
    int elems = desc->stat_desc->elems;
    int n, m;
    int max_code = -1;
    int node;





    s->heap_len = 0, s->heap_max = HEAP_SIZE;

    for (n = 0; n < elems; n++) {
        if (tree[n].Freq != 0) {
            s->heap[++(s->heap_len)] = max_code = n;
            s->depth[n] = 0;
        } else {
            tree[n].Len = 0;
        }
    }






    while (s->heap_len < 2) {
        node = s->heap[++(s->heap_len)] = (max_code < 2 ? ++max_code : 0);
        tree[node].Freq = 1;
        s->depth[node] = 0;
        s->opt_len--; if (stree) s->static_len -= stree[node].Len;

    }
    desc->max_code = max_code;




    for (n = s->heap_len/2; n >= 1; n--) pqdownheap(s, tree, n);




    node = elems;
    do {
        pqremove(s, tree, n);
        m = s->heap[SMALLEST];

        s->heap[--(s->heap_max)] = n;
        s->heap[--(s->heap_max)] = m;


        tree[node].Freq = tree[n].Freq + tree[m].Freq;
        s->depth[node] = (uch) (max(s->depth[n], s->depth[m]) + 1);
        tree[n].Dad = tree[m].Dad = (ush)node;







        s->heap[SMALLEST] = node++;
        pqdownheap(s, tree, SMALLEST);

    } while (s->heap_len >= 2);

    s->heap[--(s->heap_max)] = s->heap[SMALLEST];




    gen_bitlen(s, (tree_desc *)desc);


    gen_codes ((ct_data *)tree, max_code, s->bl_count);
}
