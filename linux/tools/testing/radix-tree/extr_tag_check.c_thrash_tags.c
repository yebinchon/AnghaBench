
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int RADIX_TREE (int ,int ) ;
 int THRASH_SIZE ;
 int do_thrash (int *,char*,int ) ;
 int free (char*) ;
 int item_kill_tree (int *) ;
 char* malloc (int ) ;
 int memset (char*,int ,int ) ;
 int tree ;
 int verify_tag_consistency (int *,int ) ;

__attribute__((used)) static void thrash_tags(void)
{
 RADIX_TREE(tree, GFP_KERNEL);
 char *thrash_state;

 thrash_state = malloc(THRASH_SIZE);
 memset(thrash_state, 0, THRASH_SIZE);

 do_thrash(&tree, thrash_state, 0);

 verify_tag_consistency(&tree, 0);
 item_kill_tree(&tree);
 free(thrash_state);
}
