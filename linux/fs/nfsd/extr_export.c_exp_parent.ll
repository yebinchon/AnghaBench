; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_exp_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i32 }
%struct.cache_detail = type { i32 }
%struct.auth_domain = type { i32 }
%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_export* (%struct.cache_detail*, %struct.auth_domain*, %struct.path*)* @exp_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_export* @exp_parent(%struct.cache_detail* %0, %struct.auth_domain* %1, %struct.path* %2) #0 {
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca %struct.auth_domain*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.svc_export*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store %struct.auth_domain* %1, %struct.auth_domain** %5, align 8
  store %struct.path* %2, %struct.path** %6, align 8
  %10 = load %struct.path*, %struct.path** %6, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  %13 = call %struct.dentry* @dget(%struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %7, align 8
  %14 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %15 = load %struct.auth_domain*, %struct.auth_domain** %5, align 8
  %16 = load %struct.path*, %struct.path** %6, align 8
  %17 = call %struct.svc_export* @exp_get_by_name(%struct.cache_detail* %14, %struct.auth_domain* %15, %struct.path* %16, i32* null)
  store %struct.svc_export* %17, %struct.svc_export** %8, align 8
  br label %18

18:                                               ; preds = %33, %3
  %19 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.svc_export* %19)
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.path*, %struct.path** %6, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 0
  %27 = load %struct.dentry*, %struct.dentry** %26, align 8
  %28 = call i32 @IS_ROOT(%struct.dentry* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %24, %18
  %32 = phi i1 [ false, %18 ], [ %30, %24 ]
  br i1 %32, label %33, label %49

33:                                               ; preds = %31
  %34 = load %struct.path*, %struct.path** %6, align 8
  %35 = getelementptr inbounds %struct.path, %struct.path* %34, i32 0, i32 0
  %36 = load %struct.dentry*, %struct.dentry** %35, align 8
  %37 = call %struct.dentry* @dget_parent(%struct.dentry* %36)
  store %struct.dentry* %37, %struct.dentry** %9, align 8
  %38 = load %struct.path*, %struct.path** %6, align 8
  %39 = getelementptr inbounds %struct.path, %struct.path* %38, i32 0, i32 0
  %40 = load %struct.dentry*, %struct.dentry** %39, align 8
  %41 = call i32 @dput(%struct.dentry* %40)
  %42 = load %struct.dentry*, %struct.dentry** %9, align 8
  %43 = load %struct.path*, %struct.path** %6, align 8
  %44 = getelementptr inbounds %struct.path, %struct.path* %43, i32 0, i32 0
  store %struct.dentry* %42, %struct.dentry** %44, align 8
  %45 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %46 = load %struct.auth_domain*, %struct.auth_domain** %5, align 8
  %47 = load %struct.path*, %struct.path** %6, align 8
  %48 = call %struct.svc_export* @exp_get_by_name(%struct.cache_detail* %45, %struct.auth_domain* %46, %struct.path* %47, i32* null)
  store %struct.svc_export* %48, %struct.svc_export** %8, align 8
  br label %18

49:                                               ; preds = %31
  %50 = load %struct.path*, %struct.path** %6, align 8
  %51 = getelementptr inbounds %struct.path, %struct.path* %50, i32 0, i32 0
  %52 = load %struct.dentry*, %struct.dentry** %51, align 8
  %53 = call i32 @dput(%struct.dentry* %52)
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = load %struct.path*, %struct.path** %6, align 8
  %56 = getelementptr inbounds %struct.path, %struct.path* %55, i32 0, i32 0
  store %struct.dentry* %54, %struct.dentry** %56, align 8
  %57 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  ret %struct.svc_export* %57
}

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local %struct.svc_export* @exp_get_by_name(%struct.cache_detail*, %struct.auth_domain*, %struct.path*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
