; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_transport.c_xprt_rdma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i64, i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_2__, %struct.rpcrdma_ia, %struct.rpcrdma_ep }
%struct.TYPE_2__ = type { i32 }
%struct.rpcrdma_ia = type { i32 }
%struct.rpcrdma_ep = type { i32 }

@RPCRDMA_IAF_REMOVING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RPC_CWNDSHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_rdma_close(%struct.rpc_xprt* %0) #0 {
  %2 = alloca %struct.rpc_xprt*, align 8
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  %4 = alloca %struct.rpcrdma_ep*, align 8
  %5 = alloca %struct.rpcrdma_ia*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %2, align 8
  %6 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %7 = call %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt* %6)
  store %struct.rpcrdma_xprt* %7, %struct.rpcrdma_xprt** %3, align 8
  %8 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %9 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %8, i32 0, i32 2
  store %struct.rpcrdma_ep* %9, %struct.rpcrdma_ep** %4, align 8
  %10 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %10, i32 0, i32 1
  store %struct.rpcrdma_ia* %11, %struct.rpcrdma_ia** %5, align 8
  %12 = call i32 (...) @might_sleep()
  %13 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %14 = call i32 @trace_xprtrdma_op_close(%struct.rpcrdma_xprt* %13)
  %15 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %16 = call i32 @xprt_clear_connected(%struct.rpc_xprt* %15)
  %17 = load i32, i32* @RPCRDMA_IAF_REMOVING, align 4
  %18 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %5, align 8
  %19 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %18, i32 0, i32 0
  %20 = call i64 @test_and_clear_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %5, align 8
  %24 = call i32 @rpcrdma_ia_remove(%struct.rpcrdma_ia* %23)
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %4, align 8
  %27 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %52

33:                                               ; preds = %25
  %34 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %4, align 8
  %35 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %5, align 8
  %36 = call i32 @rpcrdma_ep_disconnect(%struct.rpcrdma_ep* %34, %struct.rpcrdma_ia* %35)
  %37 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %38 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @RPC_CWNDSHIFT, align 4
  %41 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %42 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %33, %22
  %44 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %45 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %47 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.rpc_xprt*, %struct.rpc_xprt** %2, align 8
  %51 = call i32 @xprt_disconnect_done(%struct.rpc_xprt* %50)
  br label %52

52:                                               ; preds = %43, %32
  ret void
}

declare dso_local %struct.rpcrdma_xprt* @rpcx_to_rdmax(%struct.rpc_xprt*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @trace_xprtrdma_op_close(%struct.rpcrdma_xprt*) #1

declare dso_local i32 @xprt_clear_connected(%struct.rpc_xprt*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rpcrdma_ia_remove(%struct.rpcrdma_ia*) #1

declare dso_local i32 @rpcrdma_ep_disconnect(%struct.rpcrdma_ep*, %struct.rpcrdma_ia*) #1

declare dso_local i32 @xprt_disconnect_done(%struct.rpc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
