
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int tree ;
typedef int ranctx ;
typedef scalar_t__ const_tree ;


 unsigned char* ORIG_TYPE_NAME (scalar_t__) ;
 scalar_t__ RECORD_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int debug_tree (int ) ;
 int fprintf (int ,char*,char const*,scalar_t__) ;
 int full_shuffle (int *,unsigned long,int *) ;
 int gcc_assert (int) ;
 int name_hash (unsigned char const*) ;
 scalar_t__ performance_mode ;
 int performance_shuffle (int *,unsigned long,int *) ;
 int raninit (int *,int *) ;
 int * shuffle_seed ;
 int stderr ;

__attribute__((used)) static void shuffle(const_tree type, tree *newtree, unsigned long length)
{
 unsigned long i;
 u64 seed[4];
 ranctx prng_state;
 const unsigned char *structname;

 if (length == 0)
  return;

 gcc_assert(TREE_CODE(type) == RECORD_TYPE);

 structname = ORIG_TYPE_NAME(type);
 for (i = 0; i < 4; i++) {
  seed[i] = shuffle_seed[i];
  seed[i] ^= name_hash(structname);
 }

 raninit(&prng_state, (u64 *)&seed);

 if (performance_mode)
  performance_shuffle(newtree, length, &prng_state);
 else
  full_shuffle(newtree, length, &prng_state);
}
