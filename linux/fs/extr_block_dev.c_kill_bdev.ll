; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_kill_bdev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_kill_bdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kill_bdev(%struct.block_device* %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  %3 = alloca %struct.address_space*, align 8
  store %struct.block_device* %0, %struct.block_device** %2, align 8
  %4 = load %struct.block_device*, %struct.block_device** %2, align 8
  %5 = getelementptr inbounds %struct.block_device, %struct.block_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.address_space*, %struct.address_space** %7, align 8
  store %struct.address_space* %8, %struct.address_space** %3, align 8
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.address_space*, %struct.address_space** %3, align 8
  %15 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %23

19:                                               ; preds = %13, %1
  %20 = call i32 (...) @invalidate_bh_lrus()
  %21 = load %struct.address_space*, %struct.address_space** %3, align 8
  %22 = call i32 @truncate_inode_pages(%struct.address_space* %21, i32 0)
  br label %23

23:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @invalidate_bh_lrus(...) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
