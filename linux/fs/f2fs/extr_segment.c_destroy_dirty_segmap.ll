; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_destroy_dirty_segmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_destroy_dirty_segmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.dirty_seglist_info = type { i32 }
%struct.TYPE_2__ = type { i32* }

@NR_DIRTY_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @destroy_dirty_segmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_dirty_segmap(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.dirty_seglist_info*, align 8
  %4 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %5 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %6 = call %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info* %5)
  store %struct.dirty_seglist_info* %6, %struct.dirty_seglist_info** %3, align 8
  %7 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %3, align 8
  %8 = icmp ne %struct.dirty_seglist_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %30

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %19, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NR_DIRTY_TYPE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @discard_dirty_segmap(%struct.f2fs_sb_info* %16, i32 %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %24 = call i32 @destroy_victim_secmap(%struct.f2fs_sb_info* %23)
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %26 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %3, align 8
  %29 = call i32 @kvfree(%struct.dirty_seglist_info* %28)
  br label %30

30:                                               ; preds = %22, %9
  ret void
}

declare dso_local %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @discard_dirty_segmap(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @destroy_victim_secmap(%struct.f2fs_sb_info*) #1

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @kvfree(%struct.dirty_seglist_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
