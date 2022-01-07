; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_releasepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_blkdev_releasepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.super_block = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.super_block*, %struct.page*, i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.super_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @blkdev_releasepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkdev_releasepage(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_8__* @BDEV_I(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %6, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = icmp ne %struct.super_block* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32 (%struct.super_block*, %struct.page*, i32)*, i32 (%struct.super_block*, %struct.page*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.super_block*, %struct.page*, i32)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32 (%struct.super_block*, %struct.page*, i32)*, i32 (%struct.super_block*, %struct.page*, i32)** %29, align 8
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 %30(%struct.super_block* %31, %struct.page* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %18, %2
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i32 @try_to_free_buffers(%struct.page* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %25
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_8__* @BDEV_I(i32) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
