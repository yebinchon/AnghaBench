
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_inode; } ;
struct gfs2_ea_location {scalar_t__ el_ea; scalar_t__ el_prev; int el_bh; } ;


 scalar_t__ GFS2_EA2NEXT (scalar_t__) ;
 int GFS2_SB (int *) ;
 int ea_remove_unstuffed (struct gfs2_inode*,int ,scalar_t__,scalar_t__,int ) ;
 int gfs2_assert_withdraw (int ,int) ;

__attribute__((used)) static int ea_set_remove_unstuffed(struct gfs2_inode *ip,
       struct gfs2_ea_location *el)
{
 if (el->el_prev && GFS2_EA2NEXT(el->el_prev) != el->el_ea) {
  el->el_prev = GFS2_EA2NEXT(el->el_prev);
  gfs2_assert_withdraw(GFS2_SB(&ip->i_inode),
         GFS2_EA2NEXT(el->el_prev) == el->el_ea);
 }

 return ea_remove_unstuffed(ip, el->el_bh, el->el_ea, el->el_prev, 0);
}
