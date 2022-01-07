; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotated_source__alloc_histograms.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotated_source__alloc_histograms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotated_source = type { i64, i32, i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.annotated_source*, i64, i32)* @annotated_source__alloc_histograms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @annotated_source__alloc_histograms(%struct.annotated_source* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.annotated_source*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.annotated_source* %0, %struct.annotated_source** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i64 1, i64* %6, align 8
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @SIZE_MAX, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 4
  %17 = udiv i64 %16, 4
  %18 = icmp ugt i64 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %49

20:                                               ; preds = %12
  %21 = load i64, i64* %6, align 8
  %22 = mul i64 %21, 4
  %23 = add i64 4, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @SIZE_MAX, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %49

31:                                               ; preds = %20
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.annotated_source*, %struct.annotated_source** %5, align 8
  %34 = getelementptr inbounds %struct.annotated_source, %struct.annotated_source* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.annotated_source*, %struct.annotated_source** %5, align 8
  %37 = getelementptr inbounds %struct.annotated_source, %struct.annotated_source* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @calloc(i32 %38, i64 %39)
  %41 = load %struct.annotated_source*, %struct.annotated_source** %5, align 8
  %42 = getelementptr inbounds %struct.annotated_source, %struct.annotated_source* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.annotated_source*, %struct.annotated_source** %5, align 8
  %44 = getelementptr inbounds %struct.annotated_source, %struct.annotated_source* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 -1
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %31, %30, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @calloc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
