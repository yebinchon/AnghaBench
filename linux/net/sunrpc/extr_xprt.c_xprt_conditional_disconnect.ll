; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_conditional_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_conditional_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32, i32, i32 }

@XPRT_CLOSING = common dso_local global i32 0, align 4
@XPRT_CLOSE_WAIT = common dso_local global i32 0, align 4
@XPRT_LOCKED = common dso_local global i32 0, align 4
@xprtiod_workqueue = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_conditional_disconnect(%struct.rpc_xprt* %0, i32 %1) #0 {
  %3 = alloca %struct.rpc_xprt*, align 8
  %4 = alloca i32, align 4
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %6 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %41

14:                                               ; preds = %2
  %15 = load i32, i32* @XPRT_CLOSING, align 4
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %16, i32 0, i32 3
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %41

21:                                               ; preds = %14
  %22 = load i32, i32* @XPRT_CLOSE_WAIT, align 4
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %23, i32 0, i32 3
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load i32, i32* @XPRT_LOCKED, align 4
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %27, i32 0, i32 3
  %29 = call i64 @test_and_set_bit(i32 %26, i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load i32, i32* @xprtiod_workqueue, align 4
  %33 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %34 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %33, i32 0, i32 2
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %31, %21
  %37 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @xprt_wake_pending_tasks(%struct.rpc_xprt* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %20, %13
  %42 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %43 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock(i32* %43)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @xprt_wake_pending_tasks(%struct.rpc_xprt*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
