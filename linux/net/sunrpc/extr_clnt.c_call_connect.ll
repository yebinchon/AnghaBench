; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_call_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_call_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { i32 }

@call_transmit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RPC: %5u call_connect xprt %p %s connected\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"is not\00", align 1
@call_connect_status = common dso_local global i32 0, align 4
@RPC_TASK_NOCONNECT = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @call_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_connect(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %4 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.rpc_xprt*, %struct.rpc_xprt** %7, align 8
  store %struct.rpc_xprt* %8, %struct.rpc_xprt** %3, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %10 = call i64 @rpc_task_transmitted(%struct.rpc_task* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %14 = call i32 @rpc_task_handle_transmitted(%struct.rpc_task* %13)
  br label %62

15:                                               ; preds = %1
  %16 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %17 = call i64 @xprt_connected(%struct.rpc_xprt* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @call_transmit, align 4
  %21 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %22 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  br label %62

23:                                               ; preds = %15
  %24 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %25 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %3, align 8
  %29 = call i64 @xprt_connected(%struct.rpc_xprt* %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %26, %struct.rpc_xprt* %27, i8* %32)
  %34 = load i32, i32* @call_connect_status, align 4
  %35 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %36 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %38 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %62

42:                                               ; preds = %23
  %43 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %44 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RPC_TASK_NOCONNECT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %51 = load i32, i32* @ENOTCONN, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i32 @rpc_call_rpcerror(%struct.rpc_task* %50, i32 %52)
  br label %62

54:                                               ; preds = %42
  %55 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %56 = call i32 @xprt_prepare_transmit(%struct.rpc_task* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %62

59:                                               ; preds = %54
  %60 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %61 = call i32 @xprt_connect(%struct.rpc_task* %60)
  br label %62

62:                                               ; preds = %59, %58, %49, %41, %19, %12
  ret void
}

declare dso_local i64 @rpc_task_transmitted(%struct.rpc_task*) #1

declare dso_local i32 @rpc_task_handle_transmitted(%struct.rpc_task*) #1

declare dso_local i64 @xprt_connected(%struct.rpc_xprt*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.rpc_xprt*, i8*) #1

declare dso_local i32 @rpc_call_rpcerror(%struct.rpc_task*, i32) #1

declare dso_local i32 @xprt_prepare_transmit(%struct.rpc_task*) #1

declare dso_local i32 @xprt_connect(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
