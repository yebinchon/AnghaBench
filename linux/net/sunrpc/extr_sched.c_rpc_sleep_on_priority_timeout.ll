; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_sleep_on_priority_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c_rpc_sleep_on_priority_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { i32 }
%struct.rpc_task = type { i32 }

@RPC_PRIORITY_LOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_sleep_on_priority_timeout(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.rpc_wait_queue*, align 8
  %6 = alloca %struct.rpc_task*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %5, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %10 = call i32 @rpc_sleep_check_activated(%struct.rpc_task* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %30

13:                                               ; preds = %4
  %14 = load i64, i64* @RPC_PRIORITY_LOW, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %5, align 8
  %20 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %5, align 8
  %23 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @__rpc_sleep_on_priority_timeout(%struct.rpc_wait_queue* %22, %struct.rpc_task* %23, i64 %24, i32 %25)
  %27 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %5, align 8
  %28 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @rpc_sleep_check_activated(%struct.rpc_task*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__rpc_sleep_on_priority_timeout(%struct.rpc_wait_queue*, %struct.rpc_task*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
