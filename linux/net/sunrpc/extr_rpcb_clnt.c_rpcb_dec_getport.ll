; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_dec_getport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_dec_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.rpcbind_args = type { i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"RPC: %5u PMAP_%s result: %lu\0A\00", align 1
@USHRT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @rpcb_dec_getport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcb_dec_getport(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rpcbind_args*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.rpcbind_args*
  store %struct.rpcbind_args* %12, %struct.rpcbind_args** %8, align 8
  %13 = load %struct.rpcbind_args*, %struct.rpcbind_args** %8, align 8
  %14 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %16 = call i32* @xdr_inline_decode(%struct.xdr_stream* %15, i32 4)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @be32_to_cpup(i32* %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %29 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %34 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %40, i64 %41)
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @USHRT_MAX, align 8
  %45 = icmp ugt i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %25
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %25
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.rpcbind_args*, %struct.rpcbind_args** %8, align 8
  %55 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %49, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
