; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32*, %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_reserve(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 2
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  store %struct.rpc_xprt* %6, %struct.rpc_xprt** %3, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %27

14:                                               ; preds = %1
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  %17 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %20 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %21 = call i32 @xprt_throttle_congested(%struct.rpc_xprt* %19, %struct.rpc_task* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %25 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %26 = call i32 @xprt_do_reserve(%struct.rpc_xprt* %24, %struct.rpc_task* %25)
  br label %27

27:                                               ; preds = %13, %23, %14
  ret void
}

declare dso_local i32 @xprt_throttle_congested(%struct.rpc_xprt*, %struct.rpc_task*) #1

declare dso_local i32 @xprt_do_reserve(%struct.rpc_xprt*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
