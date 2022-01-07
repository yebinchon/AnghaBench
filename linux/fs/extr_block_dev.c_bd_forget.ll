; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bd_forget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bd_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, %struct.block_device*, i32 }
%struct.block_device = type { i32 }

@bdev_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bd_forget(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.block_device*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store %struct.block_device* null, %struct.block_device** %3, align 8
  %4 = call i32 @spin_lock(i32* @bdev_lock)
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @sb_is_blkdev_sb(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 2
  %13 = load %struct.block_device*, %struct.block_device** %12, align 8
  store %struct.block_device* %13, %struct.block_device** %3, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  store %struct.block_device* null, %struct.block_device** %16, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = call i32 @spin_unlock(i32* @bdev_lock)
  %22 = load %struct.block_device*, %struct.block_device** %3, align 8
  %23 = icmp ne %struct.block_device* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.block_device*, %struct.block_device** %3, align 8
  %26 = call i32 @bdput(%struct.block_device* %25)
  br label %27

27:                                               ; preds = %24, %14
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sb_is_blkdev_sb(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
