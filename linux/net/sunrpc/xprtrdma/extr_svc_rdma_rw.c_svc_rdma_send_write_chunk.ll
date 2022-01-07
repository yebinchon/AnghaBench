; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_send_write_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_send_write_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.svc_rdma_write_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_send_write_chunk(%struct.svcxprt_rdma* %0, i32* %1, %struct.xdr_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svcxprt_rdma*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca %struct.svc_rdma_write_info*, align 8
  %9 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.xdr_buf* %2, %struct.xdr_buf** %7, align 8
  %10 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %11 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.svc_rdma_write_info* @svc_rdma_write_info_alloc(%struct.svcxprt_rdma* %16, i32* %17)
  store %struct.svc_rdma_write_info* %18, %struct.svc_rdma_write_info** %8, align 8
  %19 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %8, align 8
  %20 = icmp ne %struct.svc_rdma_write_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %8, align 8
  %26 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %27 = call i32 @svc_rdma_send_xdr_pagelist(%struct.svc_rdma_write_info* %25, %struct.xdr_buf* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %46

31:                                               ; preds = %24
  %32 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %8, align 8
  %33 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %32, i32 0, i32 0
  %34 = call i32 @svc_rdma_post_chunk_ctxt(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %46

38:                                               ; preds = %31
  %39 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %40 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @trace_svcrdma_encode_write(i32 %41)
  %43 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %44 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %37, %30
  %47 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %8, align 8
  %48 = call i32 @svc_rdma_write_info_free(%struct.svc_rdma_write_info* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %38, %21, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.svc_rdma_write_info* @svc_rdma_write_info_alloc(%struct.svcxprt_rdma*, i32*) #1

declare dso_local i32 @svc_rdma_send_xdr_pagelist(%struct.svc_rdma_write_info*, %struct.xdr_buf*) #1

declare dso_local i32 @svc_rdma_post_chunk_ctxt(i32*) #1

declare dso_local i32 @trace_svcrdma_encode_write(i32) #1

declare dso_local i32 @svc_rdma_write_info_free(%struct.svc_rdma_write_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
