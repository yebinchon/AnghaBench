
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_object_kref {int khandle; } ;
typedef int ino_t ;


 int orangefs_khandle_to_ino (int *) ;

__attribute__((used)) static inline ino_t orangefs_handle_hash(struct orangefs_object_kref *ref)
{
 if (!ref)
  return 0;
 return orangefs_khandle_to_ino(&(ref->khandle));
}
