; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_mr_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_mr_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rpcrdma_req = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rpcrdma_mr_seg = type { i32 }
%struct.rpcrdma_mr = type { %struct.rpcrdma_req* }

@ENODEV = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpcrdma_mr_seg* (%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.rpcrdma_mr_seg*, i32, i32, %struct.rpcrdma_mr**)* @rpcrdma_mr_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpcrdma_mr_seg* @rpcrdma_mr_prepare(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_req* %1, %struct.rpcrdma_mr_seg* %2, i32 %3, i32 %4, %struct.rpcrdma_mr** %5) #0 {
  %7 = alloca %struct.rpcrdma_mr_seg*, align 8
  %8 = alloca %struct.rpcrdma_xprt*, align 8
  %9 = alloca %struct.rpcrdma_req*, align 8
  %10 = alloca %struct.rpcrdma_mr_seg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rpcrdma_mr**, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %8, align 8
  store %struct.rpcrdma_req* %1, %struct.rpcrdma_req** %9, align 8
  store %struct.rpcrdma_mr_seg* %2, %struct.rpcrdma_mr_seg** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.rpcrdma_mr** %5, %struct.rpcrdma_mr*** %13, align 8
  %14 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %9, align 8
  %15 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %14, i32 0, i32 2
  %16 = call %struct.rpcrdma_mr* @rpcrdma_mr_pop(i32* %15)
  %17 = load %struct.rpcrdma_mr**, %struct.rpcrdma_mr*** %13, align 8
  store %struct.rpcrdma_mr* %16, %struct.rpcrdma_mr** %17, align 8
  %18 = load %struct.rpcrdma_mr**, %struct.rpcrdma_mr*** %13, align 8
  %19 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %18, align 8
  %20 = icmp ne %struct.rpcrdma_mr* %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %6
  %22 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %8, align 8
  %23 = call %struct.rpcrdma_mr* @rpcrdma_mr_get(%struct.rpcrdma_xprt* %22)
  %24 = load %struct.rpcrdma_mr**, %struct.rpcrdma_mr*** %13, align 8
  store %struct.rpcrdma_mr* %23, %struct.rpcrdma_mr** %24, align 8
  %25 = load %struct.rpcrdma_mr**, %struct.rpcrdma_mr*** %13, align 8
  %26 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %25, align 8
  %27 = icmp ne %struct.rpcrdma_mr* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %9, align 8
  %31 = call i32 @trace_xprtrdma_mr_get(%struct.rpcrdma_req* %30)
  %32 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %9, align 8
  %33 = load %struct.rpcrdma_mr**, %struct.rpcrdma_mr*** %13, align 8
  %34 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %33, align 8
  %35 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %34, i32 0, i32 0
  store %struct.rpcrdma_req* %32, %struct.rpcrdma_req** %35, align 8
  br label %36

36:                                               ; preds = %29, %6
  %37 = load %struct.rpcrdma_mr**, %struct.rpcrdma_mr*** %13, align 8
  %38 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %37, align 8
  %39 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %9, align 8
  %40 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %39, i32 0, i32 1
  %41 = call i32 @rpcrdma_mr_push(%struct.rpcrdma_mr* %38, i32* %40)
  %42 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %8, align 8
  %43 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %9, align 8
  %47 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rpcrdma_mr**, %struct.rpcrdma_mr*** %13, align 8
  %51 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %50, align 8
  %52 = call %struct.rpcrdma_mr_seg* @frwr_map(%struct.rpcrdma_xprt* %42, %struct.rpcrdma_mr_seg* %43, i32 %44, i32 %45, i32 %49, %struct.rpcrdma_mr* %51)
  store %struct.rpcrdma_mr_seg* %52, %struct.rpcrdma_mr_seg** %7, align 8
  br label %75

53:                                               ; preds = %28
  %54 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %9, align 8
  %55 = call i32 @trace_xprtrdma_nomrs(%struct.rpcrdma_req* %54)
  %56 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %8, align 8
  %57 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %56, i32 0, i32 2
  %58 = call i32 @xprt_wait_for_buffer_space(i32* %57)
  %59 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %8, align 8
  %60 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %53
  %67 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %8, align 8
  %68 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @schedule_work(i32* %69)
  br label %71

71:                                               ; preds = %66, %53
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.rpcrdma_mr_seg* @ERR_PTR(i32 %73)
  store %struct.rpcrdma_mr_seg* %74, %struct.rpcrdma_mr_seg** %7, align 8
  br label %75

75:                                               ; preds = %71, %36
  %76 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %7, align 8
  ret %struct.rpcrdma_mr_seg* %76
}

declare dso_local %struct.rpcrdma_mr* @rpcrdma_mr_pop(i32*) #1

declare dso_local %struct.rpcrdma_mr* @rpcrdma_mr_get(%struct.rpcrdma_xprt*) #1

declare dso_local i32 @trace_xprtrdma_mr_get(%struct.rpcrdma_req*) #1

declare dso_local i32 @rpcrdma_mr_push(%struct.rpcrdma_mr*, i32*) #1

declare dso_local %struct.rpcrdma_mr_seg* @frwr_map(%struct.rpcrdma_xprt*, %struct.rpcrdma_mr_seg*, i32, i32, i32, %struct.rpcrdma_mr*) #1

declare dso_local i32 @trace_xprtrdma_nomrs(%struct.rpcrdma_req*) #1

declare dso_local i32 @xprt_wait_for_buffer_space(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local %struct.rpcrdma_mr_seg* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
