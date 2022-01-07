
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsvd_count {int first_do_lblk_found; int partial; scalar_t__ lclu; scalar_t__ ndelonly; scalar_t__ last_do_lblk; scalar_t__ first_do_lblk; } ;
struct inode {int i_sb; } ;
struct extent_status {scalar_t__ es_lblk; } ;
struct ext4_sb_info {int s_cluster_ratio; scalar_t__ s_cluster_bits; } ;
typedef scalar_t__ ext4_lblk_t ;


 scalar_t__ EXT4_B2C (struct ext4_sb_info*,scalar_t__) ;
 scalar_t__ EXT4_LBLK_CFILL (struct ext4_sb_info*,scalar_t__) ;
 scalar_t__ EXT4_LBLK_COFF (struct ext4_sb_info*,scalar_t__) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int WARN_ON (int) ;
 scalar_t__ ext4_es_end (struct extent_status*) ;
 int ext4_es_is_delonly (struct extent_status*) ;

__attribute__((used)) static void count_rsvd(struct inode *inode, ext4_lblk_t lblk, long len,
         struct extent_status *es, struct rsvd_count *rc)
{
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 ext4_lblk_t i, end, nclu;

 if (!ext4_es_is_delonly(es))
  return;

 WARN_ON(len <= 0);

 if (sbi->s_cluster_ratio == 1) {
  rc->ndelonly += (int) len;
  return;
 }



 i = (lblk < es->es_lblk) ? es->es_lblk : lblk;
 end = lblk + (ext4_lblk_t) len - 1;
 end = (end > ext4_es_end(es)) ? ext4_es_end(es) : end;


 if (rc->first_do_lblk_found == 0) {
  rc->first_do_lblk = i;
  rc->first_do_lblk_found = 1;
 }


 rc->last_do_lblk = end;





 if (rc->partial && (rc->lclu != EXT4_B2C(sbi, i))) {
  rc->ndelonly++;
  rc->partial = 0;
 }





 if (EXT4_LBLK_COFF(sbi, i) != 0) {
  if (end >= EXT4_LBLK_CFILL(sbi, i)) {
   rc->ndelonly++;
   rc->partial = 0;
   i = EXT4_LBLK_CFILL(sbi, i) + 1;
  }
 }





 if ((i + sbi->s_cluster_ratio - 1) <= end) {
  nclu = (end - i + 1) >> sbi->s_cluster_bits;
  rc->ndelonly += nclu;
  i += nclu << sbi->s_cluster_bits;
 }





 if (!rc->partial && i <= end) {
  rc->partial = 1;
  rc->lclu = EXT4_B2C(sbi, i);
 }
}
