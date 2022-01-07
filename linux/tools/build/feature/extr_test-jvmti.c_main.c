
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jvmtiJlocationFormat ;
typedef int jvmtiEventCallbacks ;
typedef int jvmtiEnv ;
typedef int jvmtiCapabilities ;
typedef int JavaVM ;



int main(void)
{
 JavaVM jvm __attribute__((unused));
 jvmtiEventCallbacks cb __attribute__((unused));
 jvmtiCapabilities caps __attribute__((unused));
 jvmtiJlocationFormat format __attribute__((unused));
 jvmtiEnv jvmti __attribute__((unused));

 return 0;
}
