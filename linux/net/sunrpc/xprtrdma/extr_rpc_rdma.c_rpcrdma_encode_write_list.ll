; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_encode_write_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_encode_write_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rpcrdma_req = type { %struct.rpcrdma_mr_seg*, %struct.xdr_stream }
%struct.rpcrdma_mr_seg = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.rpc_rqst = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rpcrdma_mr = type { i64, i64 }

@rpcrdma_writech = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.rpc_rqst*, i32)* @rpcrdma_encode_write_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_encode_write_list(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_req* %1, %struct.rpc_rqst* %2, i32 %3) #0 {
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
  %19 = load i32, i32* @rpcrdma_writech, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %121

22:                                               ; preds = %4
  %23 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %24 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %23, i32 0, i32 0
  %25 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %24, align 8
  store %struct.rpcrdma_mr_seg* %25, %struct.rpcrdma_mr_seg** %11, align 8
  %26 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %27 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %28 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %27, i32 0, i32 1
  %29 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %30 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %38 = call i32 @rpcrdma_convert_iovs(%struct.rpcrdma_xprt* %26, %struct.TYPE_6__* %28, i32 %35, i32 %36, %struct.rpcrdma_mr_seg* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %124

43:                                               ; preds = %22
  %44 = load %struct.xdr_stream*, %struct.xdr_stream** %10, align 8
  %45 = call i64 @encode_item_present(%struct.xdr_stream* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EMSGSIZE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %124

50:                                               ; preds = %43
  %51 = load %struct.xdr_stream*, %struct.xdr_stream** %10, align 8
  %52 = call i32* @xdr_reserve_space(%struct.xdr_stream* %51, i32 4)
  store i32* %52, i32** %15, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = icmp ne i32* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @EMSGSIZE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %124

62:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %114, %62
  %64 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %65 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %66 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call %struct.rpcrdma_mr_seg* @rpcrdma_mr_prepare(%struct.rpcrdma_xprt* %64, %struct.rpcrdma_req* %65, %struct.rpcrdma_mr_seg* %66, i32 %67, i32 1, %struct.rpcrdma_mr** %12)
  store %struct.rpcrdma_mr_seg* %68, %struct.rpcrdma_mr_seg** %11, align 8
  %69 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %70 = call i64 @IS_ERR(%struct.rpcrdma_mr_seg* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.rpcrdma_mr_seg*, %struct.rpcrdma_mr_seg** %11, align 8
  %74 = call i32 @PTR_ERR(%struct.rpcrdma_mr_seg* %73)
  store i32 %74, i32* %5, align 4
  br label %124

75:                                               ; preds = %63
  %76 = load %struct.xdr_stream*, %struct.xdr_stream** %10, align 8
  %77 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %78 = call i64 @encode_rdma_segment(%struct.xdr_stream* %76, %struct.rpcrdma_mr* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EMSGSIZE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %124

83:                                               ; preds = %75
  %84 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %85 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @trace_xprtrdma_chunk_write(i32 %86, %struct.rpcrdma_mr* %87, i32 %88)
  %90 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %91 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %96 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %6, align 8
  %99 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %97
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  %107 = load %struct.rpcrdma_mr*, %struct.rpcrdma_mr** %12, align 8
  %108 = getelementptr inbounds %struct.rpcrdma_mr, %struct.rpcrdma_mr* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %83
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %63, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @cpu_to_be32(i32 %118)
  %120 = load i32*, i32** %15, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %21
  %122 = load %struct.xdr_stream*, %struct.xdr_stream** %10, align 8
  %123 = call i32 @encode_item_not_present(%struct.xdr_stream* %122)
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %121, %80, %72, %59, %47, %41
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @rpcrdma_convert_iovs(%struct.rpcrdma_xprt*, %struct.TYPE_6__*, i32, i32, %struct.rpcrdma_mr_seg*) #1

declare dso_local i64 @encode_item_present(%struct.xdr_stream*) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.rpcrdma_mr_seg* @rpcrdma_mr_prepare(%struct.rpcrdma_xprt*, %struct.rpcrdma_req*, %struct.rpcrdma_mr_seg*, i32, i32, %struct.rpcrdma_mr**) #1

declare dso_local i64 @IS_ERR(%struct.rpcrdma_mr_seg*) #1

declare dso_local i32 @PTR_ERR(%struct.rpcrdma_mr_seg*) #1

declare dso_local i64 @encode_rdma_segment(%struct.xdr_stream*, %struct.rpcrdma_mr*) #1

declare dso_local i32 @trace_xprtrdma_chunk_write(i32, %struct.rpcrdma_mr*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @encode_item_not_present(%struct.xdr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
