; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_kswapd_try_to_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_kswapd_try_to_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@calculate_normal_threshold = common dso_local global i32 0, align 4
@calculate_pressure_threshold = common dso_local global i32 0, align 4
@KSWAPD_LOW_WMARK_HIT_QUICKLY = common dso_local global i32 0, align 4
@KSWAPD_HIGH_WMARK_HIT_QUICKLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32)* @kswapd_try_to_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kswapd_try_to_sleep(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  %12 = load i32, i32* @current, align 4
  %13 = call i64 @freezing(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = call i64 (...) @kthread_should_stop()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  br label %101

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %23 = call i32 @prepare_to_wait(i32* %21, i32* @wait, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @prepare_kswapd_sleep(%struct.TYPE_8__* %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = call i32 @reset_isolation_suitable(%struct.TYPE_8__* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @wakeup_kcompactd(%struct.TYPE_8__* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @HZ, align 4
  %37 = sdiv i32 %36, 10
  %38 = call i64 @schedule_timeout(i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %29
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @kswapd_classzone_idx(%struct.TYPE_8__* %42, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @max(i32 %49, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %41, %29
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @finish_wait(i32* %56, i32* @wait)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %61 = call i32 @prepare_to_wait(i32* %59, i32* @wait, i32 %60)
  br label %62

62:                                               ; preds = %54, %19
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @prepare_kswapd_sleep(%struct.TYPE_8__* %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @trace_mm_vmscan_kswapd_sleep(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = load i32, i32* @calculate_normal_threshold, align 4
  %78 = call i32 @set_pgdat_percpu_threshold(%struct.TYPE_8__* %76, i32 %77)
  %79 = call i64 (...) @kthread_should_stop()
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %71
  %82 = call i32 (...) @schedule()
  br label %83

83:                                               ; preds = %81, %71
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = load i32, i32* @calculate_pressure_threshold, align 4
  %86 = call i32 @set_pgdat_percpu_threshold(%struct.TYPE_8__* %84, i32 %85)
  br label %97

87:                                               ; preds = %65, %62
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @KSWAPD_LOW_WMARK_HIT_QUICKLY, align 4
  %92 = call i32 @count_vm_event(i32 %91)
  br label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @KSWAPD_HIGH_WMARK_HIT_QUICKLY, align 4
  %95 = call i32 @count_vm_event(i32 %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %83
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = call i32 @finish_wait(i32* %99, i32* @wait)
  br label %101

101:                                              ; preds = %97, %18
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @prepare_kswapd_sleep(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @reset_isolation_suitable(%struct.TYPE_8__*) #1

declare dso_local i32 @wakeup_kcompactd(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @schedule_timeout(i32) #1

declare dso_local i32 @kswapd_classzone_idx(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @trace_mm_vmscan_kswapd_sleep(i32) #1

declare dso_local i32 @set_pgdat_percpu_threshold(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @count_vm_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
