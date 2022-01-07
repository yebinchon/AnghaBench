; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_send_reply_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_send_reply_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.xdr_buf = type { %struct.TYPE_2__*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.svc_rdma_write_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_send_reply_chunk(%struct.svcxprt_rdma* %0, i32* %1, i32 %2, %struct.xdr_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svcxprt_rdma*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xdr_buf*, align 8
  %10 = alloca %struct.svc_rdma_write_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.xdr_buf* %3, %struct.xdr_buf** %9, align 8
  %13 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.svc_rdma_write_info* @svc_rdma_write_info_alloc(%struct.svcxprt_rdma* %13, i32* %14)
  store %struct.svc_rdma_write_info* %15, %struct.svc_rdma_write_info** %10, align 8
  %16 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %10, align 8
  %17 = icmp ne %struct.svc_rdma_write_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %102

21:                                               ; preds = %4
  %22 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %10, align 8
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %24 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = call i32 @svc_rdma_send_xdr_kvec(%struct.svc_rdma_write_info* %22, %struct.TYPE_2__* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %98

31:                                               ; preds = %21
  %32 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %33 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %31
  %41 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %42 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %10, align 8
  %47 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %48 = call i32 @svc_rdma_send_xdr_pagelist(%struct.svc_rdma_write_info* %46, %struct.xdr_buf* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %98

52:                                               ; preds = %45
  %53 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %54 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %52, %40, %31
  %61 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %62 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %60
  %69 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %10, align 8
  %70 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %71 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 0
  %74 = call i32 @svc_rdma_send_xdr_kvec(%struct.svc_rdma_write_info* %69, %struct.TYPE_2__* %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %98

78:                                               ; preds = %68
  %79 = load %struct.xdr_buf*, %struct.xdr_buf** %9, align 8
  %80 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %78, %60
  %88 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %10, align 8
  %89 = getelementptr inbounds %struct.svc_rdma_write_info, %struct.svc_rdma_write_info* %88, i32 0, i32 0
  %90 = call i32 @svc_rdma_post_chunk_ctxt(i32* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %98

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @trace_svcrdma_encode_reply(i32 %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %102

98:                                               ; preds = %93, %77, %51, %30
  %99 = load %struct.svc_rdma_write_info*, %struct.svc_rdma_write_info** %10, align 8
  %100 = call i32 @svc_rdma_write_info_free(%struct.svc_rdma_write_info* %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %94, %18
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.svc_rdma_write_info* @svc_rdma_write_info_alloc(%struct.svcxprt_rdma*, i32*) #1

declare dso_local i32 @svc_rdma_send_xdr_kvec(%struct.svc_rdma_write_info*, %struct.TYPE_2__*) #1

declare dso_local i32 @svc_rdma_send_xdr_pagelist(%struct.svc_rdma_write_info*, %struct.xdr_buf*) #1

declare dso_local i32 @svc_rdma_post_chunk_ctxt(i32*) #1

declare dso_local i32 @trace_svcrdma_encode_reply(i32) #1

declare dso_local i32 @svc_rdma_write_info_free(%struct.svc_rdma_write_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
