; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bdev_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bdev_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.block_device = type { i32*, i32 }
%struct.TYPE_2__ = type { %struct.block_device }

@bdev_lock = common dso_local global i32 0, align 4
@noop_backing_dev_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @bdev_evict_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdev_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.block_device*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.TYPE_2__* @BDEV_I(%struct.inode* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.block_device* %6, %struct.block_device** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = call i32 @truncate_inode_pages_final(i32* %8)
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call i32 @invalidate_inode_buffers(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i32 @clear_inode(%struct.inode* %12)
  %14 = call i32 @spin_lock(i32* @bdev_lock)
  %15 = load %struct.block_device*, %struct.block_device** %3, align 8
  %16 = getelementptr inbounds %struct.block_device, %struct.block_device* %15, i32 0, i32 1
  %17 = call i32 @list_del_init(i32* %16)
  %18 = call i32 @spin_unlock(i32* @bdev_lock)
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call i32 @inode_detach_wb(%struct.inode* %19)
  %21 = load %struct.block_device*, %struct.block_device** %3, align 8
  %22 = getelementptr inbounds %struct.block_device, %struct.block_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, @noop_backing_dev_info
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.block_device*, %struct.block_device** %3, align 8
  %27 = getelementptr inbounds %struct.block_device, %struct.block_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @bdi_put(i32* %28)
  %30 = load %struct.block_device*, %struct.block_device** %3, align 8
  %31 = getelementptr inbounds %struct.block_device, %struct.block_device* %30, i32 0, i32 0
  store i32* @noop_backing_dev_info, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @BDEV_I(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @invalidate_inode_buffers(%struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inode_detach_wb(%struct.inode*) #1

declare dso_local i32 @bdi_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
