
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;



__attribute__((used)) static inline int ima_must_appraise(struct inode *inode, int mask,
        enum ima_hooks func)
{
 return 0;
}
