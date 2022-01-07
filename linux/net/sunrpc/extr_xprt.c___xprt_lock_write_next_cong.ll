; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c___xprt_lock_write_next_cong.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c___xprt_lock_write_next_cong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32 }

@XPRT_LOCKED = common dso_local global i32 0, align 4
@XPRT_WRITE_SPACE = common dso_local global i32 0, align 4
@xprtiod_workqueue = common dso_local global i32 0, align 4
@__xprt_lock_write_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*)* @__xprt_lock_write_next_cong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xprt_lock_write_next_cong(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %3 = load i32, i32* @XPRT_LOCKED, align 4
  %4 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %4, i32 0, i32 1
  %6 = call i64 @test_and_set_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = load i32, i32* @XPRT_WRITE_SPACE, align 4
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %31

16:                                               ; preds = %9
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %18 = call i64 @xprt_need_congestion_window_wait(%struct.rpc_xprt* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %31

21:                                               ; preds = %16
  %22 = load i32, i32* @xprtiod_workqueue, align 4
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %23, i32 0, i32 0
  %25 = load i32, i32* @__xprt_lock_write_func, align 4
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %27 = call i64 @rpc_wake_up_first_on_wq(i32 %22, i32* %24, i32 %25, %struct.rpc_xprt* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %20, %15
  %32 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %33 = call i32 @xprt_clear_locked(%struct.rpc_xprt* %32)
  br label %34

34:                                               ; preds = %31, %29, %8
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @xprt_need_congestion_window_wait(%struct.rpc_xprt*) #1

declare dso_local i64 @rpc_wake_up_first_on_wq(i32, i32*, i32, %struct.rpc_xprt*) #1

declare dso_local i32 @xprt_clear_locked(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
