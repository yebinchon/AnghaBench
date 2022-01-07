; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_total_loads.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_total_loads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.c2c_stats*)* @total_loads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @total_loads(%struct.c2c_stats* %0) #0 {
  %2 = alloca %struct.c2c_stats*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.c2c_stats* %0, %struct.c2c_stats** %2, align 8
  %5 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %6 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %5, i32 0, i32 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %9 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %13 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %17 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %22 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %26 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %30 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %34 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %38 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
