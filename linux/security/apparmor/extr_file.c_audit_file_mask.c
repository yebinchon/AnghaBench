
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct audit_buffer {int dummy; } ;
typedef int str ;


 int aa_file_perm_chrs ;
 int aa_perm_mask_to_str (char*,int,int ,int ) ;
 int audit_log_string (struct audit_buffer*,char*) ;
 int map_mask_to_chr_mask (int ) ;

__attribute__((used)) static void audit_file_mask(struct audit_buffer *ab, u32 mask)
{
 char str[10];

 aa_perm_mask_to_str(str, sizeof(str), aa_file_perm_chrs,
       map_mask_to_chr_mask(mask));
 audit_log_string(ab, str);
}
