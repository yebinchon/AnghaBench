
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_data {size_t code; } ;
struct tree {int* leafindex; } ;



__attribute__((used)) static int *nfdi_index(struct tree *tree, void *l)
{
 struct unicode_data *leaf = l;

 return &tree->leafindex[leaf->code];
}
