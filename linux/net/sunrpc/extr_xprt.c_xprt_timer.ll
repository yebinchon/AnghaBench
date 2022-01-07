; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32, i32, %struct.rpc_xprt* }
%struct.rpc_xprt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rpc_xprt*, %struct.rpc_task*)* }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @xprt_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xprt_timer(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 1
  %7 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  store %struct.rpc_rqst* %7, %struct.rpc_rqst** %3, align 8
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %8, i32 0, i32 2
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %9, align 8
  store %struct.rpc_xprt* %10, %struct.rpc_xprt** %4, align 8
  %11 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %12 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ETIMEDOUT, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %20 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %21 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @trace_xprt_timer(%struct.rpc_xprt* %19, i32 %22, i32 %25)
  %27 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %28 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %18
  %32 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %33 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.rpc_xprt*, %struct.rpc_task*)*, i32 (%struct.rpc_xprt*, %struct.rpc_task*)** %35, align 8
  %37 = icmp ne i32 (%struct.rpc_xprt*, %struct.rpc_task*)* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %40 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.rpc_xprt*, %struct.rpc_task*)*, i32 (%struct.rpc_xprt*, %struct.rpc_task*)** %42, align 8
  %44 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %45 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %46 = call i32 %43(%struct.rpc_xprt* %44, %struct.rpc_task* %45)
  br label %47

47:                                               ; preds = %38, %31
  br label %51

48:                                               ; preds = %18
  %49 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %50 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %17, %48, %47
  ret void
}

declare dso_local i32 @trace_xprt_timer(%struct.rpc_xprt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
