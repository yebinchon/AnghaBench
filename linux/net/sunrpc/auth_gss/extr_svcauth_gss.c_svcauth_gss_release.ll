; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_svcauth_gss_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_3__, i32*, i32*, %struct.xdr_buf, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.xdr_buf = type { i32 }
%struct.gss_svc_data = type { %struct.TYPE_4__*, i32*, %struct.rpc_gss_wire_cred }
%struct.TYPE_4__ = type { i32 }
%struct.rpc_gss_wire_cred = type { i64, i32 }
%struct.sunrpc_net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@sunrpc_net_id = common dso_local global i32 0, align 4
@RPC_GSS_PROC_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @svcauth_gss_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_gss_release(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.gss_svc_data*, align 8
  %4 = alloca %struct.rpc_gss_wire_cred*, align 8
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunrpc_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.gss_svc_data*
  store %struct.gss_svc_data* %11, %struct.gss_svc_data** %3, align 8
  %12 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %13 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %12, i32 0, i32 2
  store %struct.rpc_gss_wire_cred* %13, %struct.rpc_gss_wire_cred** %4, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %15 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %14, i32 0, i32 3
  store %struct.xdr_buf* %15, %struct.xdr_buf** %5, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %19 = call i32 @SVC_NET(%struct.svc_rqst* %18)
  %20 = load i32, i32* @sunrpc_net_id, align 4
  %21 = call %struct.sunrpc_net* @net_generic(i32 %19, i32 %20)
  store %struct.sunrpc_net* %21, %struct.sunrpc_net** %7, align 8
  %22 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RPC_GSS_PROC_DATA, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %58

28:                                               ; preds = %1
  %29 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %30 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %58

34:                                               ; preds = %28
  %35 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %36 = call i32 @total_buf_len(%struct.xdr_buf* %35)
  %37 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %38 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rpc_gss_wire_cred*, %struct.rpc_gss_wire_cred** %4, align 8
  %40 = getelementptr inbounds %struct.rpc_gss_wire_cred, %struct.rpc_gss_wire_cred* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %57 [
    i32 129, label %42
    i32 130, label %43
    i32 128, label %50
  ]

42:                                               ; preds = %34
  br label %57

43:                                               ; preds = %34
  %44 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %45 = call i32 @svcauth_gss_wrap_resp_integ(%struct.svc_rqst* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %59

49:                                               ; preds = %43
  br label %57

50:                                               ; preds = %34
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %52 = call i32 @svcauth_gss_wrap_resp_priv(%struct.svc_rqst* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %59

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %34, %56, %49, %42
  br label %58

58:                                               ; preds = %57, %33, %27
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %55, %48
  %60 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %61 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %66 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @auth_domain_put(i32* %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %71 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  %72 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %73 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @auth_domain_put(i32* %79)
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %83 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %85 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %91 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @put_group_info(i32* %93)
  br label %95

95:                                               ; preds = %89, %81
  %96 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %97 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  %99 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %100 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = icmp ne %struct.TYPE_4__* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %95
  %104 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %105 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.sunrpc_net*, %struct.sunrpc_net** %7, align 8
  %109 = getelementptr inbounds %struct.sunrpc_net, %struct.sunrpc_net* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cache_put(i32* %107, i32 %110)
  br label %112

112:                                              ; preds = %103, %95
  %113 = load %struct.gss_svc_data*, %struct.gss_svc_data** %3, align 8
  %114 = getelementptr inbounds %struct.gss_svc_data, %struct.gss_svc_data* %113, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %114, align 8
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local %struct.sunrpc_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @total_buf_len(%struct.xdr_buf*) #1

declare dso_local i32 @svcauth_gss_wrap_resp_integ(%struct.svc_rqst*) #1

declare dso_local i32 @svcauth_gss_wrap_resp_priv(%struct.svc_rqst*) #1

declare dso_local i32 @auth_domain_put(i32*) #1

declare dso_local i32 @put_group_info(i32*) #1

declare dso_local i32 @cache_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
