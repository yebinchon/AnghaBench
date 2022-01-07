; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_find_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_find_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_expkey = type { i32, i32, i32, %struct.auth_domain* }
%struct.cache_detail = type { i32 }
%struct.auth_domain = type { i32 }
%struct.cache_req = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_expkey* (%struct.cache_detail*, %struct.auth_domain*, i32, i32*, %struct.cache_req*)* @exp_find_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_expkey* @exp_find_key(%struct.cache_detail* %0, %struct.auth_domain* %1, i32 %2, i32* %3, %struct.cache_req* %4) #0 {
  %6 = alloca %struct.svc_expkey*, align 8
  %7 = alloca %struct.cache_detail*, align 8
  %8 = alloca %struct.auth_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cache_req*, align 8
  %12 = alloca %struct.svc_expkey, align 8
  %13 = alloca %struct.svc_expkey*, align 8
  %14 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %7, align 8
  store %struct.auth_domain* %1, %struct.auth_domain** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.cache_req* %4, %struct.cache_req** %11, align 8
  %15 = load %struct.auth_domain*, %struct.auth_domain** %8, align 8
  %16 = icmp ne %struct.auth_domain* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.svc_expkey* @ERR_PTR(i32 %19)
  store %struct.svc_expkey* %20, %struct.svc_expkey** %6, align 8
  br label %53

21:                                               ; preds = %5
  %22 = load %struct.auth_domain*, %struct.auth_domain** %8, align 8
  %23 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %12, i32 0, i32 3
  store %struct.auth_domain* %22, %struct.auth_domain** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %12, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %12, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @key_len(i32 %29)
  %31 = call i32 @memcpy(i32 %27, i32* %28, i32 %30)
  %32 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %33 = call %struct.svc_expkey* @svc_expkey_lookup(%struct.cache_detail* %32, %struct.svc_expkey* %12)
  store %struct.svc_expkey* %33, %struct.svc_expkey** %13, align 8
  %34 = load %struct.svc_expkey*, %struct.svc_expkey** %13, align 8
  %35 = icmp eq %struct.svc_expkey* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.svc_expkey* @ERR_PTR(i32 %38)
  store %struct.svc_expkey* %39, %struct.svc_expkey** %6, align 8
  br label %53

40:                                               ; preds = %21
  %41 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %42 = load %struct.svc_expkey*, %struct.svc_expkey** %13, align 8
  %43 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %42, i32 0, i32 1
  %44 = load %struct.cache_req*, %struct.cache_req** %11, align 8
  %45 = call i32 @cache_check(%struct.cache_detail* %41, i32* %43, %struct.cache_req* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %14, align 4
  %50 = call %struct.svc_expkey* @ERR_PTR(i32 %49)
  store %struct.svc_expkey* %50, %struct.svc_expkey** %6, align 8
  br label %53

51:                                               ; preds = %40
  %52 = load %struct.svc_expkey*, %struct.svc_expkey** %13, align 8
  store %struct.svc_expkey* %52, %struct.svc_expkey** %6, align 8
  br label %53

53:                                               ; preds = %51, %48, %36, %17
  %54 = load %struct.svc_expkey*, %struct.svc_expkey** %6, align 8
  ret %struct.svc_expkey* %54
}

declare dso_local %struct.svc_expkey* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @key_len(i32) #1

declare dso_local %struct.svc_expkey* @svc_expkey_lookup(%struct.cache_detail*, %struct.svc_expkey*) #1

declare dso_local i32 @cache_check(%struct.cache_detail*, i32*, %struct.cache_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
