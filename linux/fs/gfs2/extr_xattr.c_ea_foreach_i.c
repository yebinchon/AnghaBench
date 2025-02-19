
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_inode; } ;
struct gfs2_ea_header {int ea_type; } ;
struct buffer_head {char* b_data; int b_size; } ;
typedef int (* ea_call_t ) (struct gfs2_inode*,struct buffer_head*,struct gfs2_ea_header*,struct gfs2_ea_header*,void*) ;


 int EIO ;
 struct gfs2_ea_header* GFS2_EA2NEXT (struct gfs2_ea_header*) ;
 int GFS2_EATYPE_VALID (int ) ;
 struct gfs2_ea_header* GFS2_EA_BH2FIRST (struct buffer_head*) ;
 scalar_t__ GFS2_EA_IS_LAST (struct gfs2_ea_header*) ;
 int GFS2_EA_REC_LEN (struct gfs2_ea_header*) ;
 int GFS2_METATYPE_EA ;
 int GFS2_SB (int *) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 scalar_t__ gfs2_metatype_check (int ,struct buffer_head*,int ) ;

__attribute__((used)) static int ea_foreach_i(struct gfs2_inode *ip, struct buffer_head *bh,
   ea_call_t ea_call, void *data)
{
 struct gfs2_ea_header *ea, *prev = ((void*)0);
 int error = 0;

 if (gfs2_metatype_check(GFS2_SB(&ip->i_inode), bh, GFS2_METATYPE_EA))
  return -EIO;

 for (ea = GFS2_EA_BH2FIRST(bh);; prev = ea, ea = GFS2_EA2NEXT(ea)) {
  if (!GFS2_EA_REC_LEN(ea))
   goto fail;
  if (!(bh->b_data <= (char *)ea && (char *)GFS2_EA2NEXT(ea) <=
        bh->b_data + bh->b_size))
   goto fail;
  if (!GFS2_EATYPE_VALID(ea->ea_type))
   goto fail;

  error = ea_call(ip, bh, ea, prev, data);
  if (error)
   return error;

  if (GFS2_EA_IS_LAST(ea)) {
   if ((char *)GFS2_EA2NEXT(ea) !=
       bh->b_data + bh->b_size)
    goto fail;
   break;
  }
 }

 return error;

fail:
 gfs2_consist_inode(ip);
 return -EIO;
}
