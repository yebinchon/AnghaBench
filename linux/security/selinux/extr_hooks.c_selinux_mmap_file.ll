; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_mmap_file.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_mmap_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.file = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.file* }

@LSM_AUDIT_DATA_FILE = common dso_local global i32 0, align 4
@FILE__MAP = common dso_local global i32 0, align 4
@selinux_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAP_TYPE = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, i64, i64)* @selinux_mmap_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_mmap_file(%struct.file* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.common_audit_data, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = icmp ne %struct.file* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %4
  %15 = load i32, i32* @LSM_AUDIT_DATA_FILE, align 4
  %16 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.file* %17, %struct.file** %19, align 8
  %20 = call i32 (...) @current_cred()
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = call i32 @file_inode(%struct.file* %21)
  %23 = load i32, i32* @FILE__MAP, align 4
  %24 = call i32 @inode_has_perm(i32 %20, i32 %22, i32 %23, %struct.common_audit_data* %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %45

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @selinux_state, i32 0, i32 0), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.file*, %struct.file** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @MAP_TYPE, align 8
  %40 = and i64 %38, %39
  %41 = load i64, i64* @MAP_SHARED, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @file_map_prot_check(%struct.file* %36, i64 %37, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %35, %27
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @inode_has_perm(i32, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @file_map_prot_check(%struct.file*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
