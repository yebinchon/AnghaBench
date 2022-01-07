; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___wb_calc_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___wb_calc_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirty_throttle_control = type { i64, i32, i32 }
%struct.wb_domain = type { i32 }

@bdi_min_ratio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dirty_throttle_control*)* @__wb_calc_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__wb_calc_thresh(%struct.dirty_throttle_control* %0) #0 {
  %2 = alloca %struct.dirty_throttle_control*, align 8
  %3 = alloca %struct.wb_domain*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dirty_throttle_control* %0, %struct.dirty_throttle_control** %2, align 8
  %10 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %11 = call %struct.wb_domain* @dtc_dom(%struct.dirty_throttle_control* %10)
  store %struct.wb_domain* %11, %struct.wb_domain** %3, align 8
  %12 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %13 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %16 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %15, i32 0, i32 0
  %17 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %18 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fprop_fraction_percpu(i32* %16, i32 %19, i64* %6, i64* %7)
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* @bdi_min_ratio, align 4
  %23 = sub nsw i32 100, %22
  %24 = sext i32 %23 to i64
  %25 = mul i64 %21, %24
  %26 = udiv i64 %25, 100
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = mul nsw i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @do_div(i64 %30, i64 %31)
  %33 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %2, align 8
  %34 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @wb_min_max_ratio(i32 %35, i64* %8, i64* %9)
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %8, align 8
  %39 = mul i64 %37, %38
  %40 = udiv i64 %39, 100
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = mul i64 %44, %45
  %47 = udiv i64 %46, 100
  %48 = icmp ugt i64 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %1
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %9, align 8
  %52 = mul i64 %50, %51
  %53 = udiv i64 %52, 100
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %49, %1
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local %struct.wb_domain* @dtc_dom(%struct.dirty_throttle_control*) #1

declare dso_local i32 @fprop_fraction_percpu(i32*, i32, i64*, i64*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @wb_min_max_ratio(i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
