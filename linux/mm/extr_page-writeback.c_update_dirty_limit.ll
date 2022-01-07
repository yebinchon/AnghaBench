; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_update_dirty_limit.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_update_dirty_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirty_throttle_control = type { i64, i32 }
%struct.wb_domain = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dirty_throttle_control*)* @update_dirty_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_dirty_limit(%struct.dirty_throttle_control* %0) #0 {
  %2 = alloca %struct.dirty_throttle_control*, align 8
  %3 = alloca %struct.wb_domain*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.dirty_throttle_control* %0, %struct.dirty_throttle_control** %2, align 8
  %6 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %7 = call %struct.wb_domain* @dtc_dom(%struct.dirty_throttle_control* %6)
  store %struct.wb_domain* %7, %struct.wb_domain** %3, align 8
  %8 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %9 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %12 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %5, align 8
  br label %36

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %22 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @max(i64 %20, i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub i64 %29, %30
  %32 = lshr i64 %31, 5
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 %33, %32
  store i64 %34, i64* %5, align 8
  br label %36

35:                                               ; preds = %19
  br label %40

36:                                               ; preds = %28, %17
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %39 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %35
  ret void
}

declare dso_local %struct.wb_domain* @dtc_dom(%struct.dirty_throttle_control*) #1

declare dso_local i64 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
