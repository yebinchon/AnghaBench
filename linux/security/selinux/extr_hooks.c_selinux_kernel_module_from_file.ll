; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_kernel_module_from_file.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_kernel_module_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.file* }
%struct.inode_security_struct = type { i64 }
%struct.file_security_struct = type { i64 }

@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_SYSTEM = common dso_local global i32 0, align 4
@SYSTEM__MODULE_LOAD = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_FILE = common dso_local global i32 0, align 4
@SECCLASS_FD = common dso_local global i32 0, align 4
@FD__USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @selinux_kernel_module_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_kernel_module_from_file(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.common_audit_data, align 8
  %5 = alloca %struct.inode_security_struct*, align 8
  %6 = alloca %struct.file_security_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = call i64 (...) @current_sid()
  store i64 %9, i64* %7, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = icmp eq %struct.file* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* @SECCLASS_SYSTEM, align 4
  %16 = load i32, i32* @SYSTEM__MODULE_LOAD, align 4
  %17 = call i32 @avc_has_perm(i32* @selinux_state, i64 %13, i64 %14, i32 %15, i32 %16, %struct.common_audit_data* null)
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load i32, i32* @LSM_AUDIT_DATA_FILE, align 4
  %20 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %4, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.file* %21, %struct.file** %23, align 8
  %24 = load %struct.file*, %struct.file** %3, align 8
  %25 = call %struct.file_security_struct* @selinux_file(%struct.file* %24)
  store %struct.file_security_struct* %25, %struct.file_security_struct** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.file_security_struct*, %struct.file_security_struct** %6, align 8
  %28 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %18
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.file_security_struct*, %struct.file_security_struct** %6, align 8
  %34 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @SECCLASS_FD, align 4
  %37 = load i32, i32* @FD__USE, align 4
  %38 = call i32 @avc_has_perm(i32* @selinux_state, i64 %32, i64 %35, i32 %36, i32 %37, %struct.common_audit_data* %4)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %18
  %45 = load %struct.file*, %struct.file** %3, align 8
  %46 = call i32 @file_inode(%struct.file* %45)
  %47 = call %struct.inode_security_struct* @inode_security(i32 %46)
  store %struct.inode_security_struct* %47, %struct.inode_security_struct** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.inode_security_struct*, %struct.inode_security_struct** %5, align 8
  %50 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @SECCLASS_SYSTEM, align 4
  %53 = load i32, i32* @SYSTEM__MODULE_LOAD, align 4
  %54 = call i32 @avc_has_perm(i32* @selinux_state, i64 %48, i64 %51, i32 %52, i32 %53, %struct.common_audit_data* %4)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %44, %41, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @current_sid(...) #1

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, %struct.common_audit_data*) #1

declare dso_local %struct.file_security_struct* @selinux_file(%struct.file*) #1

declare dso_local %struct.inode_security_struct* @inode_security(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
