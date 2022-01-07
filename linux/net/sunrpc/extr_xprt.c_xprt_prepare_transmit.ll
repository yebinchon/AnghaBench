; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_prepare_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprt.c_xprt_prepare_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"RPC: %5u xprt_prepare_transmit\0A\00", align 1
@RPC_TASK_NEED_XMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xprt_prepare_transmit(%struct.rpc_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  %6 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %6, i32 0, i32 2
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  store %struct.rpc_rqst* %8, %struct.rpc_rqst** %4, align 8
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 0
  %11 = load %struct.rpc_xprt*, %struct.rpc_xprt** %10, align 8
  store %struct.rpc_xprt* %11, %struct.rpc_xprt** %5, align 8
  %12 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %17 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %18 = call i32 @xprt_lock_write(%struct.rpc_xprt* %16, %struct.rpc_task* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @RPC_TASK_NEED_XMIT, align 4
  %22 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %22, i32 0, i32 0
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %5, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %27, i32 0, i32 0
  %29 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %30 = call i32 @rpc_wake_up_queued_task_set_status(i32* %28, %struct.rpc_task* %29, i32 0)
  br label %31

31:                                               ; preds = %26, %20
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @xprt_lock_write(%struct.rpc_xprt*, %struct.rpc_task*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rpc_wake_up_queued_task_set_status(i32*, %struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
