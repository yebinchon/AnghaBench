; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_rdma_listen_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_rdma_listen_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rdma_cm_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"svcrdma: Connect request on cma_id=%p, xprt = %p, event = %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"svcrdma: Unexpected event on listening endpoint %p, event = %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @rdma_listen_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdma_listen_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  %6 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %7 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.sockaddr*
  store %struct.sockaddr* %10, %struct.sockaddr** %5, align 8
  %11 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = call i32 @trace_svcrdma_cm_event(%struct.rdma_cm_event* %11, %struct.sockaddr* %12)
  %14 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %15 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %35 [
    i32 128, label %17
  ]

17:                                               ; preds = %2
  %18 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %19 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %20 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %23 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rdma_event_msg(i32 %24)
  %26 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %27 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, %struct.rdma_cm_id*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.rdma_cm_id* %18, i32 %21, i32 %25, i32 %28)
  %30 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %31 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %32 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @handle_connect_req(%struct.rdma_cm_id* %30, i32* %33)
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %37 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %38 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rdma_event_msg(i32 %39)
  %41 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %42 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, %struct.rdma_cm_id*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), %struct.rdma_cm_id* %36, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %35, %17
  ret i32 0
}

declare dso_local i32 @trace_svcrdma_cm_event(%struct.rdma_cm_event*, %struct.sockaddr*) #1

declare dso_local i32 @dprintk(i8*, %struct.rdma_cm_id*, i32, i32, ...) #1

declare dso_local i32 @rdma_event_msg(i32) #1

declare dso_local i32 @handle_connect_req(%struct.rdma_cm_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
