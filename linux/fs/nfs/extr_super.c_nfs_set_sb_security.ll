; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_set_sb_security.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_set_sb_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.nfs_mount_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NFS_CAP_SECURITY_LABEL = common dso_local global i32 0, align 4
@SECURITY_LSM_NATIVE_LABELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_set_sb_security(%struct.super_block* %0, %struct.dentry* %1, %struct.nfs_mount_info* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nfs_mount_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nfs_mount_info* %2, %struct.nfs_mount_info** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.TYPE_4__* @NFS_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NFS_CAP_SECURITY_LABEL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* @SECURITY_LSM_NATIVE_LABELS, align 8
  %19 = load i64, i64* %8, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %17, %3
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @security_sb_set_mnt_opts(%struct.super_block* %22, i32 %27, i64 %28, i64* %9)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %55

33:                                               ; preds = %21
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = call %struct.TYPE_4__* @NFS_SB(%struct.super_block* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NFS_CAP_SECURITY_LABEL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @SECURITY_LSM_NATIVE_LABELS, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @NFS_CAP_SECURITY_LABEL, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = call %struct.TYPE_4__* @NFS_SB(%struct.super_block* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %41, %33
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_4__* @NFS_SB(%struct.super_block*) #1

declare dso_local i32 @security_sb_set_mnt_opts(%struct.super_block*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
