; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_read_proxy_verf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_read_proxy_verf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.kvec* }
%struct.kvec = type { i64, i64 }
%struct.rpc_gss_wire_cred = type { i32 }
%struct.xdr_netobj = type { i32 }
%struct.gssp_in_token = type { i32, i64, i32 }

@SVC_DENIED = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.rpc_gss_wire_cred*, i32*, %struct.xdr_netobj*, %struct.gssp_in_token*)* @gss_read_proxy_verf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_read_proxy_verf(%struct.svc_rqst* %0, %struct.rpc_gss_wire_cred* %1, i32* %2, %struct.xdr_netobj* %3, %struct.gssp_in_token* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.rpc_gss_wire_cred*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xdr_netobj*, align 8
  %11 = alloca %struct.gssp_in_token*, align 8
  %12 = alloca %struct.kvec*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.rpc_gss_wire_cred* %1, %struct.rpc_gss_wire_cred** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.xdr_netobj* %3, %struct.xdr_netobj** %10, align 8
  store %struct.gssp_in_token* %4, %struct.gssp_in_token** %11, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %16 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.kvec*, %struct.kvec** %17, align 8
  %19 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i64 0
  store %struct.kvec* %19, %struct.kvec** %12, align 8
  %20 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %8, align 8
  %21 = load %struct.kvec*, %struct.kvec** %12, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.xdr_netobj*, %struct.xdr_netobj** %10, align 8
  %24 = call i32 @gss_read_common_verf(%struct.rpc_gss_wire_cred* %20, %struct.kvec* %21, i32* %22, %struct.xdr_netobj* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %6, align 4
  br label %62

29:                                               ; preds = %5
  %30 = load %struct.kvec*, %struct.kvec** %12, align 8
  %31 = call i64 @svc_getnl(%struct.kvec* %30)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load %struct.kvec*, %struct.kvec** %12, align 8
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %37 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %35, %39
  %41 = icmp sgt i64 %32, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @SVC_DENIED, align 4
  store i32 %43, i32* %6, align 4
  br label %62

44:                                               ; preds = %29
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gssp_in_token*, %struct.gssp_in_token** %11, align 8
  %49 = getelementptr inbounds %struct.gssp_in_token, %struct.gssp_in_token* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.kvec*, %struct.kvec** %12, align 8
  %51 = getelementptr inbounds %struct.kvec, %struct.kvec* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @PAGE_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load %struct.gssp_in_token*, %struct.gssp_in_token** %11, align 8
  %58 = getelementptr inbounds %struct.gssp_in_token, %struct.gssp_in_token* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load %struct.gssp_in_token*, %struct.gssp_in_token** %11, align 8
  %61 = getelementptr inbounds %struct.gssp_in_token, %struct.gssp_in_token* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %44, %42, %27
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @gss_read_common_verf(%struct.rpc_gss_wire_cred*, %struct.kvec*, i32*, %struct.xdr_netobj*) #1

declare dso_local i64 @svc_getnl(%struct.kvec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
