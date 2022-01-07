; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__, %struct.ovl_dir_file* }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.ovl_dir_file = type { %struct.file*, i32, %struct.file* }
%struct.inode = type { i32 }
%struct.path = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @ovl_dir_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_dir_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ovl_dir_file*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.path, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %16, align 8
  store %struct.ovl_dir_file* %17, %struct.ovl_dir_file** %10, align 8
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  store %struct.dentry* %21, %struct.dentry** %11, align 8
  %22 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %10, align 8
  %23 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %22, i32 0, i32 2
  %24 = load %struct.file*, %struct.file** %23, align 8
  store %struct.file* %24, %struct.file** %12, align 8
  %25 = load %struct.dentry*, %struct.dentry** %11, align 8
  %26 = call i32 @ovl_path_type(%struct.dentry* %25)
  %27 = call i32 @OVL_TYPE_UPPER(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %90

30:                                               ; preds = %4
  %31 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %10, align 8
  %32 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %84, label %35

35:                                               ; preds = %30
  %36 = load %struct.file*, %struct.file** %6, align 8
  %37 = call %struct.inode* @file_inode(%struct.file* %36)
  store %struct.inode* %37, %struct.inode** %13, align 8
  %38 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %10, align 8
  %39 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %38, i32 0, i32 0
  %40 = load %struct.file*, %struct.file** %39, align 8
  %41 = call %struct.file* @READ_ONCE(%struct.file* %40)
  store %struct.file* %41, %struct.file** %12, align 8
  %42 = load %struct.file*, %struct.file** %12, align 8
  %43 = icmp ne %struct.file* %42, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %35
  %45 = load %struct.dentry*, %struct.dentry** %11, align 8
  %46 = call i32 @ovl_path_upper(%struct.dentry* %45, %struct.path* %14)
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = call %struct.file* @ovl_path_open(%struct.path* %14, i32 %47)
  store %struct.file* %48, %struct.file** %12, align 8
  %49 = load %struct.inode*, %struct.inode** %13, align 8
  %50 = call i32 @inode_lock(%struct.inode* %49)
  %51 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %10, align 8
  %52 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %51, i32 0, i32 0
  %53 = load %struct.file*, %struct.file** %52, align 8
  %54 = icmp ne %struct.file* %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %44
  %56 = load %struct.file*, %struct.file** %12, align 8
  %57 = call i64 @IS_ERR(%struct.file* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.inode*, %struct.inode** %13, align 8
  %61 = call i32 @inode_unlock(%struct.inode* %60)
  %62 = load %struct.file*, %struct.file** %12, align 8
  %63 = call i32 @PTR_ERR(%struct.file* %62)
  store i32 %63, i32* %5, align 4
  br label %90

64:                                               ; preds = %55
  %65 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %10, align 8
  %66 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %65, i32 0, i32 0
  %67 = load %struct.file*, %struct.file** %12, align 8
  %68 = call i32 @smp_store_release(%struct.file** %66, %struct.file* %67)
  br label %80

69:                                               ; preds = %44
  %70 = load %struct.file*, %struct.file** %12, align 8
  %71 = call i64 @IS_ERR(%struct.file* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load %struct.file*, %struct.file** %12, align 8
  %75 = call i32 @fput(%struct.file* %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %10, align 8
  %78 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %77, i32 0, i32 0
  %79 = load %struct.file*, %struct.file** %78, align 8
  store %struct.file* %79, %struct.file** %12, align 8
  br label %80

80:                                               ; preds = %76, %64
  %81 = load %struct.inode*, %struct.inode** %13, align 8
  %82 = call i32 @inode_unlock(%struct.inode* %81)
  br label %83

83:                                               ; preds = %80, %35
  br label %84

84:                                               ; preds = %83, %30
  %85 = load %struct.file*, %struct.file** %12, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @vfs_fsync_range(%struct.file* %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %84, %59, %29
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @OVL_TYPE_UPPER(i32) #1

declare dso_local i32 @ovl_path_type(%struct.dentry*) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.file* @READ_ONCE(%struct.file*) #1

declare dso_local i32 @ovl_path_upper(%struct.dentry*, %struct.path*) #1

declare dso_local %struct.file* @ovl_path_open(%struct.path*, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @smp_store_release(%struct.file**, %struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @vfs_fsync_range(%struct.file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
