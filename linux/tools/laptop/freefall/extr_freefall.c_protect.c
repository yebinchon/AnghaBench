
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int device_path ;
 int syslog (int ,char*,char const*,int ) ;
 int unload_heads_path ;
 int write_int (int ,int) ;

__attribute__((used)) static void protect(int seconds)
{
 const char *str = (seconds == 0) ? "Unparked" : "Parked";

 write_int(unload_heads_path, seconds*1000);
 syslog(LOG_INFO, "%s %s disk head\n", str, device_path);
}
