; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_binder_transfer_file.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_binder_transfer_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.file_security_struct = type { i64 }
%struct.inode_security_struct = type { i64, i32 }
%struct.common_audit_data = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }

@LSM_AUDIT_DATA_PATH = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_FD = common dso_local global i32 0, align 4
@FD__USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.task_struct*, %struct.file*)* @selinux_binder_transfer_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_binder_transfer_file(%struct.task_struct* %0, %struct.task_struct* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.file_security_struct*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode_security_struct*, align 8
  %12 = alloca %struct.common_audit_data, align 8
  %13 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %15 = call i64 @task_sid(%struct.task_struct* %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = call %struct.file_security_struct* @selinux_file(%struct.file* %16)
  store %struct.file_security_struct* %17, %struct.file_security_struct** %9, align 8
  %18 = load %struct.file*, %struct.file** %7, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  store %struct.dentry* %21, %struct.dentry** %10, align 8
  %22 = load i32, i32* @LSM_AUDIT_DATA_PATH, align 4
  %23 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %12, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %12, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = bitcast %struct.TYPE_4__* %25 to i8*
  %29 = bitcast %struct.TYPE_4__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.file_security_struct*, %struct.file_security_struct** %9, align 8
  %32 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %3
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.file_security_struct*, %struct.file_security_struct** %9, align 8
  %38 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @SECCLASS_FD, align 4
  %41 = load i32, i32* @FD__USE, align 4
  %42 = call i32 @avc_has_perm(i32* @selinux_state, i64 %36, i64 %39, i32 %40, i32 %41, %struct.common_audit_data* %12)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %4, align 4
  br label %68

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.dentry*, %struct.dentry** %10, align 8
  %50 = call i32 @d_backing_inode(%struct.dentry* %49)
  %51 = call i32 @IS_PRIVATE(i32 %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %68

55:                                               ; preds = %48
  %56 = load %struct.dentry*, %struct.dentry** %10, align 8
  %57 = call %struct.inode_security_struct* @backing_inode_security(%struct.dentry* %56)
  store %struct.inode_security_struct* %57, %struct.inode_security_struct** %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.inode_security_struct*, %struct.inode_security_struct** %11, align 8
  %60 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.inode_security_struct*, %struct.inode_security_struct** %11, align 8
  %63 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.file*, %struct.file** %7, align 8
  %66 = call i32 @file_to_av(%struct.file* %65)
  %67 = call i32 @avc_has_perm(i32* @selinux_state, i64 %58, i64 %61, i32 %64, i32 %66, %struct.common_audit_data* %12)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %55, %54, %45
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @task_sid(%struct.task_struct*) #1

declare dso_local %struct.file_security_struct* @selinux_file(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @avc_has_perm(i32*, i64, i64, i32, i32, %struct.common_audit_data*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_PRIVATE(i32) #1

declare dso_local i32 @d_backing_inode(%struct.dentry*) #1

declare dso_local %struct.inode_security_struct* @backing_inode_security(%struct.dentry*) #1

declare dso_local i32 @file_to_av(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
