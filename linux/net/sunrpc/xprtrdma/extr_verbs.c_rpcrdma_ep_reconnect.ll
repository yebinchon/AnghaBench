; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_ep_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_ep_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { i32, %struct.rpcrdma_ia }
%struct.rpcrdma_ia = type { %struct.rdma_cm_id*, i32 }
%struct.rdma_cm_id = type { i64 }
%struct.ib_qp_init_attr = type { i32 }

@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"rpcrdma: can't reconnect on different device!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcrdma_xprt*, %struct.ib_qp_init_attr*)* @rpcrdma_ep_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_ep_reconnect(%struct.rpcrdma_xprt* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca %struct.rpcrdma_xprt*, align 8
  %4 = alloca %struct.ib_qp_init_attr*, align 8
  %5 = alloca %struct.rpcrdma_ia*, align 8
  %6 = alloca %struct.rdma_cm_id*, align 8
  %7 = alloca %struct.rdma_cm_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %3, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %4, align 8
  %10 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %10, i32 0, i32 1
  store %struct.rpcrdma_ia* %11, %struct.rpcrdma_ia** %5, align 8
  %12 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %13 = call i32 @trace_xprtrdma_reconnect(%struct.rpcrdma_xprt* %12)
  %14 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %15 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %14, i32 0, i32 0
  %16 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %5, align 8
  %17 = call i32 @rpcrdma_ep_disconnect(i32* %15, %struct.rpcrdma_ia* %16)
  %18 = load i32, i32* @EHOSTUNREACH, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %3, align 8
  %21 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %5, align 8
  %22 = call %struct.rdma_cm_id* @rpcrdma_create_id(%struct.rpcrdma_xprt* %20, %struct.rpcrdma_ia* %21)
  store %struct.rdma_cm_id* %22, %struct.rdma_cm_id** %6, align 8
  %23 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  %24 = call i64 @IS_ERR(%struct.rdma_cm_id* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %64

27:                                               ; preds = %2
  %28 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  store %struct.rdma_cm_id* %28, %struct.rdma_cm_id** %7, align 8
  %29 = load i32, i32* @ENETUNREACH, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %5, align 8
  %32 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %31, i32 0, i32 0
  %33 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %32, align 8
  %34 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  %37 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %61

42:                                               ; preds = %27
  %43 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  %44 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %5, align 8
  %45 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %48 = call i32 @rdma_create_qp(%struct.rdma_cm_id* %43, i32 %46, %struct.ib_qp_init_attr* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %61

52:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  %53 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %5, align 8
  %54 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %53, i32 0, i32 0
  %55 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %54, align 8
  store %struct.rdma_cm_id* %55, %struct.rdma_cm_id** %7, align 8
  %56 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  %57 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %5, align 8
  %58 = getelementptr inbounds %struct.rpcrdma_ia, %struct.rpcrdma_ia* %57, i32 0, i32 0
  store %struct.rdma_cm_id* %56, %struct.rdma_cm_id** %58, align 8
  %59 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %7, align 8
  %60 = call i32 @rdma_destroy_qp(%struct.rdma_cm_id* %59)
  br label %61

61:                                               ; preds = %52, %51, %40
  %62 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %7, align 8
  %63 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %62)
  br label %64

64:                                               ; preds = %61, %26
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @trace_xprtrdma_reconnect(%struct.rpcrdma_xprt*) #1

declare dso_local i32 @rpcrdma_ep_disconnect(i32*, %struct.rpcrdma_ia*) #1

declare dso_local %struct.rdma_cm_id* @rpcrdma_create_id(%struct.rpcrdma_xprt*, %struct.rpcrdma_ia*) #1

declare dso_local i64 @IS_ERR(%struct.rdma_cm_id*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rdma_create_qp(%struct.rdma_cm_id*, i32, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @rdma_destroy_qp(%struct.rdma_cm_id*) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
