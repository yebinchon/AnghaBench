
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;
struct tree_balance {int* lkey; int* rkey; struct buffer_head** CFR; struct buffer_head** FR; struct buffer_head** CFL; struct buffer_head** FL; struct treepath* tb_path; } ;
struct buffer_head {int dummy; } ;


 int B_IS_IN_TREE (struct buffer_head*) ;
 int B_NR_ITEMS (int ) ;
 int CARRY_ON ;
 int FIRST_PATH_ELEMENT_OFFSET ;
 int LEFT_PARENTS ;
 int PATH_H_PATH_OFFSET (struct treepath*,int) ;
 int PATH_H_PBUFFER (struct treepath*,int) ;
 struct buffer_head* PATH_OFFSET_PBUFFER (struct treepath*,int) ;
 int PATH_OFFSET_POSITION (struct treepath*,int) ;
 int RFALSE (int,char*,struct buffer_head*,struct buffer_head*) ;
 int RIGHT_PARENTS ;
 int brelse (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 int get_far_parent (struct tree_balance*,int,struct buffer_head**,struct buffer_head**,int ) ;

__attribute__((used)) static int get_parents(struct tree_balance *tb, int h)
{
 struct treepath *path = tb->tb_path;
 int position,
     ret,
     path_offset = PATH_H_PATH_OFFSET(tb->tb_path, h);
 struct buffer_head *curf, *curcf;


 if (path_offset <= FIRST_PATH_ELEMENT_OFFSET) {





  brelse(tb->FL[h]);
  brelse(tb->CFL[h]);
  brelse(tb->FR[h]);
  brelse(tb->CFR[h]);
  tb->FL[h] = ((void*)0);
  tb->CFL[h] = ((void*)0);
  tb->FR[h] = ((void*)0);
  tb->CFR[h] = ((void*)0);
  return CARRY_ON;
 }


 position = PATH_OFFSET_POSITION(path, path_offset - 1);
 if (position) {

  curf = PATH_OFFSET_PBUFFER(path, path_offset - 1);
  curcf = PATH_OFFSET_PBUFFER(path, path_offset - 1);
  get_bh(curf);
  get_bh(curf);
  tb->lkey[h] = position - 1;
 } else {
  if ((ret = get_far_parent(tb, h + 1, &curf,
        &curcf,
        LEFT_PARENTS)) != CARRY_ON)
   return ret;
 }

 brelse(tb->FL[h]);
 tb->FL[h] = curf;
 brelse(tb->CFL[h]);
 tb->CFL[h] = curcf;

 RFALSE((curf && !B_IS_IN_TREE(curf)) ||
        (curcf && !B_IS_IN_TREE(curcf)),
        "PAP-8195: FL (%b) or CFL (%b) is invalid", curf, curcf);




 if (position == B_NR_ITEMS(PATH_H_PBUFFER(path, h + 1))) {






  if ((ret =
       get_far_parent(tb, h + 1, &curf, &curcf,
        RIGHT_PARENTS)) != CARRY_ON)
   return ret;
 } else {

  curf = PATH_OFFSET_PBUFFER(path, path_offset - 1);
  curcf = PATH_OFFSET_PBUFFER(path, path_offset - 1);
  get_bh(curf);
  get_bh(curf);
  tb->rkey[h] = position;
 }

 brelse(tb->FR[h]);

 tb->FR[h] = curf;

 brelse(tb->CFR[h]);

 tb->CFR[h] = curcf;

 RFALSE((curf && !B_IS_IN_TREE(curf)) ||
        (curcf && !B_IS_IN_TREE(curcf)),
        "PAP-8205: FR (%b) or CFR (%b) is invalid", curf, curcf);

 return CARRY_ON;
}
