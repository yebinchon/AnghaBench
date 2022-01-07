
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_filter {char* str; int range; int filename; int sym_to_idx; int sym_to; int size; int sym_from_idx; int sym_from; int addr; int action; } ;


 int ENOMEM ;
 int addr_filter__free_str (struct addr_filter*) ;
 int parse_action (struct addr_filter*) ;
 int parse_addr_size (char**,int *,int *,int *) ;
 int parse_num_or_str (char**,int *,int *,char*) ;
 char* strdup (char const*) ;
 int strspn (char*,char*) ;

__attribute__((used)) static int parse_one_filter(struct addr_filter *filt, const char **filter_inp)
{
 char *fstr;
 int err;

 filt->str = fstr = strdup(*filter_inp);
 if (!fstr)
  return -ENOMEM;

 err = parse_num_or_str(&fstr, ((void*)0), &filt->action, " ");
 if (err)
  goto out_err;

 err = parse_action(filt);
 if (err)
  goto out_err;

 err = parse_addr_size(&fstr, &filt->addr, &filt->sym_from,
         &filt->sym_from_idx);
 if (err)
  goto out_err;

 fstr += strspn(fstr, " ");

 if (*fstr == '/') {
  fstr += 1;
  err = parse_addr_size(&fstr, &filt->size, &filt->sym_to,
          &filt->sym_to_idx);
  if (err)
   goto out_err;
  filt->range = 1;
 }

 fstr += strspn(fstr, " ");

 if (*fstr == '@') {
  fstr += 1;
  err = parse_num_or_str(&fstr, ((void*)0), &filt->filename, " ,");
  if (err)
   goto out_err;
 }

 fstr += strspn(fstr, " ,");

 *filter_inp += fstr - filt->str;

 return 0;

out_err:
 addr_filter__free_str(filt);

 return err;
}
