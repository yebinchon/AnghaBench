
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int ** CFR; int ** CFL; int ** FR; int ** FL; int ** R; int ** L; int tb_path; } ;


 int MAX_HEIGHT ;
 int brelse (int *) ;
 int pathrelse (int ) ;

__attribute__((used)) static void free_buffers_in_tb(struct tree_balance *tb)
{
 int i;

 pathrelse(tb->tb_path);

 for (i = 0; i < MAX_HEIGHT; i++) {
  brelse(tb->L[i]);
  brelse(tb->R[i]);
  brelse(tb->FL[i]);
  brelse(tb->FR[i]);
  brelse(tb->CFL[i]);
  brelse(tb->CFR[i]);

  tb->L[i] = ((void*)0);
  tb->R[i] = ((void*)0);
  tb->FL[i] = ((void*)0);
  tb->FR[i] = ((void*)0);
  tb->CFL[i] = ((void*)0);
  tb->CFR[i] = ((void*)0);
 }
}
