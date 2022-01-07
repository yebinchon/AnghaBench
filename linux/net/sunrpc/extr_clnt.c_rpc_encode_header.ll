; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_encode_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_encode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_4__, %struct.rpc_rqst*, %struct.rpc_clnt* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_rqst = type { i32 }
%struct.rpc_clnt = type { i32, i32 }
%struct.xdr_stream = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@RPC_CALLHDRSIZE = common dso_local global i32 0, align 4
@rpc_call = common dso_local global i32 0, align 4
@RPC_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.xdr_stream*)* @rpc_encode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_encode_header(%struct.rpc_task* %0, %struct.xdr_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.rpc_rqst*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  %10 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %10, i32 0, i32 2
  %12 = load %struct.rpc_clnt*, %struct.rpc_clnt** %11, align 8
  store %struct.rpc_clnt* %12, %struct.rpc_clnt** %6, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %13, i32 0, i32 1
  %15 = load %struct.rpc_rqst*, %struct.rpc_rqst** %14, align 8
  store %struct.rpc_rqst* %15, %struct.rpc_rqst** %7, align 8
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %19 = load i32, i32* @RPC_CALLHDRSIZE, align 4
  %20 = shl i32 %19, 2
  %21 = call i8** @xdr_reserve_space(%struct.xdr_stream* %18, i32 %20)
  store i8** %21, i8*** %8, align 8
  %22 = load i8**, i8*** %8, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %69

25:                                               ; preds = %2
  %26 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  %27 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8**, i8*** %8, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %8, align 8
  store i8* %30, i8** %31, align 8
  %33 = load i32, i32* @rpc_call, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %8, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %8, align 8
  store i8* %35, i8** %36, align 8
  %38 = load i32, i32* @RPC_VERSION, align 4
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load i8**, i8*** %8, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %8, align 8
  store i8* %39, i8** %40, align 8
  %42 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %43 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load i8**, i8*** %8, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %8, align 8
  store i8* %45, i8** %46, align 8
  %48 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %49 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = load i8**, i8*** %8, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %8, align 8
  store i8* %51, i8** %52, align 8
  %54 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %55 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load i8**, i8*** %8, align 8
  store i8* %60, i8** %61, align 8
  %62 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %63 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %64 = call i32 @rpcauth_marshcred(%struct.rpc_task* %62, %struct.xdr_stream* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %25
  br label %69

68:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %76

69:                                               ; preds = %67, %24
  %70 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %71 = call i32 @trace_rpc_bad_callhdr(%struct.rpc_task* %70)
  %72 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @rpc_call_rpcerror(%struct.rpc_task* %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %68
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8** @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @rpcauth_marshcred(%struct.rpc_task*, %struct.xdr_stream*) #1

declare dso_local i32 @trace_rpc_bad_callhdr(%struct.rpc_task*) #1

declare dso_local i32 @rpc_call_rpcerror(%struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
