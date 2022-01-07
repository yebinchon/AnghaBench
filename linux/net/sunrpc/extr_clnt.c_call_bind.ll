; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_call_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_call_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rpc_task*)* }

@call_connect = common dso_local global i32 0, align 4
@call_bind_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @call_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_bind(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  store %struct.rpc_xprt* %8, %struct.rpc_xprt** %3, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %10 = call i64 @rpc_task_transmitted(%struct.rpc_task* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %14 = call i32 @rpc_task_handle_transmitted(%struct.rpc_task* %13)
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %17 = call i64 @xprt_bound(%struct.rpc_xprt* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @call_connect, align 4
  %21 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %22 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %41

23:                                               ; preds = %15
  %24 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %25 = call i32 @dprint_status(%struct.rpc_task* %24)
  %26 = load i32, i32* @call_bind_status, align 4
  %27 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %28 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %30 = call i32 @xprt_prepare_transmit(%struct.rpc_task* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %41

33:                                               ; preds = %23
  %34 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %35 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.rpc_task*)*, i32 (%struct.rpc_task*)** %37, align 8
  %39 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %40 = call i32 %38(%struct.rpc_task* %39)
  br label %41

41:                                               ; preds = %33, %32, %19, %12
  ret void
}

declare dso_local i64 @rpc_task_transmitted(%struct.rpc_task*) #1

declare dso_local i32 @rpc_task_handle_transmitted(%struct.rpc_task*) #1

declare dso_local i64 @xprt_bound(%struct.rpc_xprt*) #1

declare dso_local i32 @dprint_status(%struct.rpc_task*) #1

declare dso_local i32 @xprt_prepare_transmit(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
