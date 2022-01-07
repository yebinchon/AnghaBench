
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct inode {int i_mapping; int i_sb; } ;
struct dbmap_disk {int dn_maxfreebud; void* dn_agsize; void** dn_agfree; void* dn_agl2size; void* dn_agstart; void* dn_agwidth; void* dn_agheight; void* dn_aglevel; void* dn_agpref; void* dn_maxag; void* dn_maxlevel; void* dn_numag; void* dn_l2nbperpage; void* dn_nfree; void* dn_mapsize; } ;
struct bmap {int db_maxfreebud; int db_agsize; int * db_agfree; int db_agl2size; int db_agstart; int db_agwidth; int db_agheight; int db_aglevel; int db_agpref; int db_maxag; int db_maxlevel; int db_numag; int db_l2nbperpage; int db_nfree; int db_mapsize; } ;
struct TYPE_2__ {int l2nbperpage; struct bmap* bmap; } ;


 int BMAPBLKNO ;
 int EIO ;
 TYPE_1__* JFS_SBI (int ) ;
 int MAXAG ;
 int PSIZE ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int diWriteSpecial (struct inode*,int ) ;
 int filemap_write_and_wait (int ) ;
 int jfs_err (char*) ;
 struct metapage* read_metapage (struct inode*,int,int ,int ) ;
 int write_metapage (struct metapage*) ;

int dbSync(struct inode *ipbmap)
{
 struct dbmap_disk *dbmp_le;
 struct bmap *bmp = JFS_SBI(ipbmap->i_sb)->bmap;
 struct metapage *mp;
 int i;





 mp = read_metapage(ipbmap,
      BMAPBLKNO << JFS_SBI(ipbmap->i_sb)->l2nbperpage,
      PSIZE, 0);
 if (mp == ((void*)0)) {
  jfs_err("dbSync: read_metapage failed!");
  return -EIO;
 }

 dbmp_le = (struct dbmap_disk *) mp->data;
 dbmp_le->dn_mapsize = cpu_to_le64(bmp->db_mapsize);
 dbmp_le->dn_nfree = cpu_to_le64(bmp->db_nfree);
 dbmp_le->dn_l2nbperpage = cpu_to_le32(bmp->db_l2nbperpage);
 dbmp_le->dn_numag = cpu_to_le32(bmp->db_numag);
 dbmp_le->dn_maxlevel = cpu_to_le32(bmp->db_maxlevel);
 dbmp_le->dn_maxag = cpu_to_le32(bmp->db_maxag);
 dbmp_le->dn_agpref = cpu_to_le32(bmp->db_agpref);
 dbmp_le->dn_aglevel = cpu_to_le32(bmp->db_aglevel);
 dbmp_le->dn_agheight = cpu_to_le32(bmp->db_agheight);
 dbmp_le->dn_agwidth = cpu_to_le32(bmp->db_agwidth);
 dbmp_le->dn_agstart = cpu_to_le32(bmp->db_agstart);
 dbmp_le->dn_agl2size = cpu_to_le32(bmp->db_agl2size);
 for (i = 0; i < MAXAG; i++)
  dbmp_le->dn_agfree[i] = cpu_to_le64(bmp->db_agfree[i]);
 dbmp_le->dn_agsize = cpu_to_le64(bmp->db_agsize);
 dbmp_le->dn_maxfreebud = bmp->db_maxfreebud;


 write_metapage(mp);




 filemap_write_and_wait(ipbmap->i_mapping);

 diWriteSpecial(ipbmap, 0);

 return (0);
}
