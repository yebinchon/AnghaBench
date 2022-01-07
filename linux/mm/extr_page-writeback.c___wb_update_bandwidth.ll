; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___wb_update_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___wb_update_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirty_throttle_control = type { %struct.bdi_writeback* }
%struct.bdi_writeback = type { i64, i64, i64, i32*, i32 }

@jiffies = common dso_local global i64 0, align 8
@BANDWIDTH_INTERVAL = common dso_local global i64 0, align 8
@WB_DIRTIED = common dso_local global i64 0, align 8
@WB_WRITTEN = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CONFIG_CGROUP_WRITEBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dirty_throttle_control*, %struct.dirty_throttle_control*, i64, i32)* @__wb_update_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wb_update_bandwidth(%struct.dirty_throttle_control* %0, %struct.dirty_throttle_control* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dirty_throttle_control*, align 8
  %6 = alloca %struct.dirty_throttle_control*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bdi_writeback*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dirty_throttle_control* %0, %struct.dirty_throttle_control** %5, align 8
  store %struct.dirty_throttle_control* %1, %struct.dirty_throttle_control** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %5, align 8
  %15 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %14, i32 0, i32 0
  %16 = load %struct.bdi_writeback*, %struct.bdi_writeback** %15, align 8
  store %struct.bdi_writeback* %16, %struct.bdi_writeback** %9, align 8
  %17 = load i64, i64* @jiffies, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.bdi_writeback*, %struct.bdi_writeback** %9, align 8
  %20 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %11, align 8
  %23 = load %struct.bdi_writeback*, %struct.bdi_writeback** %9, align 8
  %24 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %23, i32 0, i32 4
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @BANDWIDTH_INTERVAL, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %95

30:                                               ; preds = %4
  %31 = load %struct.bdi_writeback*, %struct.bdi_writeback** %9, align 8
  %32 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @WB_DIRTIED, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i64 @percpu_counter_read(i32* %35)
  store i64 %36, i64* %12, align 8
  %37 = load %struct.bdi_writeback*, %struct.bdi_writeback** %9, align 8
  %38 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @WB_WRITTEN, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i64 @percpu_counter_read(i32* %41)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @HZ, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %30
  %47 = load %struct.bdi_writeback*, %struct.bdi_writeback** %9, align 8
  %48 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @time_before(i64 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %85

54:                                               ; preds = %46, %30
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %54
  %58 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @domain_update_bandwidth(%struct.dirty_throttle_control* %58, i64 %59)
  %61 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %5, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @wb_update_dirty_ratelimit(%struct.dirty_throttle_control* %61, i64 %62, i64 %63)
  %65 = load i32, i32* @CONFIG_CGROUP_WRITEBACK, align 4
  %66 = call i64 @IS_ENABLED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %57
  %69 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %6, align 8
  %70 = icmp ne %struct.dirty_throttle_control* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %6, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @domain_update_bandwidth(%struct.dirty_throttle_control* %72, i64 %73)
  %75 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %6, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @wb_update_dirty_ratelimit(%struct.dirty_throttle_control* %75, i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %71, %68, %57
  br label %80

80:                                               ; preds = %79, %54
  %81 = load %struct.bdi_writeback*, %struct.bdi_writeback** %9, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @wb_update_write_bandwidth(%struct.bdi_writeback* %81, i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %80, %53
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.bdi_writeback*, %struct.bdi_writeback** %9, align 8
  %88 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.bdi_writeback*, %struct.bdi_writeback** %9, align 8
  %91 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.bdi_writeback*, %struct.bdi_writeback** %9, align 8
  %94 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %85, %29
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @percpu_counter_read(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @domain_update_bandwidth(%struct.dirty_throttle_control*, i64) #1

declare dso_local i32 @wb_update_dirty_ratelimit(%struct.dirty_throttle_control*, i64, i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @wb_update_write_bandwidth(%struct.bdi_writeback*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
