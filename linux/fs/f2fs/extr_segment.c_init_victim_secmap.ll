; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_init_victim_secmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_init_victim_secmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.dirty_seglist_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @init_victim_secmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_victim_secmap(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.dirty_seglist_info*, align 8
  %5 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %7 = call %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info* %6)
  store %struct.dirty_seglist_info* %7, %struct.dirty_seglist_info** %4, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %8)
  %10 = call i32 @f2fs_bitmap_size(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @f2fs_kvzalloc(%struct.f2fs_sb_info* %11, i32 %12, i32 %13)
  %15 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %4, align 8
  %16 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %4, align 8
  %18 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_bitmap_size(i32) #1

declare dso_local i32 @MAIN_SECS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_kvzalloc(%struct.f2fs_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
