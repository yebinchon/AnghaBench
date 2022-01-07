
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_data {scalar_t__ utf8nfdicf; } ;



__attribute__((used)) static int nfdicf_mark(void *l)
{
 struct unicode_data *leaf = l;

 if (leaf->utf8nfdicf)
  return 1;
 return 0;
}
