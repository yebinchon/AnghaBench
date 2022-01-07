; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_get_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_get_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i32, %struct.cache_detail*, %struct.path, %struct.auth_domain* }
%struct.path = type { i32 }
%struct.cache_detail = type { i32 }
%struct.auth_domain = type { i32 }
%struct.cache_req = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_export* (%struct.cache_detail*, %struct.auth_domain*, %struct.path*, %struct.cache_req*)* @exp_get_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_export* @exp_get_by_name(%struct.cache_detail* %0, %struct.auth_domain* %1, %struct.path* %2, %struct.cache_req* %3) #0 {
  %5 = alloca %struct.svc_export*, align 8
  %6 = alloca %struct.cache_detail*, align 8
  %7 = alloca %struct.auth_domain*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca %struct.cache_req*, align 8
  %10 = alloca %struct.svc_export*, align 8
  %11 = alloca %struct.svc_export, align 8
  %12 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %6, align 8
  store %struct.auth_domain* %1, %struct.auth_domain** %7, align 8
  store %struct.path* %2, %struct.path** %8, align 8
  store %struct.cache_req* %3, %struct.cache_req** %9, align 8
  %13 = load %struct.auth_domain*, %struct.auth_domain** %7, align 8
  %14 = icmp ne %struct.auth_domain* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.svc_export* @ERR_PTR(i32 %17)
  store %struct.svc_export* %18, %struct.svc_export** %5, align 8
  br label %48

19:                                               ; preds = %4
  %20 = load %struct.auth_domain*, %struct.auth_domain** %7, align 8
  %21 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %11, i32 0, i32 3
  store %struct.auth_domain* %20, %struct.auth_domain** %21, align 8
  %22 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %11, i32 0, i32 2
  %23 = load %struct.path*, %struct.path** %8, align 8
  %24 = bitcast %struct.path* %22 to i8*
  %25 = bitcast %struct.path* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %27 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %11, i32 0, i32 1
  store %struct.cache_detail* %26, %struct.cache_detail** %27, align 8
  %28 = call %struct.svc_export* @svc_export_lookup(%struct.svc_export* %11)
  store %struct.svc_export* %28, %struct.svc_export** %10, align 8
  %29 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %30 = icmp eq %struct.svc_export* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.svc_export* @ERR_PTR(i32 %33)
  store %struct.svc_export* %34, %struct.svc_export** %5, align 8
  br label %48

35:                                               ; preds = %19
  %36 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %37 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %38 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %37, i32 0, i32 0
  %39 = load %struct.cache_req*, %struct.cache_req** %9, align 8
  %40 = call i32 @cache_check(%struct.cache_detail* %36, i32* %38, %struct.cache_req* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %12, align 4
  %45 = call %struct.svc_export* @ERR_PTR(i32 %44)
  store %struct.svc_export* %45, %struct.svc_export** %5, align 8
  br label %48

46:                                               ; preds = %35
  %47 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  store %struct.svc_export* %47, %struct.svc_export** %5, align 8
  br label %48

48:                                               ; preds = %46, %43, %31, %15
  %49 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  ret %struct.svc_export* %49
}

declare dso_local %struct.svc_export* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.svc_export* @svc_export_lookup(%struct.svc_export*) #1

declare dso_local i32 @cache_check(%struct.cache_detail*, i32*, %struct.cache_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
