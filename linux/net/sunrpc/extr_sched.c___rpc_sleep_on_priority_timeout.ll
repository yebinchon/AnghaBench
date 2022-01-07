; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_sleep_on_priority_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_sleep_on_priority_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { i32 }
%struct.rpc_task = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*, i64, i8)* @__rpc_sleep_on_priority_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_sleep_on_priority_timeout(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1, i64 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.rpc_wait_queue*, align 8
  %6 = alloca %struct.rpc_task*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %5, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  %9 = load i64, i64* %7, align 8
  %10 = call i64 @time_is_after_jiffies(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %5, align 8
  %14 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %15 = load i8, i8* %8, align 1
  %16 = call i32 @__rpc_sleep_on_priority(%struct.rpc_wait_queue* %13, %struct.rpc_task* %14, i8 zeroext %15)
  %17 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %5, align 8
  %18 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @__rpc_add_timer(%struct.rpc_wait_queue* %17, %struct.rpc_task* %18, i64 %19)
  br label %26

21:                                               ; preds = %4
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.rpc_task*, %struct.rpc_task** %6, align 8
  %25 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %12
  ret void
}

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @__rpc_sleep_on_priority(%struct.rpc_wait_queue*, %struct.rpc_task*, i8 zeroext) #1

declare dso_local i32 @__rpc_add_timer(%struct.rpc_wait_queue*, %struct.rpc_task*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
