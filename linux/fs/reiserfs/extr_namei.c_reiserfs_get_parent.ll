; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_reiserfs_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i64, i32 }
%struct.reiserfs_dir_entry = type { i32, i32* }
%struct.cpu_key = type { i32 }

@path_to_entry = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@NAME_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @reiserfs_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.reiserfs_dir_entry, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  %8 = load i32, i32* @path_to_entry, align 4
  %9 = call i32 @INITIALIZE_PATH(i32 %8)
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dentry* @ERR_PTR(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %2, align 8
  br label %53

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %6, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @reiserfs_write_lock(i32 %24)
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i32 @reiserfs_find_entry(%struct.inode* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* @path_to_entry, %struct.reiserfs_dir_entry* %6)
  store i32 %27, i32* %4, align 4
  %28 = call i32 @pathrelse(i32* @path_to_entry)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @NAME_FOUND, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %20
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @reiserfs_write_unlock(i32 %35)
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.dentry* @ERR_PTR(i32 %38)
  store %struct.dentry* %39, %struct.dentry** %2, align 8
  br label %53

40:                                               ; preds = %20
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %6, i32 0, i32 0
  %45 = bitcast i32* %44 to %struct.cpu_key*
  %46 = call %struct.inode* @reiserfs_iget(i32 %43, %struct.cpu_key* %45)
  store %struct.inode* %46, %struct.inode** %5, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @reiserfs_write_unlock(i32 %49)
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = call %struct.dentry* @d_obtain_alias(%struct.inode* %51)
  store %struct.dentry* %52, %struct.dentry** %2, align 8
  br label %53

53:                                               ; preds = %40, %32, %16
  %54 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %54
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @reiserfs_find_entry(%struct.inode*, i8*, i32, i32*, %struct.reiserfs_dir_entry*) #1

declare dso_local i32 @pathrelse(i32*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local %struct.inode* @reiserfs_iget(i32, %struct.cpu_key*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
