; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_sleep_on_priority.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_sleep_on_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { i32 }
%struct.rpc_task = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"RPC: %5u sleep_on(queue \22%s\22 time %lu)\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*, i8)* @__rpc_sleep_on_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_sleep_on_priority(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.rpc_wait_queue*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca i8, align 1
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %11 = call i32 @rpc_qname(%struct.rpc_wait_queue* %10)
  %12 = load i32, i32* @jiffies, align 4
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11, i32 %12)
  %14 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %15 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %16 = call i32 @trace_rpc_task_sleep(%struct.rpc_task* %14, %struct.rpc_wait_queue* %15)
  %17 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %18 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %19 = load i8, i8* %6, align 1
  %20 = call i32 @__rpc_add_wait_queue(%struct.rpc_wait_queue* %17, %struct.rpc_task* %18, i8 zeroext %19)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @rpc_qname(%struct.rpc_wait_queue*) #1

declare dso_local i32 @trace_rpc_task_sleep(%struct.rpc_task*, %struct.rpc_wait_queue*) #1

declare dso_local i32 @__rpc_add_wait_queue(%struct.rpc_wait_queue*, %struct.rpc_task*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
