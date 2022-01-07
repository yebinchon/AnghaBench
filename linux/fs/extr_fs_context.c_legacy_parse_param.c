
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct legacy_fs_context {unsigned int data_size; scalar_t__ param_type; char* legacy_data; } ;
struct fs_parameter {int type; int size; int * string; int * key; } ;
struct fs_context {int * source; struct legacy_fs_context* fs_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ LEGACY_FS_INDIVIDUAL_PARAMS ;
 scalar_t__ LEGACY_FS_MONOLITHIC_PARAMS ;
 int PAGE_SIZE ;


 int invalf (struct fs_context*,char*,...) ;
 char* kmalloc (int,int ) ;
 scalar_t__ memchr (int *,char,int) ;
 int memcpy (char*,int *,size_t) ;
 scalar_t__ strchr (int *,char) ;
 scalar_t__ strcmp (int *,char*) ;
 size_t strlen (int *) ;

__attribute__((used)) static int legacy_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct legacy_fs_context *ctx = fc->fs_private;
 unsigned int size = ctx->data_size;
 size_t len = 0;

 if (strcmp(param->key, "source") == 0) {
  if (param->type != 128)
   return invalf(fc, "VFS: Legacy: Non-string source");
  if (fc->source)
   return invalf(fc, "VFS: Legacy: Multiple sources");
  fc->source = param->string;
  param->string = ((void*)0);
  return 0;
 }

 if (ctx->param_type == LEGACY_FS_MONOLITHIC_PARAMS)
  return invalf(fc, "VFS: Legacy: Can't mix monolithic and individual options");

 switch (param->type) {
 case 128:
  len = 1 + param->size;

 case 129:
  len += strlen(param->key);
  break;
 default:
  return invalf(fc, "VFS: Legacy: Parameter type for '%s' not supported",
         param->key);
 }

 if (len > PAGE_SIZE - 2 - size)
  return invalf(fc, "VFS: Legacy: Cumulative options too large");
 if (strchr(param->key, ',') ||
     (param->type == 128 &&
      memchr(param->string, ',', param->size)))
  return invalf(fc, "VFS: Legacy: Option '%s' contained comma",
         param->key);
 if (!ctx->legacy_data) {
  ctx->legacy_data = kmalloc(PAGE_SIZE, GFP_KERNEL);
  if (!ctx->legacy_data)
   return -ENOMEM;
 }

 ctx->legacy_data[size++] = ',';
 len = strlen(param->key);
 memcpy(ctx->legacy_data + size, param->key, len);
 size += len;
 if (param->type == 128) {
  ctx->legacy_data[size++] = '=';
  memcpy(ctx->legacy_data + size, param->string, param->size);
  size += param->size;
 }
 ctx->legacy_data[size] = '\0';
 ctx->data_size = size;
 ctx->param_type = LEGACY_FS_INDIVIDUAL_PARAMS;
 return 0;
}
