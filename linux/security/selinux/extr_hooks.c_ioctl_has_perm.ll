; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_ioctl_has_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_ioctl_has_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.file = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.lsm_ioctlop_audit* }
%struct.lsm_ioctlop_audit = type { i32, i32 }
%struct.file_security_struct = type { i64 }
%struct.inode = type { i32 }
%struct.inode_security_struct = type { i32, i32 }

@LSM_AUDIT_DATA_IOCTL_OP = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_FD = common dso_local global i32 0, align 4
@FD__USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.file*, i64, i32)* @ioctl_has_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_has_perm(%struct.cred* %0, %struct.file* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.common_audit_data, align 8
  %11 = alloca %struct.file_security_struct*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  %14 = alloca %struct.lsm_ioctlop_audit, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = call %struct.file_security_struct* @selinux_file(%struct.file* %19)
  store %struct.file_security_struct* %20, %struct.file_security_struct** %11, align 8
  %21 = load %struct.file*, %struct.file** %7, align 8
  %22 = call %struct.inode* @file_inode(%struct.file* %21)
  store %struct.inode* %22, %struct.inode** %12, align 8
  %23 = load %struct.cred*, %struct.cred** %6, align 8
  %24 = call i64 @cred_sid(%struct.cred* %23)
  store i64 %24, i64* %15, align 8
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 255
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* @LSM_AUDIT_DATA_IOCTL_OP, align 4
  %30 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.lsm_ioctlop_audit* %14, %struct.lsm_ioctlop_audit** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.lsm_ioctlop_audit*, %struct.lsm_ioctlop_audit** %35, align 8
  %37 = getelementptr inbounds %struct.lsm_ioctlop_audit, %struct.lsm_ioctlop_audit* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.file*, %struct.file** %7, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.lsm_ioctlop_audit*, %struct.lsm_ioctlop_audit** %42, align 8
  %44 = getelementptr inbounds %struct.lsm_ioctlop_audit, %struct.lsm_ioctlop_audit* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load i64, i64* %15, align 8
  %46 = load %struct.file_security_struct*, %struct.file_security_struct** %11, align 8
  %47 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %4
  %51 = load i64, i64* %15, align 8
  %52 = load %struct.file_security_struct*, %struct.file_security_struct** %11, align 8
  %53 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @SECCLASS_FD, align 4
  %56 = load i32, i32* @FD__USE, align 4
  %57 = call i32 @avc_has_perm(i32* @selinux_state, i64 %51, i64 %54, i32 %55, i32 %56, %struct.common_audit_data* %10)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %82

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %4
  %63 = load %struct.inode*, %struct.inode** %12, align 8
  %64 = call i32 @IS_PRIVATE(%struct.inode* %63)
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %84

68:                                               ; preds = %62
  %69 = load %struct.inode*, %struct.inode** %12, align 8
  %70 = call %struct.inode_security_struct* @inode_security(%struct.inode* %69)
  store %struct.inode_security_struct* %70, %struct.inode_security_struct** %13, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %73 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %76 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @avc_has_extended_perms(i32* @selinux_state, i64 %71, i32 %74, i32 %77, i64 %78, i32 %79, i32 %80, %struct.common_audit_data* %10)
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %68, %60
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %67
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.file_security_struct* @selinux_file(%struct.file*) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @cred_sid(%struct.cred*) #1

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, %struct.common_audit_data*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_PRIVATE(%struct.inode*) #1

declare dso_local %struct.inode_security_struct* @inode_security(%struct.inode*) #1

declare dso_local i32 @avc_has_extended_perms(i32*, i64, i32, i32, i64, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
