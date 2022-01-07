; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_checkpoint_is_mounted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_checkpoint_is_mounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i64 }
%struct.nilfs_root = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@NILFS_ROOT_INO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_checkpoint_is_mounted(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca %struct.nilfs_root*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %12, align 8
  store %struct.the_nilfs* %13, %struct.the_nilfs** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %23 = call i64 @nilfs_last_cno(%struct.the_nilfs* %22)
  %24 = icmp sge i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %57

26:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  %27 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call %struct.nilfs_root* @nilfs_lookup_root(%struct.the_nilfs* %27, i64 %28)
  store %struct.nilfs_root* %29, %struct.nilfs_root** %7, align 8
  %30 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %31 = icmp ne %struct.nilfs_root* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %35 = load i32, i32* @NILFS_ROOT_INO, align 4
  %36 = call %struct.inode* @nilfs_ilookup(%struct.super_block* %33, %struct.nilfs_root* %34, i32 %35)
  store %struct.inode* %36, %struct.inode** %8, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call %struct.dentry* @d_find_alias(%struct.inode* %40)
  store %struct.dentry* %41, %struct.dentry** %9, align 8
  %42 = load %struct.dentry*, %struct.dentry** %9, align 8
  %43 = icmp ne %struct.dentry* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.dentry*, %struct.dentry** %9, align 8
  %46 = call i32 @nilfs_tree_is_busy(%struct.dentry* %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = call i32 @dput(%struct.dentry* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = call i32 @iput(%struct.inode* %50)
  br label %52

52:                                               ; preds = %49, %32
  %53 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %54 = call i32 @nilfs_put_root(%struct.nilfs_root* %53)
  br label %55

55:                                               ; preds = %52, %26
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %25, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @nilfs_last_cno(%struct.the_nilfs*) #1

declare dso_local %struct.nilfs_root* @nilfs_lookup_root(%struct.the_nilfs*, i64) #1

declare dso_local %struct.inode* @nilfs_ilookup(%struct.super_block*, %struct.nilfs_root*, i32) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i32 @nilfs_tree_is_busy(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @nilfs_put_root(%struct.nilfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
