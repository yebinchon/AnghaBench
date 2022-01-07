; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bd_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bd_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, %struct.block_device*, i32 }

@bdev_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block_device* (%struct.inode*)* @bd_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block_device* @bd_acquire(%struct.inode* %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.block_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = call i32 @spin_lock(i32* @bdev_lock)
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 1
  %8 = load %struct.block_device*, %struct.block_device** %7, align 8
  store %struct.block_device* %8, %struct.block_device** %4, align 8
  %9 = load %struct.block_device*, %struct.block_device** %4, align 8
  %10 = icmp ne %struct.block_device* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.block_device*, %struct.block_device** %4, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @inode_unhashed(%struct.TYPE_2__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load %struct.block_device*, %struct.block_device** %4, align 8
  %19 = call i32 @bdgrab(%struct.block_device* %18)
  %20 = call i32 @spin_unlock(i32* @bdev_lock)
  %21 = load %struct.block_device*, %struct.block_device** %4, align 8
  store %struct.block_device* %21, %struct.block_device** %2, align 8
  br label %59

22:                                               ; preds = %11, %1
  %23 = call i32 @spin_unlock(i32* @bdev_lock)
  %24 = load %struct.block_device*, %struct.block_device** %4, align 8
  %25 = icmp ne %struct.block_device* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call i32 @bd_forget(%struct.inode* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.block_device* @bdget(i32 %32)
  store %struct.block_device* %33, %struct.block_device** %4, align 8
  %34 = load %struct.block_device*, %struct.block_device** %4, align 8
  %35 = icmp ne %struct.block_device* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = call i32 @spin_lock(i32* @bdev_lock)
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load %struct.block_device*, %struct.block_device** %39, align 8
  %41 = icmp ne %struct.block_device* %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  %43 = load %struct.block_device*, %struct.block_device** %4, align 8
  %44 = call i32 @bdgrab(%struct.block_device* %43)
  %45 = load %struct.block_device*, %struct.block_device** %4, align 8
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  store %struct.block_device* %45, %struct.block_device** %47, align 8
  %48 = load %struct.block_device*, %struct.block_device** %4, align 8
  %49 = getelementptr inbounds %struct.block_device, %struct.block_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %42, %36
  %56 = call i32 @spin_unlock(i32* @bdev_lock)
  br label %57

57:                                               ; preds = %55, %29
  %58 = load %struct.block_device*, %struct.block_device** %4, align 8
  store %struct.block_device* %58, %struct.block_device** %2, align 8
  br label %59

59:                                               ; preds = %57, %17
  %60 = load %struct.block_device*, %struct.block_device** %2, align 8
  ret %struct.block_device* %60
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inode_unhashed(%struct.TYPE_2__*) #1

declare dso_local i32 @bdgrab(%struct.block_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bd_forget(%struct.inode*) #1

declare dso_local %struct.block_device* @bdget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
