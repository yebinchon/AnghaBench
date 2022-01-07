; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_zone_watermark_ok_safe.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_zone_watermark_ok_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i64 }

@NR_FREE_PAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zone_watermark_ok_safe(%struct.zone* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.zone*, %struct.zone** %5, align 8
  %11 = load i32, i32* @NR_FREE_PAGES, align 4
  %12 = call i64 @zone_page_state(%struct.zone* %10, i32 %11)
  store i64 %12, i64* %9, align 8
  %13 = load %struct.zone*, %struct.zone** %5, align 8
  %14 = getelementptr inbounds %struct.zone, %struct.zone* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.zone*, %struct.zone** %5, align 8
  %20 = getelementptr inbounds %struct.zone, %struct.zone* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.zone*, %struct.zone** %5, align 8
  %25 = load i32, i32* @NR_FREE_PAGES, align 4
  %26 = call i64 @zone_page_state_snapshot(%struct.zone* %24, i32 %25)
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %23, %17, %4
  %28 = load %struct.zone*, %struct.zone** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @__zone_watermark_ok(%struct.zone* %28, i32 %29, i64 %30, i32 %31, i32 0, i64 %32)
  ret i32 %33
}

declare dso_local i64 @zone_page_state(%struct.zone*, i32) #1

declare dso_local i64 @zone_page_state_snapshot(%struct.zone*, i32) #1

declare dso_local i32 @__zone_watermark_ok(%struct.zone*, i32, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
