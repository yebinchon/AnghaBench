; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_total_records.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_total_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.c2c_stats*)* @total_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @total_records(%struct.c2c_stats* %0) #0 {
  %2 = alloca %struct.c2c_stats*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.c2c_stats* %0, %struct.c2c_stats** %2, align 8
  %6 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %7 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %6, i32 0, i32 10
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %10 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %9, i32 0, i32 9
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  %13 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %14 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %18 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %23 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %27 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %31 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %35 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %39 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %44 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.c2c_stats*, %struct.c2c_stats** %2, align 8
  %48 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
