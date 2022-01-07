
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ocfs2_lock_type { ____Placeholder_ocfs2_lock_type } ocfs2_lock_type ;


 int BUG_ON (int) ;
 int OCFS2_NUM_LOCK_TYPES ;
 char const** ocfs2_lock_type_strings ;

__attribute__((used)) static inline const char *ocfs2_lock_type_string(enum ocfs2_lock_type type)
{



 return ocfs2_lock_type_strings[type];
}
