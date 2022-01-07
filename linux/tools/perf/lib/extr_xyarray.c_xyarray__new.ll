; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_xyarray.c_xyarray__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_xyarray.c_xyarray__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xyarray = type { i64, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xyarray* @xyarray__new(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xyarray*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* %6, align 8
  %12 = mul i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %7, align 8
  %16 = mul i64 %14, %15
  %17 = add i64 32, %16
  %18 = trunc i64 %17 to i32
  %19 = call %struct.xyarray* @zalloc(i32 %18)
  store %struct.xyarray* %19, %struct.xyarray** %8, align 8
  %20 = load %struct.xyarray*, %struct.xyarray** %8, align 8
  %21 = icmp ne %struct.xyarray* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.xyarray*, %struct.xyarray** %8, align 8
  %25 = getelementptr inbounds %struct.xyarray, %struct.xyarray* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.xyarray*, %struct.xyarray** %8, align 8
  %28 = getelementptr inbounds %struct.xyarray, %struct.xyarray* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load %struct.xyarray*, %struct.xyarray** %8, align 8
  %33 = getelementptr inbounds %struct.xyarray, %struct.xyarray* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.xyarray*, %struct.xyarray** %8, align 8
  %36 = getelementptr inbounds %struct.xyarray, %struct.xyarray* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.xyarray*, %struct.xyarray** %8, align 8
  %39 = getelementptr inbounds %struct.xyarray, %struct.xyarray* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %22, %3
  %41 = load %struct.xyarray*, %struct.xyarray** %8, align 8
  ret %struct.xyarray* %41
}

declare dso_local %struct.xyarray* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
