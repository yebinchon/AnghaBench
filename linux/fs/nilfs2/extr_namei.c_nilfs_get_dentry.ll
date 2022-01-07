; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_get_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.nilfs_root = type { i32 }
%struct.inode = type { i64 }

@NILFS_ROOT_INO = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i32, i32, i64)* @nilfs_get_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nilfs_get_dentry(%struct.super_block* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nilfs_root*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call i32 @NILFS_FIRST_INO(%struct.super_block* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NILFS_ROOT_INO, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @ESTALE, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.dentry* @ERR_PTR(i32 %22)
  store %struct.dentry* %23, %struct.dentry** %5, align 8
  br label %67

24:                                               ; preds = %16, %4
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.nilfs_root* @nilfs_lookup_root(i32 %27, i32 %28)
  store %struct.nilfs_root* %29, %struct.nilfs_root** %10, align 8
  %30 = load %struct.nilfs_root*, %struct.nilfs_root** %10, align 8
  %31 = icmp ne %struct.nilfs_root* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ESTALE, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.dentry* @ERR_PTR(i32 %34)
  store %struct.dentry* %35, %struct.dentry** %5, align 8
  br label %67

36:                                               ; preds = %24
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = load %struct.nilfs_root*, %struct.nilfs_root** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.inode* @nilfs_iget(%struct.super_block* %37, %struct.nilfs_root* %38, i32 %39)
  store %struct.inode* %40, %struct.inode** %11, align 8
  %41 = load %struct.nilfs_root*, %struct.nilfs_root** %10, align 8
  %42 = call i32 @nilfs_put_root(%struct.nilfs_root* %41)
  %43 = load %struct.inode*, %struct.inode** %11, align 8
  %44 = call i64 @IS_ERR(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = call %struct.dentry* @ERR_CAST(%struct.inode* %47)
  store %struct.dentry* %48, %struct.dentry** %5, align 8
  br label %67

49:                                               ; preds = %36
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %11, align 8
  %60 = call i32 @iput(%struct.inode* %59)
  %61 = load i32, i32* @ESTALE, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.dentry* @ERR_PTR(i32 %62)
  store %struct.dentry* %63, %struct.dentry** %5, align 8
  br label %67

64:                                               ; preds = %52, %49
  %65 = load %struct.inode*, %struct.inode** %11, align 8
  %66 = call %struct.dentry* @d_obtain_alias(%struct.inode* %65)
  store %struct.dentry* %66, %struct.dentry** %5, align 8
  br label %67

67:                                               ; preds = %64, %58, %46, %32, %20
  %68 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %68
}

declare dso_local i32 @NILFS_FIRST_INO(%struct.super_block*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.nilfs_root* @nilfs_lookup_root(i32, i32) #1

declare dso_local %struct.inode* @nilfs_iget(%struct.super_block*, %struct.nilfs_root*, i32) #1

declare dso_local i32 @nilfs_put_root(%struct.nilfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
