
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct aa_label {int size; int * vec; } ;
typedef int gfp_t ;
struct TYPE_14__ {TYPE_1__* unconfined; } ;
struct TYPE_13__ {scalar_t__ ns; struct aa_label label; } ;
struct TYPE_12__ {struct aa_label label; } ;


 int AA_BUG (int) ;
 int DEFINE_VEC (int ,TYPE_2__**) ;
 int EINVAL ;
 int ENOENT ;
 struct aa_label* ERR_PTR (int) ;
 int VEC_FLAG_TERMINATE ;
 struct aa_label* aa_get_label (struct aa_label*) ;
 TYPE_2__* aa_get_profile (int ) ;
 char* aa_label_strn_split (char const*,int) ;
 struct aa_label* aa_vec_find_or_create_label (TYPE_2__**,int,int ) ;
 scalar_t__ aa_vec_unique (TYPE_2__**,int,int ) ;
 TYPE_2__* fqlookupn_profile (struct aa_label*,struct aa_label*,char const*,int) ;
 int label_count_strn_entries (char const*,int) ;
 scalar_t__ labels_ns (struct aa_label*) ;
 int profile ;
 TYPE_6__* root_ns ;
 char* skipn_spaces (char const*,size_t) ;
 TYPE_2__** vec ;
 int vec_cleanup (int ,TYPE_2__**,int) ;
 struct aa_label* vec_find (TYPE_2__**,int) ;
 int vec_setup (int ,TYPE_2__**,int,int ) ;

struct aa_label *aa_label_strn_parse(struct aa_label *base, const char *str,
         size_t n, gfp_t gfp, bool create,
         bool force_stack)
{
 DEFINE_VEC(profile, vec);
 struct aa_label *label, *currbase = base;
 int i, len, stack = 0, error;
 const char *end = str + n;
 const char *split;

 AA_BUG(!base);
 AA_BUG(!str);

 str = skipn_spaces(str, n);
 if (str == ((void*)0) || (*str == '=' && base != &root_ns->unconfined->label))
  return ERR_PTR(-EINVAL);

 len = label_count_strn_entries(str, end - str);
 if (*str == '&' || force_stack) {

  stack = base->size;
  len += stack;
  if (*str == '&')
   str++;
 }

 error = vec_setup(profile, vec, len, gfp);
 if (error)
  return ERR_PTR(error);

 for (i = 0; i < stack; i++)
  vec[i] = aa_get_profile(base->vec[i]);

 for (split = aa_label_strn_split(str, end - str), i = stack;
      split && i < len; i++) {
  vec[i] = fqlookupn_profile(base, currbase, str, split - str);
  if (!vec[i])
   goto fail;




  if (vec[i]->ns != labels_ns(currbase))
   currbase = &vec[i]->label;
  str = split + 3;
  split = aa_label_strn_split(str, end - str);
 }

 if (i < len) {
  vec[i] = fqlookupn_profile(base, currbase, str, end - str);
  if (!vec[i])
   goto fail;
 }
 if (len == 1)

  return &vec[0]->label;

 len -= aa_vec_unique(vec, len, VEC_FLAG_TERMINATE);

 if (len == 1) {
  label = aa_get_label(&vec[0]->label);
  goto out;
 }

 if (create)
  label = aa_vec_find_or_create_label(vec, len, gfp);
 else
  label = vec_find(vec, len);
 if (!label)
  goto fail;

out:

 vec_cleanup(profile, vec, len);
 return label;

fail:
 label = ERR_PTR(-ENOENT);
 goto out;
}
