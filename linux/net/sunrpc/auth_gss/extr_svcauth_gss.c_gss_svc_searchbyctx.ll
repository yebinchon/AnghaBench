; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_svc_searchbyctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_gss_svc_searchbyctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc = type { i32, i32 }
%struct.cache_detail = type { i32 }
%struct.xdr_netobj = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rsc* (%struct.cache_detail*, %struct.xdr_netobj*)* @gss_svc_searchbyctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rsc* @gss_svc_searchbyctx(%struct.cache_detail* %0, %struct.xdr_netobj* %1) #0 {
  %3 = alloca %struct.rsc*, align 8
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca %struct.xdr_netobj*, align 8
  %6 = alloca %struct.rsc, align 4
  %7 = alloca %struct.rsc*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %5, align 8
  %8 = call i32 @memset(%struct.rsc* %6, i32 0, i32 8)
  %9 = getelementptr inbounds %struct.rsc, %struct.rsc* %6, i32 0, i32 1
  %10 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %11 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %14 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @dup_to_netobj(i32* %9, i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.rsc* null, %struct.rsc** %3, align 8
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %21 = call %struct.rsc* @rsc_lookup(%struct.cache_detail* %20, %struct.rsc* %6)
  store %struct.rsc* %21, %struct.rsc** %7, align 8
  %22 = call i32 @rsc_free(%struct.rsc* %6)
  %23 = load %struct.rsc*, %struct.rsc** %7, align 8
  %24 = icmp ne %struct.rsc* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store %struct.rsc* null, %struct.rsc** %3, align 8
  br label %35

26:                                               ; preds = %19
  %27 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %28 = load %struct.rsc*, %struct.rsc** %7, align 8
  %29 = getelementptr inbounds %struct.rsc, %struct.rsc* %28, i32 0, i32 0
  %30 = call i64 @cache_check(%struct.cache_detail* %27, i32* %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store %struct.rsc* null, %struct.rsc** %3, align 8
  br label %35

33:                                               ; preds = %26
  %34 = load %struct.rsc*, %struct.rsc** %7, align 8
  store %struct.rsc* %34, %struct.rsc** %3, align 8
  br label %35

35:                                               ; preds = %33, %32, %25, %18
  %36 = load %struct.rsc*, %struct.rsc** %3, align 8
  ret %struct.rsc* %36
}

declare dso_local i32 @memset(%struct.rsc*, i32, i32) #1

declare dso_local i64 @dup_to_netobj(i32*, i32, i32) #1

declare dso_local %struct.rsc* @rsc_lookup(%struct.cache_detail*, %struct.rsc*) #1

declare dso_local i32 @rsc_free(%struct.rsc*) #1

declare dso_local i64 @cache_check(%struct.cache_detail*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
