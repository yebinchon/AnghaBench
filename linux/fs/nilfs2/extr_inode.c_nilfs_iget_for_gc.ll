; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_iget_for_gc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_inode.c_nilfs_iget_for_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.nilfs_iget_args = type { i64, i32, i32, i32* }

@nilfs_iget_test = common dso_local global i32 0, align 4
@nilfs_iget_set = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @nilfs_iget_for_gc(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nilfs_iget_args, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %8, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %8, i32 0, i32 1
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %8, i32 0, i32 2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.nilfs_iget_args, %struct.nilfs_iget_args* %8, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @nilfs_iget_test, align 4
  %20 = load i32, i32* @nilfs_iget_set, align 4
  %21 = call %struct.inode* @iget5_locked(%struct.super_block* %17, i64 %18, i32 %19, i32 %20, %struct.nilfs_iget_args* %8)
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = icmp ne %struct.inode* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.inode* @ERR_PTR(i32 %30)
  store %struct.inode* %31, %struct.inode** %4, align 8
  br label %56

32:                                               ; preds = %3
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I_NEW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %40, %struct.inode** %4, align 8
  br label %56

41:                                               ; preds = %32
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = call i32 @nilfs_init_gcinode(%struct.inode* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = call i32 @iget_failed(%struct.inode* %48)
  %50 = load i32, i32* %10, align 4
  %51 = call %struct.inode* @ERR_PTR(i32 %50)
  store %struct.inode* %51, %struct.inode** %4, align 8
  br label %56

52:                                               ; preds = %41
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call i32 @unlock_new_inode(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %55, %struct.inode** %4, align 8
  br label %56

56:                                               ; preds = %52, %47, %39, %28
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %57
}

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.nilfs_iget_args*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @nilfs_init_gcinode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
