; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_try_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_try_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nfs_mount_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.nfs_subversion = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nfs_server* (%struct.nfs_mount_info*, %struct.nfs_subversion*)* }
%struct.nfs_server = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @nfs_try_mount(i32 %0, i8* %1, %struct.nfs_mount_info* %2, %struct.nfs_subversion* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfs_mount_info*, align 8
  %9 = alloca %struct.nfs_subversion*, align 8
  %10 = alloca %struct.nfs_server*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.nfs_mount_info* %2, %struct.nfs_mount_info** %8, align 8
  store %struct.nfs_subversion* %3, %struct.nfs_subversion** %9, align 8
  %11 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %8, align 8
  %12 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %8, align 8
  %19 = load %struct.nfs_subversion*, %struct.nfs_subversion** %9, align 8
  %20 = call %struct.nfs_server* @nfs_try_mount_request(%struct.nfs_mount_info* %18, %struct.nfs_subversion* %19)
  store %struct.nfs_server* %20, %struct.nfs_server** %10, align 8
  br label %30

21:                                               ; preds = %4
  %22 = load %struct.nfs_subversion*, %struct.nfs_subversion** %9, align 8
  %23 = getelementptr inbounds %struct.nfs_subversion, %struct.nfs_subversion* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.nfs_server* (%struct.nfs_mount_info*, %struct.nfs_subversion*)*, %struct.nfs_server* (%struct.nfs_mount_info*, %struct.nfs_subversion*)** %25, align 8
  %27 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %8, align 8
  %28 = load %struct.nfs_subversion*, %struct.nfs_subversion** %9, align 8
  %29 = call %struct.nfs_server* %26(%struct.nfs_mount_info* %27, %struct.nfs_subversion* %28)
  store %struct.nfs_server* %29, %struct.nfs_server** %10, align 8
  br label %30

30:                                               ; preds = %21, %17
  %31 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %32 = call i64 @IS_ERR(%struct.nfs_server* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %36 = call %struct.dentry* @ERR_CAST(%struct.nfs_server* %35)
  store %struct.dentry* %36, %struct.dentry** %5, align 8
  br label %44

37:                                               ; preds = %30
  %38 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %8, align 8
  %42 = load %struct.nfs_subversion*, %struct.nfs_subversion** %9, align 8
  %43 = call %struct.dentry* @nfs_fs_mount_common(%struct.nfs_server* %38, i32 %39, i8* %40, %struct.nfs_mount_info* %41, %struct.nfs_subversion* %42)
  store %struct.dentry* %43, %struct.dentry** %5, align 8
  br label %44

44:                                               ; preds = %37, %34
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %45
}

declare dso_local %struct.nfs_server* @nfs_try_mount_request(%struct.nfs_mount_info*, %struct.nfs_subversion*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_server*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.nfs_server*) #1

declare dso_local %struct.dentry* @nfs_fs_mount_common(%struct.nfs_server*, i32, i8*, %struct.nfs_mount_info*, %struct.nfs_subversion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
