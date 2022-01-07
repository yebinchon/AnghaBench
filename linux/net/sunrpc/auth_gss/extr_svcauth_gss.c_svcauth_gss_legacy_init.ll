; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_legacy_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_legacy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.kvec* }
%struct.kvec = type { i32 }
%struct.TYPE_3__ = type { %struct.kvec* }
%struct.rpc_gss_wire_cred = type { i32 }
%struct.rsi = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sunrpc_net = type { i32, i32 }

@sunrpc_net_id = common dso_local global i32 0, align 4
@SVC_CLOSE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SVC_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.rpc_gss_wire_cred*, i32*)* @svcauth_gss_legacy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_legacy_init(%struct.svc_rqst* %0, %struct.rpc_gss_wire_cred* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.rpc_gss_wire_cred*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca %struct.rsi*, align 8
  %11 = alloca %struct.rsi, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sunrpc_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.rpc_gss_wire_cred* %1, %struct.rpc_gss_wire_cred** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %15 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.kvec*, %struct.kvec** %16, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i64 0
  store %struct.kvec* %18, %struct.kvec** %8, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.kvec*, %struct.kvec** %21, align 8
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %22, i64 0
  store %struct.kvec* %23, %struct.kvec** %9, align 8
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %25 = call i32 @SVC_NET(%struct.svc_rqst* %24)
  %26 = load i32, i32* @sunrpc_net_id, align 4
  %27 = call %struct.sunrpc_net* @net_generic(i32 %25, i32 %26)
  store %struct.sunrpc_net* %27, %struct.sunrpc_net** %13, align 8
  %28 = call i32 @memset(%struct.rsi* %11, i32 0, i32 28)
  %29 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %6, align 8
  %30 = load %struct.kvec*, %struct.kvec** %8, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds %struct.rsi, %struct.rsi* %11, i32 0, i32 6
  %33 = getelementptr inbounds %struct.rsi, %struct.rsi* %11, i32 0, i32 5
  %34 = call i32 @gss_read_verf(%struct.rpc_gss_wire_cred* %29, %struct.kvec* %30, i32* %31, i32* %32, i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %100

39:                                               ; preds = %3
  %40 = load %struct.sunrpc_net*, %struct.sunrpc_net** %13, align 8
  %41 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.rsi* @rsi_lookup(i32 %42, %struct.rsi* %11)
  store %struct.rsi* %43, %struct.rsi** %10, align 8
  %44 = call i32 @rsi_free(%struct.rsi* %11)
  %45 = load %struct.rsi*, %struct.rsi** %10, align 8
  %46 = icmp ne %struct.rsi* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %48, i32* %4, align 4
  br label %100

49:                                               ; preds = %39
  %50 = load %struct.sunrpc_net*, %struct.sunrpc_net** %13, align 8
  %51 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rsi*, %struct.rsi** %10, align 8
  %54 = getelementptr inbounds %struct.rsi, %struct.rsi* %53, i32 0, i32 0
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %56 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %55, i32 0, i32 0
  %57 = call i64 @cache_check(i32 %52, i32* %54, i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %60, i32* %4, align 4
  br label %100

61:                                               ; preds = %49
  %62 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.sunrpc_net*, %struct.sunrpc_net** %13, align 8
  %64 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %67 = load %struct.rsi*, %struct.rsi** %10, align 8
  %68 = getelementptr inbounds %struct.rsi, %struct.rsi* %67, i32 0, i32 4
  %69 = load %struct.rsi*, %struct.rsi** %10, align 8
  %70 = getelementptr inbounds %struct.rsi, %struct.rsi* %69, i32 0, i32 2
  %71 = call i64 @gss_write_init_verf(i32 %65, %struct.svc_rqst* %66, i32* %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %92

74:                                               ; preds = %61
  %75 = load %struct.kvec*, %struct.kvec** %9, align 8
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = load %struct.rsi*, %struct.rsi** %10, align 8
  %78 = getelementptr inbounds %struct.rsi, %struct.rsi* %77, i32 0, i32 4
  %79 = load %struct.rsi*, %struct.rsi** %10, align 8
  %80 = getelementptr inbounds %struct.rsi, %struct.rsi* %79, i32 0, i32 3
  %81 = load %struct.rsi*, %struct.rsi** %10, align 8
  %82 = getelementptr inbounds %struct.rsi, %struct.rsi* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rsi*, %struct.rsi** %10, align 8
  %85 = getelementptr inbounds %struct.rsi, %struct.rsi* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @gss_write_resv(%struct.kvec* %75, i32 %76, i32* %78, i32* %80, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  br label %92

90:                                               ; preds = %74
  %91 = load i32, i32* @SVC_COMPLETE, align 4
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %90, %89, %73
  %93 = load %struct.rsi*, %struct.rsi** %10, align 8
  %94 = getelementptr inbounds %struct.rsi, %struct.rsi* %93, i32 0, i32 0
  %95 = load %struct.sunrpc_net*, %struct.sunrpc_net** %13, align 8
  %96 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @cache_put(i32* %94, i32 %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %92, %59, %47, %37
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.sunrpc_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @memset(%struct.rsi*, i32, i32) #1

declare dso_local i32 @gss_read_verf(%struct.rpc_gss_wire_cred*, %struct.kvec*, i32*, i32*, i32*) #1

declare dso_local %struct.rsi* @rsi_lookup(i32, %struct.rsi*) #1

declare dso_local i32 @rsi_free(%struct.rsi*) #1

declare dso_local i64 @cache_check(i32, i32*, i32*) #1

declare dso_local i64 @gss_write_init_verf(i32, %struct.svc_rqst*, i32*, i32*) #1

declare dso_local i64 @gss_write_resv(%struct.kvec*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @cache_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
