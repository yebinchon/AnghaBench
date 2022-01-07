
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uffd_msg {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int memset (struct uffd_msg*,int ,int) ;

__attribute__((used)) static inline void msg_init(struct uffd_msg *msg)
{
 BUILD_BUG_ON(sizeof(struct uffd_msg) != 32);




 memset(msg, 0, sizeof(struct uffd_msg));
}
