; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_complete_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_complete_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_rep = type { i32, %struct.rpc_rqst*, %struct.rpcrdma_xprt* }
%struct.rpc_rqst = type { i32 }
%struct.rpcrdma_xprt = type { %struct.TYPE_2__, %struct.rpc_xprt }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_xprt = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpcrdma_complete_rqst(%struct.rpcrdma_rep* %0) #0 {
  %2 = alloca %struct.rpcrdma_rep*, align 8
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32, align 4
  store %struct.rpcrdma_rep* %0, %struct.rpcrdma_rep** %2, align 8
  %7 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %2, align 8
  %8 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %7, i32 0, i32 2
  %9 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %8, align 8
  store %struct.rpcrdma_xprt* %9, %struct.rpcrdma_xprt** %3, align 8
  %10 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %10, i32 0, i32 1
  store %struct.rpc_xprt* %11, %struct.rpc_xprt** %4, align 8
  %12 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %2, align 8
  %13 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %12, i32 0, i32 1
  %14 = load %struct.rpc_rqst*, %struct.rpc_rqst** %13, align 8
  store %struct.rpc_rqst* %14, %struct.rpc_rqst** %5, align 8
  %15 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %2, align 8
  %16 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %32 [
    i32 129, label %18
    i32 128, label %23
    i32 130, label %27
  ]

18:                                               ; preds = %1
  %19 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %20 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %2, align 8
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %22 = call i32 @rpcrdma_decode_msg(%struct.rpcrdma_xprt* %19, %struct.rpcrdma_rep* %20, %struct.rpc_rqst* %21)
  store i32 %22, i32* %6, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %25 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %2, align 8
  %26 = call i32 @rpcrdma_decode_nomsg(%struct.rpcrdma_xprt* %24, %struct.rpcrdma_rep* %25)
  store i32 %26, i32* %6, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %29 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %2, align 8
  %30 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %31 = call i32 @rpcrdma_decode_error(%struct.rpcrdma_xprt* %28, %struct.rpcrdma_rep* %29, %struct.rpc_rqst* %30)
  store i32 %31, i32* %6, align 4
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %27, %23, %18
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %54

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %54, %39
  %41 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %42 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %45 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @xprt_complete_rqst(i32 %46, i32 %47)
  %49 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %50 = call i32 @xprt_unpin_rqst(%struct.rpc_rqst* %49)
  %51 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %52 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  ret void

54:                                               ; preds = %38
  %55 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %2, align 8
  %56 = call i32 @trace_xprtrdma_reply_hdr(%struct.rpcrdma_rep* %55)
  %57 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %58 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %40
}

declare dso_local i32 @rpcrdma_decode_msg(%struct.rpcrdma_xprt*, %struct.rpcrdma_rep*, %struct.rpc_rqst*) #1

declare dso_local i32 @rpcrdma_decode_nomsg(%struct.rpcrdma_xprt*, %struct.rpcrdma_rep*) #1

declare dso_local i32 @rpcrdma_decode_error(%struct.rpcrdma_xprt*, %struct.rpcrdma_rep*, %struct.rpc_rqst*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xprt_complete_rqst(i32, i32) #1

declare dso_local i32 @xprt_unpin_rqst(%struct.rpc_rqst*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_xprtrdma_reply_hdr(%struct.rpcrdma_rep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
