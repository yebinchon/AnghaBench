; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_destroy_mempool.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_destroy_mempool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rpc_buffer_mempool = common dso_local global i32 0, align 4
@rpc_task_mempool = common dso_local global i32 0, align 4
@rpc_task_slabp = common dso_local global i32 0, align 4
@rpc_buffer_slabp = common dso_local global i32 0, align 4
@delay_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_destroy_mempool() #0 {
  %1 = call i32 (...) @rpciod_stop()
  %2 = load i32, i32* @rpc_buffer_mempool, align 4
  %3 = call i32 @mempool_destroy(i32 %2)
  %4 = load i32, i32* @rpc_task_mempool, align 4
  %5 = call i32 @mempool_destroy(i32 %4)
  %6 = load i32, i32* @rpc_task_slabp, align 4
  %7 = call i32 @kmem_cache_destroy(i32 %6)
  %8 = load i32, i32* @rpc_buffer_slabp, align 4
  %9 = call i32 @kmem_cache_destroy(i32 %8)
  %10 = call i32 @rpc_destroy_wait_queue(i32* @delay_queue)
  ret void
}

declare dso_local i32 @rpciod_stop(...) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @rpc_destroy_wait_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
