
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_inode {int i_inode; } ;
struct gfs2_ea_request {int er_type; char const* er_name; size_t er_data_len; void* er_data; int er_name_len; } ;
struct TYPE_2__ {unsigned int sd_jbsize; } ;


 scalar_t__ DIV_ROUND_UP (size_t,unsigned int) ;
 unsigned int GFS2_EAREQ_SIZE_STUFFED (struct gfs2_ea_request*) ;
 TYPE_1__* GFS2_SB (int *) ;
 int ea_alloc_skeleton (struct gfs2_inode*,struct gfs2_ea_request*,unsigned int,int ,int *) ;
 int ea_init_i ;
 int strlen (char const*) ;

__attribute__((used)) static int ea_init(struct gfs2_inode *ip, int type, const char *name,
     const void *data, size_t size)
{
 struct gfs2_ea_request er;
 unsigned int jbsize = GFS2_SB(&ip->i_inode)->sd_jbsize;
 unsigned int blks = 1;

 er.er_type = type;
 er.er_name = name;
 er.er_name_len = strlen(name);
 er.er_data = (void *)data;
 er.er_data_len = size;

 if (GFS2_EAREQ_SIZE_STUFFED(&er) > jbsize)
  blks += DIV_ROUND_UP(er.er_data_len, jbsize);

 return ea_alloc_skeleton(ip, &er, blks, ea_init_i, ((void*)0));
}
