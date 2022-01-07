; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_rdma_cma_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_rdma_cma_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.svcxprt_rdma*, %struct.TYPE_4__ }
%struct.svcxprt_rdma = type { i32, %struct.svc_xprt }
%struct.svc_xprt = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rdma_cm_event = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"svcrdma: Connection completed on DTO xprt=%p, cm_id=%p\0A\00", align 1
@RDMAXPRT_CONN_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"svcrdma: Disconnect on DTO xprt=%p, cm_id=%p\0A\00", align 1
@XPT_CLOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"svcrdma: Device removal cma_id=%p, xprt = %p, event = %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"svcrdma: Unexpected event on DTO endpoint %p, event = %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @rdma_cma_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_cma_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.svcxprt_rdma*, align 8
  %7 = alloca %struct.svc_xprt*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  %8 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %9 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %5, align 8
  %13 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %14 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %13, i32 0, i32 0
  %15 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %14, align 8
  store %struct.svcxprt_rdma* %15, %struct.svcxprt_rdma** %6, align 8
  %16 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %17 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %16, i32 0, i32 1
  store %struct.svc_xprt* %17, %struct.svc_xprt** %7, align 8
  %18 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = call i32 @trace_svcrdma_cm_event(%struct.rdma_cm_event* %18, %struct.sockaddr* %19)
  %21 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %22 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %67 [
    i32 128, label %24
    i32 129, label %36
    i32 130, label %48
  ]

24:                                               ; preds = %2
  %25 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %26 = call i32 @svc_xprt_get(%struct.svc_xprt* %25)
  %27 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %28 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %29 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.svc_xprt* %27, %struct.rdma_cm_id* %28)
  %30 = load i32, i32* @RDMAXPRT_CONN_PENDING, align 4
  %31 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %32 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %31, i32 0, i32 0
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  %34 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %35 = call i32 @svc_xprt_enqueue(%struct.svc_xprt* %34)
  br label %77

36:                                               ; preds = %2
  %37 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %38 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %39 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.svc_xprt* %37, %struct.rdma_cm_id* %38)
  %40 = load i32, i32* @XPT_CLOSE, align 4
  %41 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %42 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %45 = call i32 @svc_xprt_enqueue(%struct.svc_xprt* %44)
  %46 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %47 = call i32 @svc_xprt_put(%struct.svc_xprt* %46)
  br label %77

48:                                               ; preds = %2
  %49 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %50 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %51 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %52 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rdma_event_msg(i32 %53)
  %55 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %56 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), %struct.rdma_cm_id* %49, %struct.svc_xprt* %50, i32 %54, i32 %57)
  %59 = load i32, i32* @XPT_CLOSE, align 4
  %60 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %61 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %60, i32 0, i32 0
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %64 = call i32 @svc_xprt_enqueue(%struct.svc_xprt* %63)
  %65 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  %66 = call i32 @svc_xprt_put(%struct.svc_xprt* %65)
  br label %77

67:                                               ; preds = %2
  %68 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %69 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %70 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rdma_event_msg(i32 %71)
  %73 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %74 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), %struct.rdma_cm_id* %68, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %67, %48, %36, %24
  ret i32 0
}

declare dso_local i32 @trace_svcrdma_cm_event(%struct.rdma_cm_event*, %struct.sockaddr*) #1

declare dso_local i32 @svc_xprt_get(%struct.svc_xprt*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.svc_xprt*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_put(%struct.svc_xprt*) #1

declare dso_local i32 @rdma_event_msg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
