
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct hpp_dimension {int name; } ;


 int add_key (struct strbuf*,int ,int*) ;

__attribute__((used)) static void add_hpp_sort_string(struct strbuf *sb, struct hpp_dimension *s, int n,
    int *llen)
{
 int i;

 for (i = 0; i < n; i++)
  add_key(sb, s[i].name, llen);
}
