; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_enc_getaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_rpcb_clnt.c_rpcb_enc_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.rpcbind_args = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"RPC: %5u encoding RPCB_%s call (%u, %u, '%s', '%s')\0A\00", align 1
@RPCB_program_sz = common dso_local global i32 0, align 4
@RPCB_version_sz = common dso_local global i32 0, align 4
@RPCBIND_MAXNETIDLEN = common dso_local global i32 0, align 4
@RPCBIND_MAXUADDRLEN = common dso_local global i32 0, align 4
@RPCB_MAXOWNERLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @rpcb_enc_getaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcb_enc_getaddr(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rpcbind_args*, align 8
  %8 = alloca i8**, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.rpcbind_args*
  store %struct.rpcbind_args* %10, %struct.rpcbind_args** %7, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %17 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %25 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %28 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %31 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %34 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %38 = load i32, i32* @RPCB_program_sz, align 4
  %39 = load i32, i32* @RPCB_version_sz, align 4
  %40 = add nsw i32 %38, %39
  %41 = shl i32 %40, 2
  %42 = call i8** @xdr_reserve_space(%struct.xdr_stream* %37, i32 %41)
  store i8** %42, i8*** %8, align 8
  %43 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %44 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load i8**, i8*** %8, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %8, align 8
  store i8* %46, i8** %47, align 8
  %49 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %50 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load i8**, i8*** %8, align 8
  store i8* %52, i8** %53, align 8
  %54 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %55 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %56 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RPCBIND_MAXNETIDLEN, align 4
  %59 = call i32 @encode_rpcb_string(%struct.xdr_stream* %54, i32 %57, i32 %58)
  %60 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %61 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %62 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RPCBIND_MAXUADDRLEN, align 4
  %65 = call i32 @encode_rpcb_string(%struct.xdr_stream* %60, i32 %63, i32 %64)
  %66 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %67 = load %struct.rpcbind_args*, %struct.rpcbind_args** %7, align 8
  %68 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RPCB_MAXOWNERLEN, align 4
  %71 = call i32 @encode_rpcb_string(%struct.xdr_stream* %66, i32 %69, i32 %70)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8** @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @encode_rpcb_string(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
