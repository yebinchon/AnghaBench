
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool sigmadsp_samplerate_valid(unsigned int supported,
 unsigned int requested)
{

 if (!supported)
  return 1;

 return supported & requested;
}
