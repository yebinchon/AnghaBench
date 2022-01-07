; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_boost_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_boost_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i64, i32* }

@watermark_boost_factor = common dso_local global i32 0, align 4
@WMARK_HIGH = common dso_local global i64 0, align 8
@pageblock_nr_pages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone*)* @boost_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @boost_watermark(%struct.zone* %0) #0 {
  %2 = alloca %struct.zone*, align 8
  %3 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %2, align 8
  %4 = load i32, i32* @watermark_boost_factor, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = load %struct.zone*, %struct.zone** %2, align 8
  %9 = getelementptr inbounds %struct.zone, %struct.zone* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @WMARK_HIGH, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @watermark_boost_factor, align 4
  %15 = call i64 @mult_frac(i32 %13, i32 %14, i32 10000)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %7
  br label %32

19:                                               ; preds = %7
  %20 = load i64, i64* @pageblock_nr_pages, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @max(i64 %20, i64 %21)
  store i64 %22, i64* %3, align 8
  %23 = load %struct.zone*, %struct.zone** %2, align 8
  %24 = getelementptr inbounds %struct.zone, %struct.zone* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @pageblock_nr_pages, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @min(i64 %27, i64 %28)
  %30 = load %struct.zone*, %struct.zone** %2, align 8
  %31 = getelementptr inbounds %struct.zone, %struct.zone* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %19, %18, %6
  ret void
}

declare dso_local i64 @mult_frac(i32, i32, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
