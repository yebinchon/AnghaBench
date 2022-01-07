; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_force_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_force_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i64, i32, i32, i32 }

@XPRT_CLOSE_WAIT = common dso_local global i32 0, align 4
@XPRT_LOCKED = common dso_local global i32 0, align 4
@xprtiod_workqueue = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_force_disconnect(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %3 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %3, i32 0, i32 0
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load i32, i32* @XPRT_CLOSE_WAIT, align 4
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %7, i32 0, i32 4
  %9 = call i32 @set_bit(i32 %6, i32* %8)
  %10 = load i32, i32* @XPRT_LOCKED, align 4
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 4
  %13 = call i64 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @xprtiod_workqueue, align 4
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 3
  %19 = call i32 @queue_work(i32 %16, i32* %18)
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %27 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %26, i32 0, i32 2
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %29 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @ENOTCONN, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @rpc_wake_up_queued_task_set_status(i32* %27, i64 %30, i32 %32)
  br label %34

34:                                               ; preds = %25, %20
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %37 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rpc_wake_up_queued_task_set_status(i32*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
