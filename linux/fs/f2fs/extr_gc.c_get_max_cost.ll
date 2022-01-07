; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_get_max_cost.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_get_max_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.victim_sel_policy = type { i64, i64, i32 }

@SSR = common dso_local global i64 0, align 8
@GC_GREEDY = common dso_local global i64 0, align 8
@GC_CB = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.victim_sel_policy*)* @get_max_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_cost(%struct.f2fs_sb_info* %0, %struct.victim_sel_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.victim_sel_policy*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.victim_sel_policy* %1, %struct.victim_sel_policy** %5, align 8
  %6 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %5, align 8
  %7 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SSR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %13 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %5, align 8
  %17 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GC_GREEDY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %23 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul i32 2, %24
  %26 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %5, align 8
  %27 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = mul i32 %25, %28
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %15
  %31 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %5, align 8
  %32 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GC_CB, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @UINT_MAX, align 4
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36, %21, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
