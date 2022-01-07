; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_build_dirty_segmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_build_dirty_segmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.dirty_seglist_info = type { i32*, i32 }
%struct.TYPE_2__ = type { %struct.dirty_seglist_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NR_DIRTY_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @build_dirty_segmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_dirty_segmap(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.dirty_seglist_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dirty_seglist_info* @f2fs_kzalloc(%struct.f2fs_sb_info* %7, i32 16, i32 %8)
  store %struct.dirty_seglist_info* %9, %struct.dirty_seglist_info** %4, align 8
  %10 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %4, align 8
  %11 = icmp ne %struct.dirty_seglist_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %4, align 8
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %18 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.dirty_seglist_info* %16, %struct.dirty_seglist_info** %19, align 8
  %20 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %4, align 8
  %21 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %20, i32 0, i32 1
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %24 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %23)
  %25 = call i32 @f2fs_bitmap_size(i32 %24)
  store i32 %25, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %53, %15
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NR_DIRTY_TYPE, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @f2fs_kvzalloc(%struct.f2fs_sb_info* %31, i32 %32, i32 %33)
  %35 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %4, align 8
  %36 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %4, align 8
  %42 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %30
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %58 = call i32 @init_dirty_segmap(%struct.f2fs_sb_info* %57)
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %60 = call i32 @init_victim_secmap(%struct.f2fs_sb_info* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %49, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.dirty_seglist_info* @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @f2fs_bitmap_size(i32) #1

declare dso_local i32 @MAIN_SEGS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_kvzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @init_dirty_segmap(%struct.f2fs_sb_info*) #1

declare dso_local i32 @init_victim_secmap(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
