; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i32, i32 }
%struct.cache_detail = type { i32 }
%struct.auth_domain = type { i32 }
%struct.cache_req = type { i32 }
%struct.nfsd_net = type { i32 }
%struct.svc_expkey = type { i32, i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_export* (%struct.cache_detail*, %struct.auth_domain*, i32, i32*, %struct.cache_req*)* @exp_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_export* @exp_find(%struct.cache_detail* %0, %struct.auth_domain* %1, i32 %2, i32* %3, %struct.cache_req* %4) #0 {
  %6 = alloca %struct.svc_export*, align 8
  %7 = alloca %struct.cache_detail*, align 8
  %8 = alloca %struct.auth_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cache_req*, align 8
  %12 = alloca %struct.svc_export*, align 8
  %13 = alloca %struct.nfsd_net*, align 8
  %14 = alloca %struct.svc_expkey*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %7, align 8
  store %struct.auth_domain* %1, %struct.auth_domain** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.cache_req* %4, %struct.cache_req** %11, align 8
  %15 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %16 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @nfsd_net_id, align 4
  %19 = call %struct.nfsd_net* @net_generic(i32 %17, i32 %18)
  store %struct.nfsd_net* %19, %struct.nfsd_net** %13, align 8
  %20 = load %struct.nfsd_net*, %struct.nfsd_net** %13, align 8
  %21 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.auth_domain*, %struct.auth_domain** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.cache_req*, %struct.cache_req** %11, align 8
  %27 = call %struct.svc_export* @exp_find_key(i32 %22, %struct.auth_domain* %23, i32 %24, i32* %25, %struct.cache_req* %26)
  %28 = bitcast %struct.svc_export* %27 to %struct.svc_expkey*
  store %struct.svc_expkey* %28, %struct.svc_expkey** %14, align 8
  %29 = load %struct.svc_expkey*, %struct.svc_expkey** %14, align 8
  %30 = bitcast %struct.svc_expkey* %29 to %struct.svc_export*
  %31 = call i64 @IS_ERR(%struct.svc_export* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load %struct.svc_expkey*, %struct.svc_expkey** %14, align 8
  %35 = bitcast %struct.svc_expkey* %34 to %struct.svc_export*
  %36 = call %struct.svc_export* @ERR_CAST(%struct.svc_export* %35)
  store %struct.svc_export* %36, %struct.svc_export** %6, align 8
  br label %58

37:                                               ; preds = %5
  %38 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %39 = load %struct.auth_domain*, %struct.auth_domain** %8, align 8
  %40 = load %struct.svc_expkey*, %struct.svc_expkey** %14, align 8
  %41 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %40, i32 0, i32 1
  %42 = load %struct.cache_req*, %struct.cache_req** %11, align 8
  %43 = call %struct.svc_export* @exp_get_by_name(%struct.cache_detail* %38, %struct.auth_domain* %39, i32* %41, %struct.cache_req* %42)
  store %struct.svc_export* %43, %struct.svc_export** %12, align 8
  %44 = load %struct.svc_expkey*, %struct.svc_expkey** %14, align 8
  %45 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %44, i32 0, i32 0
  %46 = load %struct.nfsd_net*, %struct.nfsd_net** %13, align 8
  %47 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cache_put(i32* %45, i32 %48)
  %50 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %51 = call i64 @IS_ERR(%struct.svc_export* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %55 = call %struct.svc_export* @ERR_CAST(%struct.svc_export* %54)
  store %struct.svc_export* %55, %struct.svc_export** %6, align 8
  br label %58

56:                                               ; preds = %37
  %57 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  store %struct.svc_export* %57, %struct.svc_export** %6, align 8
  br label %58

58:                                               ; preds = %56, %53, %33
  %59 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  ret %struct.svc_export* %59
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local %struct.svc_export* @exp_find_key(i32, %struct.auth_domain*, i32, i32*, %struct.cache_req*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local %struct.svc_export* @ERR_CAST(%struct.svc_export*) #1

declare dso_local %struct.svc_export* @exp_get_by_name(%struct.cache_detail*, %struct.auth_domain*, i32*, %struct.cache_req*) #1

declare dso_local i32 @cache_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
