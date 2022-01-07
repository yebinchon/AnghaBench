
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_id; } ;


 int ida_free (int *,int ) ;
 int mnt_id_ida ;

__attribute__((used)) static void mnt_free_id(struct mount *mnt)
{
 ida_free(&mnt_id_ida, mnt->mnt_id);
}
