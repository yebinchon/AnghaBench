; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_decode_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_decode_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_xprt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rpcrdma_rep = type { %struct.xdr_stream }
%struct.xdr_stream = type { i32 }
%struct.rpc_rqst = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcrdma_xprt*, %struct.rpcrdma_rep*, %struct.rpc_rqst*)* @rpcrdma_decode_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrdma_decode_msg(%struct.rpcrdma_xprt* %0, %struct.rpcrdma_rep* %1, %struct.rpc_rqst* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpcrdma_xprt*, align 8
  %6 = alloca %struct.rpcrdma_rep*, align 8
  %7 = alloca %struct.rpc_rqst*, align 8
  %8 = alloca %struct.xdr_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.rpcrdma_xprt* %0, %struct.rpcrdma_xprt** %5, align 8
  store %struct.rpcrdma_rep* %1, %struct.rpcrdma_rep** %6, align 8
  store %struct.rpc_rqst* %2, %struct.rpc_rqst** %7, align 8
  %13 = load %struct.rpcrdma_rep*, %struct.rpcrdma_rep** %6, align 8
  %14 = getelementptr inbounds %struct.rpcrdma_rep, %struct.rpcrdma_rep* %13, i32 0, i32 0
  store %struct.xdr_stream* %14, %struct.xdr_stream** %8, align 8
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %16 = call i64 @decode_read_list(%struct.xdr_stream* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %23 = call i64 @decode_write_list(%struct.xdr_stream* %22, i32* %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %71

28:                                               ; preds = %21
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %30 = call i64 @decode_reply_chunk(%struct.xdr_stream* %29, i32* %10)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %71

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %71

42:                                               ; preds = %35
  %43 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %44 = call i64 @xdr_inline_decode(%struct.xdr_stream* %43, i32 0)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %12, align 8
  %46 = load %struct.xdr_stream*, %struct.xdr_stream** %8, align 8
  %47 = call i32 @xdr_stream_remaining(%struct.xdr_stream* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 3
  %53 = call i64 @rpcrdma_inline_fixup(%struct.rpc_rqst* %48, i8* %49, i32 %50, i32 %52)
  %54 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %55 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %53
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.rpcrdma_xprt*, %struct.rpcrdma_xprt** %5, align 8
  %63 = getelementptr inbounds %struct.rpcrdma_xprt, %struct.rpcrdma_xprt* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @xdr_align_size(i32 %68)
  %70 = add nsw i32 %67, %69
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %42, %39, %32, %25, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @decode_read_list(%struct.xdr_stream*) #1

declare dso_local i64 @decode_write_list(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @decode_reply_chunk(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i32 @xdr_stream_remaining(%struct.xdr_stream*) #1

declare dso_local i64 @rpcrdma_inline_fixup(%struct.rpc_rqst*, i8*, i32, i32) #1

declare dso_local i32 @xdr_align_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
