
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_args {int ar_spectator; int ar_localflocks; int ar_meta; size_t ar_commit; size_t ar_statfs_quantum; size_t ar_quota_quantum; int ar_statfs_percent; int ar_loccookie; int ar_rgrplvb; int ar_nobarrier; int ar_errors; int ar_debug; int ar_discard; int ar_data; int ar_suiddir; int ar_quota; int ar_posix_acl; int ar_hostdata; int ar_locktable; int ar_lockproto; } ;
struct fs_parse_result {size_t int_32; int boolean; int uint_32; int negated; } ;
struct fs_parameter {int key; int string; } ;
struct fs_context {struct gfs2_args* fs_private; } ;


 int GFS2_ERRORS_PANIC ;
 int GFS2_LOCKNAME_LEN ;
 int GFS2_QUOTA_OFF ;
 int GFS2_QUOTA_ON ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 int gfs2_fs_parameters ;
 int invalf (struct fs_context*,char*,...) ;
 int * opt_quota_values ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static int gfs2_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct gfs2_args *args = fc->fs_private;
 struct fs_parse_result result;
 int o;

 o = fs_parse(fc, &gfs2_fs_parameters, param, &result);
 if (o < 0)
  return o;

 switch (o) {
 case 138:
  strlcpy(args->ar_lockproto, param->string, GFS2_LOCKNAME_LEN);
  break;
 case 137:
  strlcpy(args->ar_locktable, param->string, GFS2_LOCKNAME_LEN);
  break;
 case 143:
  strlcpy(args->ar_hostdata, param->string, GFS2_LOCKNAME_LEN);
  break;
 case 132:
  args->ar_spectator = 1;
  break;
 case 142:

  break;
 case 140:
  args->ar_localflocks = 1;
  break;
 case 141:

  break;
 case 146:
  if (result.boolean && args->ar_errors == GFS2_ERRORS_PANIC)
   return invalf(fc, "gfs2: -o debug and -o errors=panic are mutually exclusive");
  args->ar_debug = result.boolean;
  break;
 case 128:

  break;
 case 150:
  args->ar_posix_acl = result.boolean;
  break;
 case 135:




  if (result.negated)
   args->ar_quota = GFS2_QUOTA_OFF;
  else if (result.int_32 > 0)
   args->ar_quota = opt_quota_values[result.int_32];
  else
   args->ar_quota = GFS2_QUOTA_ON;
  break;
 case 129:
  args->ar_suiddir = result.boolean;
  break;
 case 147:

  args->ar_data = result.uint_32;
  break;
 case 136:
  args->ar_meta = 1;
  break;
 case 145:
  args->ar_discard = result.boolean;
  break;
 case 148:
  if (result.int_32 <= 0)
   return invalf(fc, "gfs2: commit mount option requires a positive numeric argument");
  args->ar_commit = result.int_32;
  break;
 case 130:
  if (result.int_32 < 0)
   return invalf(fc, "gfs2: statfs_quantum mount option requires a non-negative numeric argument");
  args->ar_statfs_quantum = result.int_32;
  break;
 case 134:
  if (result.int_32 <= 0)
   return invalf(fc, "gfs2: quota_quantum mount option requires a positive numeric argument");
  args->ar_quota_quantum = result.int_32;
  break;
 case 131:
  if (result.int_32 < 0 || result.int_32 > 100)
   return invalf(fc, "gfs2: statfs_percent mount option requires a numeric argument between 0 and 100");
  args->ar_statfs_percent = result.int_32;
  break;
 case 144:
  if (args->ar_debug && result.uint_32 == GFS2_ERRORS_PANIC)
   return invalf(fc, "gfs2: -o debug and -o errors=panic are mutually exclusive");
  args->ar_errors = result.uint_32;
  break;
 case 149:
  args->ar_nobarrier = result.boolean;
  break;
 case 133:
  args->ar_rgrplvb = result.boolean;
  break;
 case 139:
  args->ar_loccookie = result.boolean;
  break;
 default:
  return invalf(fc, "gfs2: invalid mount option: %s", param->key);
 }
 return 0;
}
