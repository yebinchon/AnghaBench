; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_vec_to_sg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_vec_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rdma_write_info = type { i32 }
%struct.svc_rdma_rw_ctxt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rdma_write_info*, i32, %struct.svc_rdma_rw_ctxt*)* @svc_rdma_vec_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rdma_vec_to_sg(%struct.svc_rdma_write_info* %0, i32 %1, %struct.svc_rdma_rw_ctxt* %2) #0 {
  %4 = alloca %struct.svc_rdma_write_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rdma_rw_ctxt*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  store %struct.svc_rdma_write_info* %0, %struct.svc_rdma_write_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.svc_rdma_rw_ctxt* %2, %struct.svc_rdma_rw_ctxt** %6, align 8
  %8 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %6, align 8
  %9 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %11, %struct.scatterlist** %7, align 8
  %12 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %13 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %12, i64 0
  %14 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sg_set_buf(%struct.scatterlist* %13, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %4, align 8
  %21 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.svc_rdma_rw_ctxt*, %struct.svc_rdma_rw_ctxt** %6, align 8
  %25 = getelementptr inbounds %struct.svc_rdma_rw_ctxt, %struct.svc_rdma_rw_ctxt* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  ret void
}

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
