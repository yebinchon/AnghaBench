; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_qp_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_transport.c_qp_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event = type { i32 }
%struct.svc_xprt = type { i32, i32 }
%struct.sockaddr = type { i32 }

@XPT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event*, i8*)* @qp_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qp_event_handler(%struct.ib_event* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.svc_xprt*, align 8
  store %struct.ib_event* %0, %struct.ib_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.svc_xprt*
  store %struct.svc_xprt* %7, %struct.svc_xprt** %5, align 8
  %8 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %9 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %10 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %9, i32 0, i32 1
  %11 = bitcast i32* %10 to %struct.sockaddr*
  %12 = call i32 @trace_svcrdma_qp_error(%struct.ib_event* %8, %struct.sockaddr* %11)
  %13 = load %struct.ib_event*, %struct.ib_event** %3, align 8
  %14 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %18 [
    i32 134, label %16
    i32 136, label %16
    i32 128, label %16
    i32 130, label %16
    i32 133, label %17
    i32 131, label %17
    i32 129, label %17
    i32 132, label %17
    i32 135, label %17
  ]

16:                                               ; preds = %2, %2, %2, %2
  br label %25

17:                                               ; preds = %2, %2, %2, %2, %2
  br label %18

18:                                               ; preds = %2, %17
  %19 = load i32, i32* @XPT_CLOSE, align 4
  %20 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %21 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.svc_xprt*, %struct.svc_xprt** %5, align 8
  %24 = call i32 @svc_xprt_enqueue(%struct.svc_xprt* %23)
  br label %25

25:                                               ; preds = %18, %16
  ret void
}

declare dso_local i32 @trace_svcrdma_qp_error(%struct.ib_event*, %struct.sockaddr*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_enqueue(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
