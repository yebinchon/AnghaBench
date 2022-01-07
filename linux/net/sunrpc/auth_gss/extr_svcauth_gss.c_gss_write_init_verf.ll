; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_write_init_verf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_write_init_verf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.xdr_netobj = type { i32 }
%struct.rsc = type { i32, i32 }

@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@GSS_S_NO_CONTEXT = common dso_local global i32 0, align 4
@GSS_SEQ_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, %struct.svc_rqst*, %struct.xdr_netobj*, i32*)* @gss_write_init_verf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_write_init_verf(%struct.cache_detail* %0, %struct.svc_rqst* %1, %struct.xdr_netobj* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_detail*, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.xdr_netobj*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rsc*, align 8
  %11 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %6, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %7, align 8
  store %struct.xdr_netobj* %2, %struct.xdr_netobj** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GSS_S_COMPLETE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %18 = call i32 @gss_write_null_verf(%struct.svc_rqst* %17)
  store i32 %18, i32* %5, align 4
  br label %42

19:                                               ; preds = %4
  %20 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %21 = load %struct.xdr_netobj*, %struct.xdr_netobj** %8, align 8
  %22 = call %struct.rsc* @gss_svc_searchbyctx(%struct.cache_detail* %20, %struct.xdr_netobj* %21)
  store %struct.rsc* %22, %struct.rsc** %10, align 8
  %23 = load %struct.rsc*, %struct.rsc** %10, align 8
  %24 = icmp eq %struct.rsc* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @GSS_S_NO_CONTEXT, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %29 = call i32 @gss_write_null_verf(%struct.svc_rqst* %28)
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %19
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %32 = load %struct.rsc*, %struct.rsc** %10, align 8
  %33 = getelementptr inbounds %struct.rsc, %struct.rsc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GSS_SEQ_WIN, align 4
  %36 = call i32 @gss_write_verf(%struct.svc_rqst* %31, i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.rsc*, %struct.rsc** %10, align 8
  %38 = getelementptr inbounds %struct.rsc, %struct.rsc* %37, i32 0, i32 0
  %39 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %40 = call i32 @cache_put(i32* %38, %struct.cache_detail* %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %30, %25, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @gss_write_null_verf(%struct.svc_rqst*) #1

declare dso_local %struct.rsc* @gss_svc_searchbyctx(%struct.cache_detail*, %struct.xdr_netobj*) #1

declare dso_local i32 @gss_write_verf(%struct.svc_rqst*, i32, i32) #1

declare dso_local i32 @cache_put(i32*, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
