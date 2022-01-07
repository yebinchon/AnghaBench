; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_select_policy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_select_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i64, i32 }
%struct.victim_sel_policy = type { i64, i64, i32, i64, i32, i32 }
%struct.dirty_seglist_info = type { i32*, i32* }
%struct.TYPE_2__ = type { i64* }

@SSR = common dso_local global i64 0, align 8
@GC_GREEDY = common dso_local global i64 0, align 8
@DIRTY = common dso_local global i64 0, align 8
@FG_GC = common dso_local global i32 0, align 4
@GC_URGENT = common dso_local global i64 0, align 8
@NOHEAP = common dso_local global i32 0, align 4
@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32, %struct.victim_sel_policy*)* @select_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_policy(%struct.f2fs_sb_info* %0, i32 %1, i32 %2, %struct.victim_sel_policy* %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.victim_sel_policy*, align 8
  %9 = alloca %struct.dirty_seglist_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.victim_sel_policy* %3, %struct.victim_sel_policy** %8, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %11 = call %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info* %10)
  store %struct.dirty_seglist_info* %11, %struct.dirty_seglist_info** %9, align 8
  %12 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %13 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SSR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %4
  %18 = load i64, i64* @GC_GREEDY, align 8
  %19 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %20 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %9, align 8
  %22 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %29 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %9, align 8
  %31 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %38 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %40 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  br label %68

41:                                               ; preds = %4
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @select_gc_type(%struct.f2fs_sb_info* %42, i32 %43)
  %45 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %46 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %9, align 8
  %48 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @DIRTY, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %54 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dirty_seglist_info*, %struct.dirty_seglist_info** %9, align 8
  %56 = getelementptr inbounds %struct.dirty_seglist_info, %struct.dirty_seglist_info* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @DIRTY, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %62 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %64 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %67 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %41, %17
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @FG_GC, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %74 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @GC_URGENT, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %80 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %83 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %88 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %91 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %86, %78, %72, %68
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %94 = load i32, i32* @NOHEAP, align 4
  %95 = call i64 @test_opt(%struct.f2fs_sb_info* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @IS_NODESEG(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101, %97
  %106 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %107 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  br label %120

108:                                              ; preds = %101, %92
  %109 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %110 = call %struct.TYPE_2__* @SIT_I(%struct.f2fs_sb_info* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %114 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.victim_sel_policy*, %struct.victim_sel_policy** %8, align 8
  %119 = getelementptr inbounds %struct.victim_sel_policy, %struct.victim_sel_policy* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %108, %105
  ret void
}

declare dso_local %struct.dirty_seglist_info* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @select_gc_type(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_NODESEG(i32) #1

declare dso_local %struct.TYPE_2__* @SIT_I(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
