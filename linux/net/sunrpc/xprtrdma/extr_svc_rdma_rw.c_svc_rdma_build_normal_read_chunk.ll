; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_build_normal_read_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_build_normal_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_rdma_read_info = type { i32, i64, %struct.svc_rdma_recv_ctxt* }
%struct.svc_rdma_recv_ctxt = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_rdma_read_info*, i32*)* @svc_rdma_build_normal_read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_build_normal_read_chunk(%struct.svc_rqst* %0, %struct.svc_rdma_read_info* %1, i32* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_rdma_read_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_rdma_recv_ctxt*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_rdma_read_info* %1, %struct.svc_rdma_read_info** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %10 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %9, i32 0, i32 2
  %11 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %10, align 8
  store %struct.svc_rdma_recv_ctxt* %11, %struct.svc_rdma_recv_ctxt** %7, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %13 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @svc_rdma_build_read_chunk(%struct.svc_rqst* %12, %struct.svc_rdma_read_info* %13, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %101

19:                                               ; preds = %3
  %20 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %21 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %24 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @trace_svcrdma_encode_read(i32 %22, i64 %25)
  %27 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %7, align 8
  %28 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %7, align 8
  %30 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %37 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %7, align 8
  %41 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i64 %39, i64* %45, align 8
  %46 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %7, align 8
  %47 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %54 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %7, align 8
  %58 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %56, i64* %62, align 8
  %63 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %64 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %7, align 8
  %67 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i64 %65, i64* %71, align 8
  %72 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %73 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @XDR_QUADLEN(i32 %74)
  %76 = shl i32 %75, 2
  %77 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %78 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %80 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %7, align 8
  %83 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %86 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %7, align 8
  %89 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %94 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.svc_rdma_recv_ctxt*, %struct.svc_rdma_recv_ctxt** %7, align 8
  %97 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, %struct.svc_rdma_recv_ctxt* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %95
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %19, %18
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local i32 @svc_rdma_build_read_chunk(%struct.svc_rqst*, %struct.svc_rdma_read_info*, i32*) #1

declare dso_local i32 @trace_svcrdma_encode_read(i32, i64) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
