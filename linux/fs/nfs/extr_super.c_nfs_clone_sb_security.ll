; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_clone_sb_security.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_clone_sb_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.nfs_mount_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@ESTALE = common dso_local global i32 0, align 4
@NFS_CAP_SECURITY_LABEL = common dso_local global i32 0, align 4
@SECURITY_LSM_NATIVE_LABELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_clone_sb_security(%struct.super_block* %0, %struct.dentry* %1, %struct.nfs_mount_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nfs_mount_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nfs_mount_info* %2, %struct.nfs_mount_info** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = call %struct.TYPE_9__* @d_inode(%struct.dentry* %11)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.TYPE_10__* @NFS_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %14, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ESTALE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %74

27:                                               ; preds = %3
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = call %struct.TYPE_10__* @NFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NFS_CAP_SECURITY_LABEL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i64, i64* @SECURITY_LSM_NATIVE_LABELS, align 8
  %37 = load i64, i64* %9, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %35, %27
  %40 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %7, align 8
  %41 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @security_sb_clone_mnt_opts(i32 %44, %struct.super_block* %45, i64 %46, i64* %10)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %74

52:                                               ; preds = %39
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call %struct.TYPE_10__* @NFS_SB(%struct.super_block* %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NFS_CAP_SECURITY_LABEL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @SECURITY_LSM_NATIVE_LABELS, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @NFS_CAP_SECURITY_LABEL, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = call %struct.TYPE_10__* @NFS_SB(%struct.super_block* %68)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %67
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %65, %60, %52
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %50, %24
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_9__* @d_inode(%struct.dentry*) #1

declare dso_local %struct.TYPE_10__* @NFS_SB(%struct.super_block*) #1

declare dso_local i32 @security_sb_clone_mnt_opts(i32, %struct.super_block*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
