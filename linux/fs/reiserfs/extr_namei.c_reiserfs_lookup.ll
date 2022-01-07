; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dentry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.reiserfs_dir_entry = type { i32, i32* }
%struct.cpu_key = type { i32 }

@path_to_entry = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@NAME_FOUND = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@S_PRIVATE = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @reiserfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @reiserfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.reiserfs_dir_entry, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  %11 = load i32, i32* @path_to_entry, align 4
  %12 = call i32 @INITIALIZE_PATH(i32 %11)
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @REISERFS_MAX_NAME(i32 %17)
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @ENAMETOOLONG, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.dentry* @ERR_PTR(i32 %26)
  store %struct.dentry* %27, %struct.dentry** %4, align 8
  br label %96

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @reiserfs_write_lock(%struct.TYPE_6__* %31)
  %33 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %10, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @reiserfs_find_entry(%struct.inode* %34, i32 %38, i64 %42, i32* @path_to_entry, %struct.reiserfs_dir_entry* %10)
  store i32 %43, i32* %8, align 4
  %44 = call i32 @pathrelse(i32* @path_to_entry)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @NAME_FOUND, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %28
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %10, i32 0, i32 0
  %53 = bitcast i32* %52 to %struct.cpu_key*
  %54 = call %struct.inode* @reiserfs_iget(%struct.TYPE_6__* %51, %struct.cpu_key* %53)
  store %struct.inode* %54, %struct.inode** %9, align 8
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = icmp ne %struct.inode* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = call i64 @IS_ERR(%struct.inode* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57, %48
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i32 @reiserfs_write_unlock(%struct.TYPE_6__* %64)
  %66 = load i32, i32* @EACCES, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.dentry* @ERR_PTR(i32 %67)
  store %struct.dentry* %68, %struct.dentry** %4, align 8
  br label %96

69:                                               ; preds = %57
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = call i64 @IS_PRIVATE(%struct.inode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* @S_PRIVATE, align 4
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %69
  br label %80

80:                                               ; preds = %79, %28
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call i32 @reiserfs_write_unlock(%struct.TYPE_6__* %83)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @IO_ERROR, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.dentry* @ERR_PTR(i32 %90)
  store %struct.dentry* %91, %struct.dentry** %4, align 8
  br label %96

92:                                               ; preds = %80
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = load %struct.dentry*, %struct.dentry** %6, align 8
  %95 = call %struct.dentry* @d_splice_alias(%struct.inode* %93, %struct.dentry* %94)
  store %struct.dentry* %95, %struct.dentry** %4, align 8
  br label %96

96:                                               ; preds = %92, %88, %61, %24
  %97 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %97
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i64 @REISERFS_MAX_NAME(i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @reiserfs_find_entry(%struct.inode*, i32, i64, i32*, %struct.reiserfs_dir_entry*) #1

declare dso_local i32 @pathrelse(i32*) #1

declare dso_local %struct.inode* @reiserfs_iget(%struct.TYPE_6__*, %struct.cpu_key*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_PRIVATE(%struct.inode*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
