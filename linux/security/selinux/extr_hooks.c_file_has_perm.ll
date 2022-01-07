; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_file_has_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_file_has_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.file = type { i32 }
%struct.file_security_struct = type { i64 }
%struct.inode = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.file* }

@LSM_AUDIT_DATA_FILE = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_FD = common dso_local global i32 0, align 4
@FD__USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.file*, i64)* @file_has_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_has_perm(%struct.cred* %0, %struct.file* %1, i64 %2) #0 {
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file_security_struct*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.common_audit_data, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.file_security_struct* @selinux_file(%struct.file* %12)
  store %struct.file_security_struct* %13, %struct.file_security_struct** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.inode* @file_inode(%struct.file* %14)
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.cred*, %struct.cred** %4, align 8
  %17 = call i64 @cred_sid(%struct.cred* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* @LSM_AUDIT_DATA_FILE, align 4
  %19 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.file* %20, %struct.file** %22, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.file_security_struct*, %struct.file_security_struct** %7, align 8
  %25 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.file_security_struct*, %struct.file_security_struct** %7, align 8
  %31 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @SECCLASS_FD, align 4
  %34 = load i32, i32* @FD__USE, align 4
  %35 = call i32 @avc_has_perm(i32* @selinux_state, i64 %29, i64 %32, i32 %33, i32 %34, %struct.common_audit_data* %9)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %49

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %3
  store i32 0, i32* %11, align 4
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.cred*, %struct.cred** %4, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @inode_has_perm(%struct.cred* %44, %struct.inode* %45, i64 %46, %struct.common_audit_data* %9)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %43, %40
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local %struct.file_security_struct* @selinux_file(%struct.file*) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @cred_sid(%struct.cred*) #1

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @inode_has_perm(%struct.cred*, %struct.inode*, i64, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
