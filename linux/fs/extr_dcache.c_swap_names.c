
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long name; long hash_len; scalar_t__ len; } ;
struct dentry {long d_iname; TYPE_1__ d_name; } ;


 int BUILD_BUG_ON (int) ;
 int DNAME_INLINE_LEN ;
 int IS_ALIGNED (int,int) ;
 int dname_external (struct dentry*) ;
 int memcpy (long,long,scalar_t__) ;
 int swap (long,long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void swap_names(struct dentry *dentry, struct dentry *target)
{
 if (unlikely(dname_external(target))) {
  if (unlikely(dname_external(dentry))) {



   swap(target->d_name.name, dentry->d_name.name);
  } else {




   memcpy(target->d_iname, dentry->d_name.name,
     dentry->d_name.len + 1);
   dentry->d_name.name = target->d_name.name;
   target->d_name.name = target->d_iname;
  }
 } else {
  if (unlikely(dname_external(dentry))) {




   memcpy(dentry->d_iname, target->d_name.name,
     target->d_name.len + 1);
   target->d_name.name = dentry->d_name.name;
   dentry->d_name.name = dentry->d_iname;
  } else {



   unsigned int i;
   BUILD_BUG_ON(!IS_ALIGNED(DNAME_INLINE_LEN, sizeof(long)));
   for (i = 0; i < DNAME_INLINE_LEN / sizeof(long); i++) {
    swap(((long *) &dentry->d_iname)[i],
         ((long *) &target->d_iname)[i]);
   }
  }
 }
 swap(dentry->d_name.hash_len, target->d_name.hash_len);
}
