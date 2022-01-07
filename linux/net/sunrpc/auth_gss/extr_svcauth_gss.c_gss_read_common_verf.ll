; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_read_common_verf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_read_common_verf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_wire_cred = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.kvec = type { i32 }
%struct.xdr_netobj = type { i32 }

@rpc_autherr_badverf = common dso_local global i32 0, align 4
@SVC_DENIED = common dso_local global i32 0, align 4
@RPC_AUTH_NULL = common dso_local global i64 0, align 8
@rpc_autherr_badcred = common dso_local global i32 0, align 4
@RPC_GSS_PROC_INIT = common dso_local global i64 0, align 8
@SVC_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_gss_wire_cred*, %struct.kvec*, i32*, %struct.xdr_netobj*)* @gss_read_common_verf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_read_common_verf(%struct.rpc_gss_wire_cred* %0, %struct.kvec* %1, i32* %2, %struct.xdr_netobj* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_gss_wire_cred*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.xdr_netobj*, align 8
  store %struct.rpc_gss_wire_cred* %0, %struct.rpc_gss_wire_cred** %6, align 8
  store %struct.kvec* %1, %struct.kvec** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.xdr_netobj* %3, %struct.xdr_netobj** %9, align 8
  %10 = load i32, i32* @rpc_autherr_badverf, align 4
  %11 = load i32*, i32** %8, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.kvec*, %struct.kvec** %7, align 8
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @SVC_DENIED, align 4
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load %struct.kvec*, %struct.kvec** %7, align 8
  %20 = call i64 @svc_getnl(%struct.kvec* %19)
  %21 = load i64, i64* @RPC_AUTH_NULL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @SVC_DENIED, align 4
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %18
  %26 = load %struct.kvec*, %struct.kvec** %7, align 8
  %27 = call i64 @svc_getnl(%struct.kvec* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @SVC_DENIED, align 4
  store i32 %30, i32* %5, align 4
  br label %58

31:                                               ; preds = %25
  %32 = load i32, i32* @rpc_autherr_badcred, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %6, align 8
  %35 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RPC_GSS_PROC_INIT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %6, align 8
  %41 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @SVC_DENIED, align 4
  store i32 %46, i32* %5, align 4
  br label %58

47:                                               ; preds = %39, %31
  %48 = load %struct.xdr_netobj*, %struct.xdr_netobj** %9, align 8
  %49 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %6, align 8
  %50 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %49, i32 0, i32 1
  %51 = call i64 @dup_netobj(%struct.xdr_netobj* %48, %struct.TYPE_2__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @rpc_autherr_badverf, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %53, %45, %29, %23, %16
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @svc_getnl(%struct.kvec*) #1

declare dso_local i64 @dup_netobj(%struct.xdr_netobj*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
