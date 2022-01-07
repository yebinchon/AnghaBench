; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_release_transport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_task_release_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64, %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_task_release_transport(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 1
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  store %struct.rpc_xprt* %6, %struct.rpc_xprt** %3, align 8
  %7 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %8 = icmp ne %struct.rpc_xprt* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %11 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %10, i32 0, i32 1
  store %struct.rpc_xprt* null, %struct.rpc_xprt** %11, align 8
  %12 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %21 = call i32 @rpc_task_release_xprt(i64 %19, %struct.rpc_xprt* %20)
  br label %25

22:                                               ; preds = %9
  %23 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %24 = call i32 @xprt_put(%struct.rpc_xprt* %23)
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @rpc_task_release_xprt(i64, %struct.rpc_xprt*) #1

declare dso_local i32 @xprt_put(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
