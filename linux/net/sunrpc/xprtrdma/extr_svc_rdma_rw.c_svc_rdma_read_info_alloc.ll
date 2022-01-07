; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_read_info_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_read_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_read_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.svcxprt_rdma = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@svc_rdma_wc_read_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_rdma_read_info* (%struct.svcxprt_rdma*)* @svc_rdma_read_info_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_rdma_read_info* @svc_rdma_read_info_alloc(%struct.svcxprt_rdma* %0) #0 {
  %2 = alloca %struct.svc_rdma_read_info*, align 8
  %3 = alloca %struct.svcxprt_rdma*, align 8
  %4 = alloca %struct.svc_rdma_read_info*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.svc_rdma_read_info* @kmalloc(i32 4, i32 %5)
  store %struct.svc_rdma_read_info* %6, %struct.svc_rdma_read_info** %4, align 8
  %7 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %4, align 8
  %8 = icmp ne %struct.svc_rdma_read_info* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %4, align 8
  store %struct.svc_rdma_read_info* %10, %struct.svc_rdma_read_info** %2, align 8
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %3, align 8
  %13 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %4, align 8
  %14 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %13, i32 0, i32 0
  %15 = call i32 @svc_rdma_cc_init(%struct.svcxprt_rdma* %12, %struct.TYPE_4__* %14)
  %16 = load i32, i32* @svc_rdma_wc_read_done, align 4
  %17 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %4, align 8
  %18 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %4, align 8
  store %struct.svc_rdma_read_info* %21, %struct.svc_rdma_read_info** %2, align 8
  br label %22

22:                                               ; preds = %11, %9
  %23 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %2, align 8
  ret %struct.svc_rdma_read_info* %23
}

declare dso_local %struct.svc_rdma_read_info* @kmalloc(i32, i32) #1

declare dso_local i32 @svc_rdma_cc_init(%struct.svcxprt_rdma*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
