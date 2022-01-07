; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bdget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bdget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, i64, i64, i32, %struct.inode*, i32*, i32* }
%struct.inode = type { i32, %struct.TYPE_3__, %struct.block_device*, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { %struct.block_device }

@blockdev_superblock = common dso_local global i32 0, align 4
@bdev_test = common dso_local global i32 0, align 4
@bdev_set = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@def_blk_aops = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@bdev_lock = common dso_local global i32 0, align 4
@all_bdevs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_device* @bdget(i32 %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.inode*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @blockdev_superblock, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @hash(i32 %7)
  %9 = load i32, i32* @bdev_test, align 4
  %10 = load i32, i32* @bdev_set, align 4
  %11 = call %struct.inode* @iget5_locked(i32 %6, i32 %8, i32 %9, i32 %10, i32* %3)
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.block_device* null, %struct.block_device** %2, align 8
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.TYPE_4__* @BDEV_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.block_device* %18, %struct.block_device** %4, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @I_NEW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %15
  %26 = load %struct.block_device*, %struct.block_device** %4, align 8
  %27 = getelementptr inbounds %struct.block_device, %struct.block_device* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = load %struct.block_device*, %struct.block_device** %4, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load %struct.block_device*, %struct.block_device** %4, align 8
  %32 = getelementptr inbounds %struct.block_device, %struct.block_device* %31, i32 0, i32 4
  store %struct.inode* %30, %struct.inode** %32, align 8
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @i_blocksize(%struct.inode* %33)
  %35 = load %struct.block_device*, %struct.block_device** %4, align 8
  %36 = getelementptr inbounds %struct.block_device, %struct.block_device* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.block_device*, %struct.block_device** %4, align 8
  %38 = getelementptr inbounds %struct.block_device, %struct.block_device* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.block_device*, %struct.block_device** %4, align 8
  %40 = getelementptr inbounds %struct.block_device, %struct.block_device* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @S_IFBLK, align 4
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.block_device*, %struct.block_device** %4, align 8
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  store %struct.block_device* %47, %struct.block_device** %49, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32* @def_blk_aops, i32** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load i32, i32* @GFP_USER, align 4
  %56 = call i32 @mapping_set_gfp_mask(%struct.TYPE_3__* %54, i32 %55)
  %57 = call i32 @spin_lock(i32* @bdev_lock)
  %58 = load %struct.block_device*, %struct.block_device** %4, align 8
  %59 = getelementptr inbounds %struct.block_device, %struct.block_device* %58, i32 0, i32 0
  %60 = call i32 @list_add(i32* %59, i32* @all_bdevs)
  %61 = call i32 @spin_unlock(i32* @bdev_lock)
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call i32 @unlock_new_inode(%struct.inode* %62)
  br label %64

64:                                               ; preds = %25, %15
  %65 = load %struct.block_device*, %struct.block_device** %4, align 8
  store %struct.block_device* %65, %struct.block_device** %2, align 8
  br label %66

66:                                               ; preds = %64, %14
  %67 = load %struct.block_device*, %struct.block_device** %2, align 8
  ret %struct.block_device* %67
}

declare dso_local %struct.inode* @iget5_locked(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @hash(i32) #1

declare dso_local %struct.TYPE_4__* @BDEV_I(%struct.inode*) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
