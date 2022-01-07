; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_call_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_call_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64, i32, i32, i32 }

@call_transmit_status = common dso_local global i32 0, align 4
@RPC_TASK_NEED_XMIT = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @call_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_transmit(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %3 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %4 = call i64 @rpc_task_transmitted(%struct.rpc_task* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = call i32 @rpc_task_handle_transmitted(%struct.rpc_task* %7)
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %11 = call i32 @dprint_status(%struct.rpc_task* %10)
  %12 = load i32, i32* @call_transmit_status, align 4
  %13 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %16 = call i32 @xprt_prepare_transmit(%struct.rpc_task* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  br label %44

19:                                               ; preds = %9
  %20 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @RPC_TASK_NEED_XMIT, align 4
  %23 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 2
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %19
  %28 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %29 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @xprt_connected(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* @ENOTCONN, align 8
  %35 = sub nsw i64 0, %34
  %36 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %37 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %44

38:                                               ; preds = %27
  %39 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %40 = call i32 @xprt_transmit(%struct.rpc_task* %39)
  br label %41

41:                                               ; preds = %38, %19
  %42 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %43 = call i32 @xprt_end_transmit(%struct.rpc_task* %42)
  br label %44

44:                                               ; preds = %41, %33, %18, %6
  ret void
}

declare dso_local i64 @rpc_task_transmitted(%struct.rpc_task*) #1

declare dso_local i32 @rpc_task_handle_transmitted(%struct.rpc_task*) #1

declare dso_local i32 @dprint_status(%struct.rpc_task*) #1

declare dso_local i32 @xprt_prepare_transmit(%struct.rpc_task*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @xprt_connected(i32) #1

declare dso_local i32 @xprt_transmit(%struct.rpc_task*) #1

declare dso_local i32 @xprt_end_transmit(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
