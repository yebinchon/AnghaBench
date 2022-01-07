; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_get_gc_cost.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_get_gc_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.victim_sel_policy = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@SSR = common dso_local global i64 0, align 8
@GC_GREEDY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32, %struct.victim_sel_policy*)* @get_gc_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_gc_cost(%struct.f2fs_sb_info* %0, i32 %1, %struct.victim_sel_policy* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.victim_sel_policy*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.victim_sel_policy* %2, %struct.victim_sel_policy** %7, align 8
  %8 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %7, align 8
  %9 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SSR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_2__* @get_seg_entry(%struct.f2fs_sb_info* %14, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %7, align 8
  %21 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GC_GREEDY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @get_valid_blocks(%struct.f2fs_sb_info* %26, i32 %27, i32 1)
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @get_cb_cost(%struct.f2fs_sb_info* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %25, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_2__* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @get_valid_blocks(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @get_cb_cost(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
