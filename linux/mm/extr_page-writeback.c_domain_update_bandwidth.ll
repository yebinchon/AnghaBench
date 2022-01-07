; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_domain_update_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_domain_update_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirty_throttle_control = type { i32 }
%struct.wb_domain = type { i64, i32 }

@BANDWIDTH_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dirty_throttle_control*, i64)* @domain_update_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @domain_update_bandwidth(%struct.dirty_throttle_control* %0, i64 %1) #0 {
  %3 = alloca %struct.dirty_throttle_control*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wb_domain*, align 8
  store %struct.dirty_throttle_control* %0, %struct.dirty_throttle_control** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %3, align 8
  %7 = call %struct.wb_domain* @dtc_dom(%struct.dirty_throttle_control* %6)
  store %struct.wb_domain* %7, %struct.wb_domain** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.wb_domain*, %struct.wb_domain** %5, align 8
  %10 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BANDWIDTH_INTERVAL, align 8
  %13 = add i64 %11, %12
  %14 = call i64 @time_before(i64 %8, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.wb_domain*, %struct.wb_domain** %5, align 8
  %19 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.wb_domain*, %struct.wb_domain** %5, align 8
  %23 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BANDWIDTH_INTERVAL, align 8
  %26 = add i64 %24, %25
  %27 = call i64 @time_after_eq(i64 %21, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %3, align 8
  %31 = call i32 @update_dirty_limit(%struct.dirty_throttle_control* %30)
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.wb_domain*, %struct.wb_domain** %5, align 8
  %34 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %17
  %36 = load %struct.wb_domain*, %struct.wb_domain** %5, align 8
  %37 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %35, %16
  ret void
}

declare dso_local %struct.wb_domain* @dtc_dom(%struct.dirty_throttle_control*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @update_dirty_limit(%struct.dirty_throttle_control*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
