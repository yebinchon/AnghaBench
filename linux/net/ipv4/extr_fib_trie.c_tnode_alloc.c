
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int dummy; } ;


 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 size_t TNODE_SIZE (unsigned long) ;
 int TNODE_VMALLOC_MAX ;
 struct tnode* kzalloc (size_t,int ) ;
 struct tnode* vzalloc (size_t) ;

__attribute__((used)) static struct tnode *tnode_alloc(int bits)
{
 size_t size;


 if (bits > TNODE_VMALLOC_MAX)
  return ((void*)0);


 size = TNODE_SIZE(1ul << bits);

 if (size <= PAGE_SIZE)
  return kzalloc(size, GFP_KERNEL);
 else
  return vzalloc(size);
}
