
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_readdir_response_s {int dummy; } ;
struct orangefs_khandle {int dummy; } ;
struct orangefs_dir_part {int len; } ;
struct dir_context {int pos; } ;
typedef int loff_t ;
typedef int __u32 ;


 int BUG_ON (int) ;
 int DT_UNKNOWN ;
 int PART_MASK ;
 int dir_emit (struct dir_context*,char*,int,int ,int ) ;
 int orangefs_khandle_to_ino (struct orangefs_khandle*) ;

__attribute__((used)) static int fill_from_part(struct orangefs_dir_part *part,
    struct dir_context *ctx)
{
 const int offset = sizeof(struct orangefs_readdir_response_s);
 struct orangefs_khandle *khandle;
 __u32 *len, padlen;
 loff_t i;
 char *s;
 i = ctx->pos & ~PART_MASK;


 if (i > part->len)
  return 1;





 if (i % 8)
  i = i + (8 - i%8)%8;

 while (i < part->len) {
  if (part->len < i + sizeof *len)
   break;
  len = (void *)part + offset + i;




  padlen = (sizeof *len + *len + 1) +
      (8 - (sizeof *len + *len + 1)%8)%8;
  if (part->len < i + padlen + sizeof *khandle)
   goto next;
  s = (void *)part + offset + i + sizeof *len;
  if (s[*len] != 0)
   goto next;
  khandle = (void *)part + offset + i + padlen;
  if (!dir_emit(ctx, s, *len,
      orangefs_khandle_to_ino(khandle),
      DT_UNKNOWN))
   return 0;
  i += padlen + sizeof *khandle;
  i = i + (8 - i%8)%8;
  BUG_ON(i > part->len);
  ctx->pos = (ctx->pos & PART_MASK) | i;
  continue;
next:
  i += 8;
 }
 return 1;
}
