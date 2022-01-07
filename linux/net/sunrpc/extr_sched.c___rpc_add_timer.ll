; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_add_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.rpc_task = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"RPC: %5u setting alarm for %u ms\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*, i64)* @__rpc_add_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_add_timer(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1, i64 %2) #0 {
  %4 = alloca %struct.rpc_wait_queue*, align 8
  %5 = alloca %struct.rpc_task*, align 8
  %6 = alloca i64, align 8
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %4, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = sub i64 %10, %11
  %13 = call i32 @jiffies_to_msecs(i64 %12)
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %17 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i64 @list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @time_before(i64 %24, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23, %3
  %32 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @rpc_set_queue_timer(%struct.rpc_wait_queue* %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.rpc_task*, %struct.rpc_task** %5, align 8
  %37 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = call i32 @list_add(i32* %39, i32* %42)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @rpc_set_queue_timer(%struct.rpc_wait_queue*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
