
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct nls_table {int dummy; } ;
struct iso_directory_record {int* name_len; scalar_t__ name; } ;
struct inode {int i_sb; } ;
typedef int __be16 ;
struct TYPE_2__ {unsigned char s_utf8; struct nls_table* s_nls_iocharset; } ;


 TYPE_1__* ISOFS_SB (int ) ;
 int PAGE_SIZE ;
 int UTF16_BIG_ENDIAN ;
 unsigned char uni16_to_x8 (unsigned char*,int *,int,struct nls_table*) ;
 unsigned char utf16s_to_utf8s (int const*,int,int ,unsigned char*,int ) ;

int
get_joliet_filename(struct iso_directory_record * de, unsigned char *outname, struct inode * inode)
{
 unsigned char utf8;
 struct nls_table *nls;
 unsigned char len = 0;

 utf8 = ISOFS_SB(inode->i_sb)->s_utf8;
 nls = ISOFS_SB(inode->i_sb)->s_nls_iocharset;

 if (utf8) {
  len = utf16s_to_utf8s((const wchar_t *) de->name,
    de->name_len[0] >> 1, UTF16_BIG_ENDIAN,
    outname, PAGE_SIZE);
 } else {
  len = uni16_to_x8(outname, (__be16 *) de->name,
    de->name_len[0] >> 1, nls);
 }
 if ((len > 2) && (outname[len-2] == ';') && (outname[len-1] == '1'))
  len -= 2;





 while (len >= 2 && (outname[len-1] == '.'))
  len--;

 return len;
}
