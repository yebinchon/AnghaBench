
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dma_debug_initialized ;
 scalar_t__ global_disable ;

__attribute__((used)) static inline bool dma_debug_disabled(void)
{
 return global_disable || !dma_debug_initialized;
}
