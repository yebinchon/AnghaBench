
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_data {scalar_t__ utf8nfdi; scalar_t__ utf8nfdicf; int code; } ;


 scalar_t__ HANGUL_SYLLABLE (int ) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static int nfdicf_size(void *l)
{
 struct unicode_data *leaf = l;
 int size = 2;

 if (HANGUL_SYLLABLE(leaf->code))
  size += 1;
 else if (leaf->utf8nfdicf)
  size += strlen(leaf->utf8nfdicf) + 1;
 else if (leaf->utf8nfdi)
  size += strlen(leaf->utf8nfdi) + 1;
 return size;
}
