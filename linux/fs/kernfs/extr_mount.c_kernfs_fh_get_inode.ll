; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_fh_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_fh_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.super_block = type { i32 }
%struct.kernfs_super_info = type { i32 }
%struct.kernfs_node = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32, i64)* @kernfs_fh_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @kernfs_fh_get_inode(%struct.super_block* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.kernfs_super_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.kernfs_node*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.kernfs_super_info* @kernfs_info(%struct.super_block* %11)
  store %struct.kernfs_super_info* %12, %struct.kernfs_super_info** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @ESTALE, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.inode* @ERR_PTR(i32 %17)
  store %struct.inode* %18, %struct.inode** %4, align 8
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.kernfs_super_info*, %struct.kernfs_super_info** %8, align 8
  %21 = getelementptr inbounds %struct.kernfs_super_info, %struct.kernfs_super_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.kernfs_node* @kernfs_find_and_get_node_by_ino(i32 %22, i32 %23)
  store %struct.kernfs_node* %24, %struct.kernfs_node** %10, align 8
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %26 = icmp ne %struct.kernfs_node* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ESTALE, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.inode* @ERR_PTR(i32 %29)
  store %struct.inode* %30, %struct.inode** %4, align 8
  br label %60

31:                                               ; preds = %19
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %34 = call %struct.inode* @kernfs_get_inode(%struct.super_block* %32, %struct.kernfs_node* %33)
  store %struct.inode* %34, %struct.inode** %9, align 8
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %36 = call i32 @kernfs_put(%struct.kernfs_node* %35)
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ESTALE, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.inode* @ERR_PTR(i32 %41)
  store %struct.inode* %42, %struct.inode** %4, align 8
  br label %60

43:                                               ; preds = %31
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call i32 @iput(%struct.inode* %53)
  %55 = load i32, i32* @ESTALE, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.inode* @ERR_PTR(i32 %56)
  store %struct.inode* %57, %struct.inode** %4, align 8
  br label %60

58:                                               ; preds = %46, %43
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %59, %struct.inode** %4, align 8
  br label %60

60:                                               ; preds = %58, %52, %39, %27, %15
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %61
}

declare dso_local %struct.kernfs_super_info* @kernfs_info(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.kernfs_node* @kernfs_find_and_get_node_by_ino(i32, i32) #1

declare dso_local %struct.inode* @kernfs_get_inode(%struct.super_block*, %struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
