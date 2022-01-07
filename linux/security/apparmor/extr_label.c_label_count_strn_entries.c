
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AA_BUG (int) ;
 char* aa_label_strn_split (char const*,int) ;

__attribute__((used)) static int label_count_strn_entries(const char *str, size_t n)
{
 const char *end = str + n;
 const char *split;
 int count = 1;

 AA_BUG(!str);

 for (split = aa_label_strn_split(str, end - str);
      split;
      split = aa_label_strn_split(str, end - str)) {
  count++;
  str = split + 3;
 }

 return count;
}
