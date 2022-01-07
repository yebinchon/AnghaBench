
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int key_serial_t ;


 long EOPNOTSUPP ;

__attribute__((used)) static inline long keyctl_get_persistent(uid_t uid, key_serial_t destring)
{
 return -EOPNOTSUPP;
}
