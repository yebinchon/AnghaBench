
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_INET ;
 scalar_t__ IS_ENABLED (int ) ;
 int shutdown_umh () ;

__attribute__((used)) static void __stop_umh(void)
{
 if (IS_ENABLED(CONFIG_INET))
  shutdown_umh();
}
