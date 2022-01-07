; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_gc_thread_func.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_gc_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, %struct.TYPE_6__*, i32, %struct.f2fs_gc_kthread* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.f2fs_gc_kthread = type { i32, i32, i32, i64, i32 }

@current = common dso_local global i32 0, align 4
@SB_FREEZE_WRITE = common dso_local global i64 0, align 8
@FAULT_CHECKPOINT = common dso_local global i32 0, align 4
@GC_URGENT = common dso_local global i64 0, align 8
@GC_TIME = common dso_local global i32 0, align 4
@FORCE_FG_GC = common dso_local global i32 0, align 4
@NULL_SEGNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gc_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_thread_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_gc_kthread*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.f2fs_sb_info*
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %3, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %9, i32 0, i32 3
  %11 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %10, align 8
  store %struct.f2fs_gc_kthread* %11, %struct.f2fs_gc_kthread** %4, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %12, i32 0, i32 3
  %14 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %13, align 8
  %15 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %14, i32 0, i32 4
  store i32* %15, i32** %5, align 8
  %16 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %4, align 8
  %17 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = call i32 (...) @set_freezable()
  br label %20

20:                                               ; preds = %166, %1
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i64 (...) @kthread_should_stop()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @current, align 4
  %27 = call i64 @freezing(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %4, align 8
  %31 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %25, %20
  %35 = phi i1 [ true, %25 ], [ true, %20 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @msecs_to_jiffies(i32 %37)
  %39 = call i32 @wait_event_interruptible_timeout(i32 %22, i32 %36, i32 %38)
  %40 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %4, align 8
  %41 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %4, align 8
  %46 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %34
  %48 = call i64 (...) @try_to_freeze()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %52 = call i32 @stat_other_skip_bggc_count(%struct.f2fs_sb_info* %51)
  br label %166

53:                                               ; preds = %47
  %54 = call i64 (...) @kthread_should_stop()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %170

57:                                               ; preds = %53
  %58 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %59 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SB_FREEZE_WRITE, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %4, align 8
  %68 = call i32 @increase_sleep_time(%struct.f2fs_gc_kthread* %67, i32* %6)
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %70 = call i32 @stat_other_skip_bggc_count(%struct.f2fs_sb_info* %69)
  br label %166

71:                                               ; preds = %57
  %72 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %73 = load i32, i32* @FAULT_CHECKPOINT, align 4
  %74 = call i64 @time_to_inject(%struct.f2fs_sb_info* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @FAULT_CHECKPOINT, align 4
  %78 = call i32 @f2fs_show_injection_info(i32 %77)
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %80 = call i32 @f2fs_stop_checkpoint(%struct.f2fs_sb_info* %79, i32 0)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %83 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = call i32 @sb_start_write_trylock(%struct.TYPE_6__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %89 = call i32 @stat_other_skip_bggc_count(%struct.f2fs_sb_info* %88)
  br label %166

90:                                               ; preds = %81
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %92 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @GC_URGENT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %4, align 8
  %98 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %6, align 4
  %100 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %101 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %100, i32 0, i32 2
  %102 = call i32 @mutex_lock(i32* %101)
  br label %135

103:                                              ; preds = %90
  %104 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %105 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %104, i32 0, i32 2
  %106 = call i32 @mutex_trylock(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %110 = call i32 @stat_other_skip_bggc_count(%struct.f2fs_sb_info* %109)
  br label %161

111:                                              ; preds = %103
  %112 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %113 = load i32, i32* @GC_TIME, align 4
  %114 = call i32 @is_idle(%struct.f2fs_sb_info* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %111
  %117 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %4, align 8
  %118 = call i32 @increase_sleep_time(%struct.f2fs_gc_kthread* %117, i32* %6)
  %119 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %120 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %119, i32 0, i32 2
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %123 = call i32 @stat_io_skip_bggc_count(%struct.f2fs_sb_info* %122)
  br label %161

124:                                              ; preds = %111
  %125 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %126 = call i64 @has_enough_invalid_blocks(%struct.f2fs_sb_info* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %4, align 8
  %130 = call i32 @decrease_sleep_time(%struct.f2fs_gc_kthread* %129, i32* %6)
  br label %134

131:                                              ; preds = %124
  %132 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %4, align 8
  %133 = call i32 @increase_sleep_time(%struct.f2fs_gc_kthread* %132, i32* %6)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %96
  %136 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %137 = call i32 @stat_inc_bggc_count(%struct.f2fs_sb_info* %136)
  %138 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %139 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %140 = load i32, i32* @FORCE_FG_GC, align 4
  %141 = call i32 @test_opt(%struct.f2fs_sb_info* %139, i32 %140)
  %142 = load i32, i32* @NULL_SEGNO, align 4
  %143 = call i64 @f2fs_gc(%struct.f2fs_sb_info* %138, i32 %141, i32 1, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %135
  %146 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %4, align 8
  %147 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %145, %135
  %150 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %151 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %150, i32 0, i32 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %155 = call i32 @prefree_segments(%struct.f2fs_sb_info* %154)
  %156 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %157 = call i32 @free_segments(%struct.f2fs_sb_info* %156)
  %158 = call i32 @trace_f2fs_background_gc(%struct.TYPE_6__* %152, i32 %153, i32 %155, i32 %157)
  %159 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %160 = call i32 @f2fs_balance_fs_bg(%struct.f2fs_sb_info* %159)
  br label %161

161:                                              ; preds = %149, %116, %108
  %162 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %163 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %162, i32 0, i32 1
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = call i32 @sb_end_write(%struct.TYPE_6__* %164)
  br label %166

166:                                              ; preds = %161, %87, %66, %50
  %167 = call i64 (...) @kthread_should_stop()
  %168 = icmp ne i64 %167, 0
  %169 = xor i1 %168, true
  br i1 %169, label %20, label %170

170:                                              ; preds = %166, %56
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @try_to_freeze(...) #1

declare dso_local i32 @stat_other_skip_bggc_count(%struct.f2fs_sb_info*) #1

declare dso_local i32 @increase_sleep_time(%struct.f2fs_gc_kthread*, i32*) #1

declare dso_local i64 @time_to_inject(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local i32 @f2fs_stop_checkpoint(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @sb_start_write_trylock(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @is_idle(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @stat_io_skip_bggc_count(%struct.f2fs_sb_info*) #1

declare dso_local i64 @has_enough_invalid_blocks(%struct.f2fs_sb_info*) #1

declare dso_local i32 @decrease_sleep_time(%struct.f2fs_gc_kthread*, i32*) #1

declare dso_local i32 @stat_inc_bggc_count(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_gc(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @trace_f2fs_background_gc(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @prefree_segments(%struct.f2fs_sb_info*) #1

declare dso_local i32 @free_segments(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_balance_fs_bg(%struct.f2fs_sb_info*) #1

declare dso_local i32 @sb_end_write(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
