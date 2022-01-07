; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_clear_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_clear_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32, i32* }

@XPRT_CLOSE_WAIT = common dso_local global i32 0, align 4
@XPRT_LOCKED = common dso_local global i32 0, align 4
@xprtiod_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*)* @xprt_clear_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_clear_locked(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %3 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %3, i32 0, i32 2
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* @XPRT_CLOSE_WAIT, align 4
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %7 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %6, i32 0, i32 1
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @smp_mb__before_atomic()
  %12 = load i32, i32* @XPRT_LOCKED, align 4
  %13 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %13, i32 0, i32 1
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = call i32 (...) @smp_mb__after_atomic()
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @xprtiod_workqueue, align 4
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %19, i32 0, i32 0
  %21 = call i32 @queue_work(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
