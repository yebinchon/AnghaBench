
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts_kmp {unsigned int pattern_len; int * pattern; scalar_t__ prefix_tbl; } ;
struct ts_config {int flags; } ;
typedef int gfp_t ;


 scalar_t__ IS_ERR (struct ts_config*) ;
 int TS_IGNORECASE ;
 struct ts_config* alloc_ts_config (size_t,int ) ;
 int compute_prefix_tbl (void const*,unsigned int,scalar_t__,int) ;
 int memcpy (int *,void const*,unsigned int) ;
 int toupper (int ) ;
 struct ts_kmp* ts_config_priv (struct ts_config*) ;

__attribute__((used)) static struct ts_config *kmp_init(const void *pattern, unsigned int len,
      gfp_t gfp_mask, int flags)
{
 struct ts_config *conf;
 struct ts_kmp *kmp;
 int i;
 unsigned int prefix_tbl_len = len * sizeof(unsigned int);
 size_t priv_size = sizeof(*kmp) + len + prefix_tbl_len;

 conf = alloc_ts_config(priv_size, gfp_mask);
 if (IS_ERR(conf))
  return conf;

 conf->flags = flags;
 kmp = ts_config_priv(conf);
 kmp->pattern_len = len;
 compute_prefix_tbl(pattern, len, kmp->prefix_tbl, flags);
 kmp->pattern = (u8 *) kmp->prefix_tbl + prefix_tbl_len;
 if (flags & TS_IGNORECASE)
  for (i = 0; i < len; i++)
   kmp->pattern[i] = toupper(((u8 *)pattern)[i]);
 else
  memcpy(kmp->pattern, pattern, len);

 return conf;
}
