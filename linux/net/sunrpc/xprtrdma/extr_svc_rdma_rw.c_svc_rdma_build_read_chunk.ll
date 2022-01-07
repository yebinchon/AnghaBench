; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_build_read_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_rw.c_svc_rdma_build_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32** }
%struct.svc_rdma_read_info = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_rdma_read_info*, i32*)* @svc_rdma_build_read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_rdma_build_read_chunk(%struct.svc_rqst* %0, %struct.svc_rdma_read_info* %1, i32* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_rdma_read_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.svc_rdma_read_info* %1, %struct.svc_rdma_read_info** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %15 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %54, %3
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %6, align 8
  %19 = load i32, i32* %17, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @xdr_zero, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %6, align 8
  %26 = ptrtoint i32* %24 to i32
  %27 = call i64 @be32_to_cpup(i32 %26)
  %28 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %29 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br label %32

32:                                               ; preds = %23, %16
  %33 = phi i1 [ false, %16 ], [ %31, %23 ]
  br i1 %33, label %34, label %64

34:                                               ; preds = %32
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %6, align 8
  %37 = ptrtoint i32* %35 to i32
  %38 = call i64 @be32_to_cpup(i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  %41 = ptrtoint i32* %39 to i32
  %42 = call i64 @be32_to_cpup(i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32* @xdr_decode_hyper(i32* %43, i32* %11)
  store i32* %44, i32** %6, align 8
  %45 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @svc_rdma_build_read_segment(%struct.svc_rdma_read_info* %45, %struct.svc_rqst* %46, i64 %47, i64 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  br label %64

54:                                               ; preds = %34
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @trace_svcrdma_encode_rseg(i64 %55, i64 %56, i32 %57)
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %61 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %16

64:                                               ; preds = %53, %32
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.svc_rdma_read_info*, %struct.svc_rdma_read_info** %5, align 8
  %68 = getelementptr inbounds %struct.svc_rdma_read_info, %struct.svc_rdma_read_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ult i32 %66, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %75 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i64 @be32_to_cpup(i32) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32 @svc_rdma_build_read_segment(%struct.svc_rdma_read_info*, %struct.svc_rqst*, i64, i64, i32) #1

declare dso_local i32 @trace_svcrdma_encode_rseg(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
