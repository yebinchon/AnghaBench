; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_sync.c___sync_filesystem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_sync.c___sync_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@WB_REASON_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @__sync_filesystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sync_filesystem(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call i32 @sync_inodes_sb(%struct.super_block* %8)
  br label %14

10:                                               ; preds = %2
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = load i32, i32* @WB_REASON_SYNC, align 4
  %13 = call i32 @writeback_inodes_sb(%struct.super_block* %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %7
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.super_block*, i32)**
  %20 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.super_block*, i32)* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.super_block*, i32)**
  %28 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %27, align 8
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 %28(%struct.super_block* %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %14
  %33 = load %struct.super_block*, %struct.super_block** %3, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @__sync_blockdev(i32 %35, i32 %36)
  ret i32 %37
}

declare dso_local i32 @sync_inodes_sb(%struct.super_block*) #1

declare dso_local i32 @writeback_inodes_sb(%struct.super_block*, i32) #1

declare dso_local i32 @__sync_blockdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
