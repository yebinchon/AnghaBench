; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_super.c___get_super_thawed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_super.c___get_super_thawed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.block_device = type { i32 }

@SB_UNFROZEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.super_block* (%struct.block_device*, i32)* @__get_super_thawed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.super_block* @__get_super_thawed(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %2, %32
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.super_block* @__get_super(%struct.block_device* %7, i32 %8)
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = icmp ne %struct.super_block* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SB_UNFROZEN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12, %6
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  ret %struct.super_block* %20

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 1
  %27 = call i32 @up_read(i32* %26)
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 1
  %31 = call i32 @up_write(i32* %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SB_UNFROZEN, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @wait_event(i32 %36, i32 %43)
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = call i32 @put_super(%struct.super_block* %45)
  br label %6
}

declare dso_local %struct.super_block* @__get_super(%struct.block_device*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @put_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
