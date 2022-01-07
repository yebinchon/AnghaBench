; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_disable_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_sched.c___rpc_disable_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_wait_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rpc_task = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"RPC: %5u disabling timer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_wait_queue*, %struct.rpc_task*)* @__rpc_disable_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_disable_timer(%struct.rpc_wait_queue* %0, %struct.rpc_task* %1) #0 {
  %3 = alloca %struct.rpc_wait_queue*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_wait_queue* %0, %struct.rpc_wait_queue** %3, align 8
  store %struct.rpc_task* %1, %struct.rpc_task** %4, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = call i64 @list_empty(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %31 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @cancel_delayed_work(i32* %32)
  br label %34

34:                                               ; preds = %11, %29, %12
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
