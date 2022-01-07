; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_bitmap.c_get_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_bitmap.c_get_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i8*, i32)* @get_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @get_bitmap(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_cpu_map*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.perf_cpu_map* @perf_cpu_map__new(i8* %8)
  store %struct.perf_cpu_map* %9, %struct.perf_cpu_map** %5, align 8
  store i64* null, i64** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64* @bitmap_alloc(i32 %10)
  store i64* %11, i64** %6, align 8
  %12 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %13 = icmp ne %struct.perf_cpu_map* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load i64*, i64** %6, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %21 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %26 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i64*, i64** %6, align 8
  %33 = call i32 @set_bit(i32 %31, i64* %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %18

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37, %14, %2
  %39 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %40 = icmp ne %struct.perf_cpu_map* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %43 = call i32 @perf_cpu_map__put(%struct.perf_cpu_map* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i64*, i64** %6, align 8
  ret i64* %45
}

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i8*) #1

declare dso_local i64* @bitmap_alloc(i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @perf_cpu_map__put(%struct.perf_cpu_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
