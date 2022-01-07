; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_encode_reply_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_encode_reply_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rpcrdma_req = type { %struct.rpcrdma_mr_seg*, %struct.xdr_stream }
%struct.rpcrdma_mr_seg = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.rpc_rqst = type { i32, i32 }
%struct.rpcrdma_mr = type { i64, i64 }

@rpcrdma_replych = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.rpc_rqst*, i32)* @rpcrdma_encode_reply_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_encode_reply_chunk(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_req* %1, %struct.rpc_rqst* %2, i32 %3) #0 {
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
  %15 = alloca i32*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %6, align 8
  store %struct.rpcrdma_req* %1, %struct.rpcrdma_req** %7, align 8
  store %struct.rpc_rqst* %2, %struct.rpc_rqst** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %17 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %16, i32 0, i32 1
  store %struct.xdr_stream* %17, %struct.xdr_stream** %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @rpcrdma_replych, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %10, align 8
  %23 = call i32 @encode_item_not_present(%struct.xdr_stream* %22)
  store i32 %23, i32* %5, align 4
  br label %116

24:                                               ; preds = %4
  %25 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %26 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %25, i32 0, i32 0
  %27 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %26, align 8
  store %struct.rpcrdma_mr_seg* %27, %struct.rpcrdma_mr_seg** %11, align 8
  %28 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %29 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %30 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %29, i32 0, i32 1
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %33 = call i32 @rpcrdma_convert_iovs(%struct.rpcrdma_xprt* %28, i32* %30, i32 0, i32 %31, %struct.rpcrdma_mr_seg* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %116

38:                                               ; preds = %24
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %10, align 8
  %40 = call i64 @encode_item_present(%struct.xdr_stream* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EMSGSIZE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %116

45:                                               ; preds = %38
  %46 = load %struct.xdr_stream*, %struct.xdr_stream** %10, align 8
  %47 = call i32* @xdr_reserve_space(%struct.xdr_stream* %46, i32 4)
  store i32* %47, i32** %15, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = icmp ne i32* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @EMSGSIZE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %116

57:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %109, %57
  %59 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %60 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %61 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call %struct.rpcrdma_mr_seg* @rpcrdma_mr_prepare(%struct.rpcrdma_xprt* %59, %struct.rpcrdma_req* %60, %struct.rpcrdma_mr_seg* %61, i32 %62, i32 1, %struct.rpcrdma_mr** %12)
  store %struct.rpcrdma_mr_seg* %63, %struct.rpcrdma_mr_seg** %11, align 8
  %64 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %65 = call i64 @IS_ERR(%struct.rpcrdma_mr_seg* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %69 = call i32 @PTR_ERR(%struct.rpcrdma_mr_seg* %68)
  store i32 %69, i32* %5, align 4
  br label %116

70:                                               ; preds = %58
  %71 = load %struct.xdr_stream*, %struct.xdr_stream** %10, align 8
  %72 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %73 = call i64 @encode_rdma_segment(%struct.xdr_stream* %71, %struct.rpcrdma_mr* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EMSGSIZE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %116

78:                                               ; preds = %70
  %79 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %80 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @trace_xprtrdma_chunk_reply(i32 %81, %struct.rpcrdma_mr* %82, i32 %83)
  %85 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %86 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %91 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %94 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %92
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  %102 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %103 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %78
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %58, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @cpu_to_be32(i32 %113)
  %115 = load i32*, i32** %15, align 8
  store i32 %114, i32* %115, align 4
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %75, %67, %54, %42, %36, %21
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @encode_item_not_present(%struct.xdr_stream*) #1

declare dso_local i32 @rpcrdma_convert_iovs(%struct.rpcrdma_xprt*, i32*, i32, i32, %struct.rpcrdma_mr_seg*) #1

declare dso_local i64 @encode_item_present(%struct.xdr_stream*) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.rpcrdma_mr_seg* @rpcrdma_mr_prepare(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.rpcrdma_mr_seg*, i32, i32, %struct.rpcrdma_mr**) #1

declare dso_local i64 @IS_ERR(%struct.rpcrdma_mr_seg*) #1

declare dso_local i32 @PTR_ERR(%struct.rpcrdma_mr_seg*) #1

declare dso_local i64 @encode_rdma_segment(%struct.xdr_stream*, %struct.rpcrdma_mr*) #1

declare dso_local i32 @trace_xprtrdma_chunk_reply(i32, %struct.rpcrdma_mr*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
