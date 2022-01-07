
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int ranctx ;


 unsigned long ranval (int *) ;

__attribute__((used)) static void full_shuffle(tree *newtree, unsigned long length, ranctx *prng_state)
{
 unsigned long i, randnum;

 for (i = length - 1; i > 0; i--) {
  tree tmp;
  randnum = ranval(prng_state) % (i + 1);
  tmp = newtree[i];
  newtree[i] = newtree[randnum];
  newtree[randnum] = tmp;
 }
}
