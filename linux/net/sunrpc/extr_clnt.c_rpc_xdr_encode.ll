; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_xdr_encode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_clnt.c_rpc_xdr_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, %struct.rpc_rqst* }
%struct.rpc_rqst = type { %struct.TYPE_6__, i64, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.xdr_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @rpc_xdr_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_xdr_encode(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_rqst*, align 8
  %4 = alloca %struct.xdr_stream, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 1
  %7 = load %struct.rpc_rqst*, %struct.rpc_rqst** %6, align 8
  store %struct.rpc_rqst* %7, %struct.rpc_rqst** %3, align 8
  %8 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %8, i32 0, i32 0
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @xdr_buf_init(%struct.TYPE_6__* %9, i32 %12, i32 %15)
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %18 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %17, i32 0, i32 4
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @xdr_buf_init(%struct.TYPE_6__* %18, i32 %21, i32 %24)
  %26 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %29 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %35 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %34, i32 0, i32 0
  %36 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %37 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %44 = call i32 @xdr_init_encode(%struct.xdr_stream* %4, %struct.TYPE_6__* %35, i32 %42, %struct.rpc_rqst* %43)
  %45 = load %struct.rpc_rqst*, %struct.rpc_rqst** %3, align 8
  %46 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %45, i32 0, i32 0
  %47 = call i32 @xdr_free_bvec(%struct.TYPE_6__* %46)
  %48 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %49 = call i64 @rpc_encode_header(%struct.rpc_task* %48, %struct.xdr_stream* %4)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %1
  br label %57

52:                                               ; preds = %1
  %53 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %54 = call i32 @rpcauth_wrap_req(%struct.rpc_task* %53, %struct.xdr_stream* %4)
  %55 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %56 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %51
  ret void
}

declare dso_local i32 @xdr_buf_init(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @xdr_init_encode(%struct.xdr_stream*, %struct.TYPE_6__*, i32, %struct.rpc_rqst*) #1

declare dso_local i32 @xdr_free_bvec(%struct.TYPE_6__*) #1

declare dso_local i64 @rpc_encode_header(%struct.rpc_task*, %struct.xdr_stream*) #1

declare dso_local i32 @rpcauth_wrap_req(%struct.rpc_task*, %struct.xdr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
