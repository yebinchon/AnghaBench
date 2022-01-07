; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.cpu_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.reiserfs_iget_args = type { i32, i32 }

@reiserfs_find_actor = common dso_local global i32 0, align 4
@reiserfs_init_locked_inode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @reiserfs_iget(%struct.super_block* %0, %struct.cpu_key* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.cpu_key*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.reiserfs_iget_args, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.cpu_key* %1, %struct.cpu_key** %5, align 8
  %9 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %10 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %15 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.reiserfs_iget_args, %struct.reiserfs_iget_args* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %23 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @reiserfs_find_actor, align 4
  %27 = load i32, i32* @reiserfs_init_locked_inode, align 4
  %28 = bitcast %struct.reiserfs_iget_args* %7 to i8*
  %29 = call %struct.inode* @iget5_locked(%struct.super_block* %21, i32 %25, i32 %26, i32 %27, i8* %28)
  store %struct.inode* %29, %struct.inode** %6, align 8
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %30, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.inode* @ERR_PTR(i32 %37)
  store %struct.inode* %38, %struct.inode** %3, align 8
  br label %66

39:                                               ; preds = %2
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @I_NEW, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call i32 @reiserfs_read_locked_inode(%struct.inode* %47, %struct.reiserfs_iget_args* %7)
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i32 @unlock_new_inode(%struct.inode* %49)
  br label %51

51:                                               ; preds = %46, %39
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call i32 @INODE_PKEY(%struct.inode* %52)
  %54 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %55 = call i64 @comp_short_keys(i32 %53, %struct.cpu_key* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i64 @is_bad_inode(%struct.inode* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %51
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call i32 @iput(%struct.inode* %62)
  store %struct.inode* null, %struct.inode** %6, align 8
  br label %64

64:                                               ; preds = %61, %57
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %65, %struct.inode** %3, align 8
  br label %66

66:                                               ; preds = %64, %35
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %67
}

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.super_block*) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, i8*) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @reiserfs_read_locked_inode(%struct.inode*, %struct.reiserfs_iget_args*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i64 @comp_short_keys(i32, %struct.cpu_key*) #1

declare dso_local i32 @INODE_PKEY(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
