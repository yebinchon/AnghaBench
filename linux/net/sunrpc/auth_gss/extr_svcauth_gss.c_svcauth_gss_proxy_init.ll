; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_proxy_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_proxy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvec* }
%struct.kvec = type { i32 }
%struct.rpc_gss_wire_cred = type { i32 }
%struct.xdr_netobj = type { i32, i32* }
%struct.gssp_upcall_data = type { i32, i32, i32, %struct.xdr_netobj, i32, i32 }
%struct.net = type { i32 }
%struct.sunrpc_net = type { i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4
@SVC_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"RPC:       svcauth_gss: gss major status = %d minor status = %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@SVC_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.rpc_gss_wire_cred*, i32*)* @svcauth_gss_proxy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_proxy_init(%struct.svc_rqst* %0, %struct.rpc_gss_wire_cred* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.rpc_gss_wire_cred*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca %struct.xdr_netobj, align 8
  %10 = alloca %struct.gssp_upcall_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.sunrpc_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.rpc_gss_wire_cred* %1, %struct.rpc_gss_wire_cred** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %17 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.kvec*, %struct.kvec** %18, align 8
  %20 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i64 0
  store %struct.kvec* %20, %struct.kvec** %8, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %22 = call %struct.net* @SVC_NET(%struct.svc_rqst* %21)
  store %struct.net* %22, %struct.net** %14, align 8
  %23 = load %struct.net*, %struct.net** %14, align 8
  %24 = load i32, i32* @sunrpc_net_id, align 4
  %25 = call %struct.sunrpc_net* @net_generic(%struct.net* %23, i32 %24)
  store %struct.sunrpc_net* %25, %struct.sunrpc_net** %15, align 8
  %26 = call i32 @memset(%struct.gssp_upcall_data* %10, i32 0, i32 40)
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %28 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %10, i32 0, i32 5
  %31 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %10, i32 0, i32 4
  %32 = call i32 @gss_read_proxy_verf(%struct.svc_rqst* %27, %struct.rpc_gss_wire_cred* %28, i32* %29, i32* %30, i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %4, align 4
  br label %94

37:                                               ; preds = %3
  %38 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %38, i32* %13, align 4
  %39 = load %struct.net*, %struct.net** %14, align 8
  %40 = call i32 @gssp_accept_sec_context_upcall(%struct.net* %39, %struct.gssp_upcall_data* %10)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %91

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dprintk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48)
  %50 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %67 [
    i32 128, label %52
    i32 129, label %56
  ]

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %10, i32 0, i32 3
  %54 = bitcast %struct.xdr_netobj* %9 to i8*
  %55 = bitcast %struct.xdr_netobj* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  br label %69

56:                                               ; preds = %44
  %57 = load %struct.sunrpc_net*, %struct.sunrpc_net** %15, align 8
  %58 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gss_proxy_save_rsc(i32 %59, %struct.gssp_upcall_data* %10, i32* %11)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %91

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 1
  store i32* %11, i32** %65, align 8
  %66 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %9, i32 0, i32 0
  store i32 4, i32* %66, align 8
  br label %69

67:                                               ; preds = %44
  %68 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %68, i32* %13, align 4
  br label %91

69:                                               ; preds = %64, %52
  %70 = load %struct.sunrpc_net*, %struct.sunrpc_net** %15, align 8
  %71 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %74 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %10, i32 0, i32 0
  %75 = call i64 @gss_write_init_verf(i32 %72, %struct.svc_rqst* %73, %struct.xdr_netobj* %9, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %91

78:                                               ; preds = %69
  %79 = load %struct.kvec*, %struct.kvec** %8, align 8
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %10, i32 0, i32 2
  %82 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.gssp_upcall_data, %struct.gssp_upcall_data* %10, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @gss_write_resv(%struct.kvec* %79, i32 %80, %struct.xdr_netobj* %9, i32* %81, i32 %83, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @SVC_COMPLETE, align 4
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %89, %88, %77, %67, %63, %43
  %92 = call i32 @gssp_free_upcall_data(%struct.gssp_upcall_data* %10)
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %35
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.net* @SVC_NET(%struct.svc_rqst*) #1

declare dso_local %struct.sunrpc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @memset(%struct.gssp_upcall_data*, i32, i32) #1

declare dso_local i32 @gss_read_proxy_verf(%struct.svc_rqst*, %struct.rpc_gss_wire_cred*, i32*, i32*, i32*) #1

declare dso_local i32 @gssp_accept_sec_context_upcall(%struct.net*, %struct.gssp_upcall_data*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gss_proxy_save_rsc(i32, %struct.gssp_upcall_data*, i32*) #1

declare dso_local i64 @gss_write_init_verf(i32, %struct.svc_rqst*, %struct.xdr_netobj*, i32*) #1

declare dso_local i64 @gss_write_resv(%struct.kvec*, i32, %struct.xdr_netobj*, i32*, i32, i32) #1

declare dso_local i32 @gssp_free_upcall_data(%struct.gssp_upcall_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
