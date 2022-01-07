; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___queue_discard_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___queue_discard_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.block_device = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.block_device*, i32, i32)* @__queue_discard_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__queue_discard_cmd(%struct.f2fs_sb_info* %0, %struct.block_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.block_device*, %struct.block_device** %7, align 8
  %15 = call i32 @f2fs_bdev_support_discard(%struct.block_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load %struct.block_device*, %struct.block_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @trace_f2fs_queue_discard(%struct.block_device* %19, i32 %20, i32 %21)
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %24 = call i64 @f2fs_is_multi_device(%struct.f2fs_sb_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @f2fs_target_device_index(%struct.f2fs_sb_info* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @FDEV(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %26, %18
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %41 = call %struct.TYPE_5__* @SM_I(%struct.f2fs_sb_info* %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %47 = load %struct.block_device*, %struct.block_device** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @__update_discard_tree_range(%struct.f2fs_sb_info* %46, %struct.block_device* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %53 = call %struct.TYPE_5__* @SM_I(%struct.f2fs_sb_info* %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %39, %17
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @f2fs_bdev_support_discard(%struct.block_device*) #1

declare dso_local i32 @trace_f2fs_queue_discard(%struct.block_device*, i32, i32) #1

declare dso_local i64 @f2fs_is_multi_device(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_target_device_index(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @FDEV(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_5__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__update_discard_tree_range(%struct.f2fs_sb_info*, %struct.block_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
