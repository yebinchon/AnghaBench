; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_path_notify.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_path_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.path }

@LSM_AUDIT_DATA_PATH = common dso_local global i32 0, align 4
@FILE__WATCH_MOUNT = common dso_local global i32 0, align 4
@FILE__WATCH_SB = common dso_local global i32 0, align 4
@FILESYSTEM__WATCH = common dso_local global i32 0, align 4
@FILE__WATCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ALL_FSNOTIFY_PERM_EVENTS = common dso_local global i32 0, align 4
@FILE__WATCH_WITH_PERM = common dso_local global i32 0, align 4
@FS_ACCESS = common dso_local global i32 0, align 4
@FS_ACCESS_PERM = common dso_local global i32 0, align 4
@FS_CLOSE_NOWRITE = common dso_local global i32 0, align 4
@FILE__WATCH_READS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32, i32)* @selinux_path_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_path_notify(%struct.path* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.common_audit_data, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @LSM_AUDIT_DATA_PATH, align 4
  %12 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.path*, %struct.path** %5, align 8
  %16 = bitcast %struct.path* %14 to i8*
  %17 = bitcast %struct.path* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %38 [
    i32 128, label %19
    i32 129, label %21
    i32 130, label %36
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @FILE__WATCH_MOUNT, align 4
  store i32 %20, i32* %9, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load i32, i32* @FILE__WATCH_SB, align 4
  store i32 %22, i32* %9, align 4
  %23 = call i32 (...) @current_cred()
  %24 = load %struct.path*, %struct.path** %5, align 8
  %25 = getelementptr inbounds %struct.path, %struct.path* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FILESYSTEM__WATCH, align 4
  %30 = call i32 @superblock_has_perm(i32 %23, i32 %28, i32 %29, %struct.common_audit_data* %10)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %68

35:                                               ; preds = %21
  br label %41

36:                                               ; preds = %3
  %37 = load i32, i32* @FILE__WATCH, align 4
  store i32 %37, i32* %9, align 4
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %68

41:                                               ; preds = %36, %35, %19
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ALL_FSNOTIFY_PERM_EVENTS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @FILE__WATCH_WITH_PERM, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @FS_ACCESS, align 4
  %53 = load i32, i32* @FS_ACCESS_PERM, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FS_CLOSE_NOWRITE, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %51, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @FILE__WATCH_READS, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %50
  %64 = call i32 (...) @current_cred()
  %65 = load %struct.path*, %struct.path** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @path_has_perm(i32 %64, %struct.path* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %38, %33
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @superblock_has_perm(i32, i32, i32, %struct.common_audit_data*) #2

declare dso_local i32 @current_cred(...) #2

declare dso_local i32 @path_has_perm(i32, %struct.path*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
