; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_wb_dirty_limits.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_wb_dirty_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirty_throttle_control = type { i32, i32, i64, i64, i32, %struct.bdi_writeback* }
%struct.bdi_writeback = type { i32 }

@WB_RECLAIMABLE = common dso_local global i32 0, align 4
@WB_WRITEBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dirty_throttle_control*)* @wb_dirty_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_dirty_limits(%struct.dirty_throttle_control* %0) #0 {
  %2 = alloca %struct.dirty_throttle_control*, align 8
  %3 = alloca %struct.bdi_writeback*, align 8
  %4 = alloca i64, align 8
  store %struct.dirty_throttle_control* %0, %struct.dirty_throttle_control** %2, align 8
  %5 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %6 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %5, i32 0, i32 5
  %7 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  store %struct.bdi_writeback* %7, %struct.bdi_writeback** %3, align 8
  %8 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %9 = call i32 @__wb_calc_thresh(%struct.dirty_throttle_control* %8)
  %10 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %11 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %13 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %18 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %21 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %25 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @div_u64(i32 %23, i64 %26)
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %16
  %30 = phi i32 [ %27, %16 ], [ 0, %28 ]
  %31 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %32 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %34 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (...) @wb_stat_error()
  %37 = mul nsw i32 2, %36
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %41 = load i32, i32* @WB_RECLAIMABLE, align 4
  %42 = call i64 @wb_stat_sum(%struct.bdi_writeback* %40, i32 %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %45 = load i32, i32* @WB_WRITEBACK, align 4
  %46 = call i64 @wb_stat_sum(%struct.bdi_writeback* %44, i32 %45)
  %47 = add i64 %43, %46
  %48 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %49 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %61

50:                                               ; preds = %29
  %51 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %52 = load i32, i32* @WB_RECLAIMABLE, align 4
  %53 = call i64 @wb_stat(%struct.bdi_writeback* %51, i32 %52)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %56 = load i32, i32* @WB_WRITEBACK, align 4
  %57 = call i64 @wb_stat(%struct.bdi_writeback* %55, i32 %56)
  %58 = add i64 %54, %57
  %59 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %60 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %50, %39
  ret void
}

declare dso_local i32 @__wb_calc_thresh(%struct.dirty_throttle_control*) #1

declare dso_local i32 @div_u64(i32, i64) #1

declare dso_local i32 @wb_stat_error(...) #1

declare dso_local i64 @wb_stat_sum(%struct.bdi_writeback*, i32) #1

declare dso_local i64 @wb_stat(%struct.bdi_writeback*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
