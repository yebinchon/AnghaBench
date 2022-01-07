; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_recv_read_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_recv_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32 }
%struct.svc_rqst = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32* }
%struct.svc_rdma_recv_ctxt = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i32, i32*, i32* }
%struct.svc_rdma_read_info = type { i32, i64, i64, i64, %struct.svc_rdma_recv_ctxt* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_recv_read_chunk(%struct.svcxprt_rdma* %0, %struct.svc_rqst* %1, %struct.svc_rdma_recv_ctxt* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svcxprt_rdma*, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.svc_rdma_read_info*, align 8
  %11 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %6, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %7, align 8
  store %struct.svc_rdma_recv_ctxt* %2, %struct.svc_rdma_recv_ctxt** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %13 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %8, align 8
  %19 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %17, i32* %22, align 4
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %24 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %8, align 8
  %30 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %28, i32* %33, align 4
  %34 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %8, align 8
  %35 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %8, align 8
  %38 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 8
  %40 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %8, align 8
  %41 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %8, align 8
  %44 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %47 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %8, align 8
  %51 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %54 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %8, align 8
  %58 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %6, align 8
  %61 = call %struct.svc_rdma_read_info* @svc_rdma_read_info_alloc(%struct.svcxprt_rdma* %60)
  store %struct.svc_rdma_read_info* %61, %struct.svc_rdma_read_info** %10, align 8
  %62 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %10, align 8
  %63 = icmp ne %struct.svc_rdma_read_info* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %4
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %110

67:                                               ; preds = %4
  %68 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %8, align 8
  %69 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %10, align 8
  %70 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %69, i32 0, i32 4
  store %struct.svc_rdma_recv_ctxt* %68, %struct.svc_rdma_recv_ctxt** %70, align 8
  %71 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %10, align 8
  %72 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %10, align 8
  %74 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = call i64 @be32_to_cpup(i32* %76)
  %78 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %10, align 8
  %79 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %10, align 8
  %81 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %86 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %10, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @svc_rdma_build_normal_read_chunk(%struct.svc_rqst* %85, %struct.svc_rdma_read_info* %86, i32* %87)
  store i32 %88, i32* %11, align 4
  br label %94

89:                                               ; preds = %67
  %90 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %91 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %10, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @svc_rdma_build_pz_read_chunk(%struct.svc_rqst* %90, %struct.svc_rdma_read_info* %91, i32* %92)
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %106

98:                                               ; preds = %94
  %99 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %10, align 8
  %100 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %99, i32 0, i32 0
  %101 = call i32 @svc_rdma_post_chunk_ctxt(i32* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %106

105:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %110

106:                                              ; preds = %104, %97
  %107 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %10, align 8
  %108 = call i32 @svc_rdma_read_info_free(%struct.svc_rdma_read_info* %107)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %105, %64
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.svc_rdma_read_info* @svc_rdma_read_info_alloc(%struct.svcxprt_rdma*) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i32 @svc_rdma_build_normal_read_chunk(%struct.svc_rqst*, %struct.svc_rdma_read_info*, i32*) #1

declare dso_local i32 @svc_rdma_build_pz_read_chunk(%struct.svc_rqst*, %struct.svc_rdma_read_info*, i32*) #1

declare dso_local i32 @svc_rdma_post_chunk_ctxt(i32*) #1

declare dso_local i32 @svc_rdma_read_info_free(%struct.svc_rdma_read_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
