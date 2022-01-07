
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gfs2_inode {int i_inode; } ;
struct gfs2_ea_header {scalar_t__ ea_type; } ;
struct ea_set {int ea_split; TYPE_2__* es_er; struct gfs2_ea_header* es_ea; struct buffer_head* es_bh; } ;
struct buffer_head {int dummy; } ;
struct TYPE_5__ {int er_data_len; int er_name_len; } ;
struct TYPE_4__ {int sd_jbsize; } ;


 int DIV_ROUND_UP (int ,int ) ;
 scalar_t__ GFS2_EATYPE_UNUSED ;
 int GFS2_EA_IS_STUFFED (struct gfs2_ea_header*) ;
 unsigned int GFS2_EA_REC_LEN (struct gfs2_ea_header*) ;
 unsigned int GFS2_EA_SIZE (struct gfs2_ea_header*) ;
 TYPE_1__* GFS2_SB (int *) ;
 int ea_alloc_skeleton (struct gfs2_inode*,TYPE_2__*,unsigned int,int ,struct ea_set*) ;
 int ea_calc_size (TYPE_1__*,int ,int ,unsigned int*) ;
 int ea_remove_unstuffed (struct gfs2_inode*,struct buffer_head*,struct gfs2_ea_header*,struct gfs2_ea_header*,int) ;
 int ea_set_simple_alloc ;
 int ea_set_simple_noalloc (struct gfs2_inode*,struct buffer_head*,struct gfs2_ea_header*,struct ea_set*) ;

__attribute__((used)) static int ea_set_simple(struct gfs2_inode *ip, struct buffer_head *bh,
    struct gfs2_ea_header *ea, struct gfs2_ea_header *prev,
    void *private)
{
 struct ea_set *es = private;
 unsigned int size;
 int stuffed;
 int error;

 stuffed = ea_calc_size(GFS2_SB(&ip->i_inode), es->es_er->er_name_len,
          es->es_er->er_data_len, &size);

 if (ea->ea_type == GFS2_EATYPE_UNUSED) {
  if (GFS2_EA_REC_LEN(ea) < size)
   return 0;
  if (!GFS2_EA_IS_STUFFED(ea)) {
   error = ea_remove_unstuffed(ip, bh, ea, prev, 1);
   if (error)
    return error;
  }
  es->ea_split = 0;
 } else if (GFS2_EA_REC_LEN(ea) - GFS2_EA_SIZE(ea) >= size)
  es->ea_split = 1;
 else
  return 0;

 if (stuffed) {
  error = ea_set_simple_noalloc(ip, bh, ea, es);
  if (error)
   return error;
 } else {
  unsigned int blks;

  es->es_bh = bh;
  es->es_ea = ea;
  blks = 2 + DIV_ROUND_UP(es->es_er->er_data_len,
     GFS2_SB(&ip->i_inode)->sd_jbsize);

  error = ea_alloc_skeleton(ip, es->es_er, blks,
       ea_set_simple_alloc, es);
  if (error)
   return error;
 }

 return 1;
}
