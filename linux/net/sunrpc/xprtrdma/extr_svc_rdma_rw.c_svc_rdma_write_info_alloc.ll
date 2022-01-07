; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_write_info_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_write_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_write_info = type { %struct.TYPE_4__, i32*, i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.svcxprt_rdma = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@svc_rdma_write_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_rdma_write_info* (%struct.svcxprt_rdma*, i32*)* @svc_rdma_write_info_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_rdma_write_info* @svc_rdma_write_info_alloc(%struct.svcxprt_rdma* %0, i32* %1) #0 {
  %3 = alloca %struct.svc_rdma_write_info*, align 8
  %4 = alloca %struct.svcxprt_rdma*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.svc_rdma_write_info*, align 8
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.svc_rdma_write_info* @kmalloc(i32 40, i32 %7)
  store %struct.svc_rdma_write_info* %8, %struct.svc_rdma_write_info** %6, align 8
  %9 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %6, align 8
  %10 = icmp ne %struct.svc_rdma_write_info* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %6, align 8
  store %struct.svc_rdma_write_info* %12, %struct.svc_rdma_write_info** %3, align 8
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %6, align 8
  %15 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %6, align 8
  %17 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = call i32 @be32_to_cpup(i32* %19)
  %21 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %6, align 8
  %22 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %5, align 8
  %25 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %6, align 8
  %26 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %28 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %6, align 8
  %29 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %28, i32 0, i32 0
  %30 = call i32 @svc_rdma_cc_init(%struct.svcxprt_rdma* %27, %struct.TYPE_4__* %29)
  %31 = load i32, i32* @svc_rdma_write_done, align 4
  %32 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %6, align 8
  %33 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %6, align 8
  store %struct.svc_rdma_write_info* %36, %struct.svc_rdma_write_info** %3, align 8
  br label %37

37:                                               ; preds = %13, %11
  %38 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %3, align 8
  ret %struct.svc_rdma_write_info* %38
}

declare dso_local %struct.svc_rdma_write_info* @kmalloc(i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @svc_rdma_cc_init(%struct.svcxprt_rdma*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
