; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_encode_read_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_encode_read_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rpcrdma_req = type { %struct.rpcrdma_mr_seg*, %struct.xdr_stream }
%struct.rpcrdma_mr_seg = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.rpc_rqst = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rpcrdma_mr = type { i64 }

@rpcrdma_noch = common dso_local global i32 0, align 4
@rpcrdma_areadch = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.rpc_rqst*, i32)* @rpcrdma_encode_read_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_encode_read_list(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_req* %1, %struct.rpc_rqst* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpcrdma_xprt*, align 8
  %7 = alloca %struct.rpcrdma_req*, align 8
  %8 = alloca %struct.rpc_rqst*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xdr_stream*, align 8
  %11 = alloca %struct.rpcrdma_mr_seg*, align 8
  %12 = alloca %struct.rpcrdma_mr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %6, align 8
  store %struct.rpcrdma_req* %1, %struct.rpcrdma_req** %7, align 8
  store %struct.rpc_rqst* %2, %struct.rpc_rqst** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %16 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %15, i32 0, i32 1
  store %struct.xdr_stream* %16, %struct.xdr_stream** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @rpcrdma_noch, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %94

21:                                               ; preds = %4
  %22 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %23 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @rpcrdma_areadch, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %35 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %34, i32 0, i32 0
  %36 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %35, align 8
  store %struct.rpcrdma_mr_seg* %36, %struct.rpcrdma_mr_seg** %11, align 8
  %37 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %38 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %39 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %38, i32 0, i32 1
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %43 = call i32 @rpcrdma_convert_iovs(%struct.rpcrdma_xprt* %37, %struct.TYPE_6__* %39, i32 %40, i32 %41, %struct.rpcrdma_mr_seg* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %5, align 4
  br label %97

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %90, %48
  %50 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %51 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %52 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call %struct.rpcrdma_mr_seg* @rpcrdma_mr_prepare(%struct.rpcrdma_xprt* %50, %struct.rpcrdma_req* %51, %struct.rpcrdma_mr_seg* %52, i32 %53, i32 0, %struct.rpcrdma_mr** %12)
  store %struct.rpcrdma_mr_seg* %54, %struct.rpcrdma_mr_seg** %11, align 8
  %55 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %56 = call i64 @IS_ERR(%struct.rpcrdma_mr_seg* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %60 = call i32 @PTR_ERR(%struct.rpcrdma_mr_seg* %59)
  store i32 %60, i32* %5, align 4
  br label %97

61:                                               ; preds = %49
  %62 = load %struct.xdr_stream*, %struct.xdr_stream** %10, align 8
  %63 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i64 @encode_read_segment(%struct.xdr_stream* %62, %struct.rpcrdma_mr* %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EMSGSIZE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %97

70:                                               ; preds = %61
  %71 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %72 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @trace_xprtrdma_chunk_read(i32 %73, i32 %74, %struct.rpcrdma_mr* %75, i32 %76)
  %78 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %79 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %84 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %70
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %49, label %93

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %93, %20
  %95 = load %struct.xdr_stream*, %struct.xdr_stream** %10, align 8
  %96 = call i32 @encode_item_not_present(%struct.xdr_stream* %95)
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %67, %58, %46
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @rpcrdma_convert_iovs(%struct.rpcrdma_xprt*, %struct.TYPE_6__*, i32, i32, %struct.rpcrdma_mr_seg*) #1

declare dso_local %struct.rpcrdma_mr_seg* @rpcrdma_mr_prepare(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.rpcrdma_mr_seg*, i32, i32, %struct.rpcrdma_mr**) #1

declare dso_local i64 @IS_ERR(%struct.rpcrdma_mr_seg*) #1

declare dso_local i32 @PTR_ERR(%struct.rpcrdma_mr_seg*) #1

declare dso_local i64 @encode_read_segment(%struct.xdr_stream*, %struct.rpcrdma_mr*, i32) #1

declare dso_local i32 @trace_xprtrdma_chunk_read(i32, i32, %struct.rpcrdma_mr*, i32) #1

declare dso_local i32 @encode_item_not_present(%struct.xdr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
