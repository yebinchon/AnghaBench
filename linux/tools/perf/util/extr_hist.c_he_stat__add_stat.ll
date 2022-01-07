; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_he_stat__add_stat.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_he_stat__add_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_stat = type { i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.he_stat*, %struct.he_stat*)* @he_stat__add_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @he_stat__add_stat(%struct.he_stat* %0, %struct.he_stat* %1) #0 {
  %3 = alloca %struct.he_stat*, align 8
  %4 = alloca %struct.he_stat*, align 8
  store %struct.he_stat* %0, %struct.he_stat** %3, align 8
  store %struct.he_stat* %1, %struct.he_stat** %4, align 8
  %5 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %6 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.he_stat*, %struct.he_stat** %3, align 8
  %9 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %13 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.he_stat*, %struct.he_stat** %3, align 8
  %16 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %20 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.he_stat*, %struct.he_stat** %3, align 8
  %23 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %27 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.he_stat*, %struct.he_stat** %3, align 8
  %30 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %34 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.he_stat*, %struct.he_stat** %3, align 8
  %37 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %41 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.he_stat*, %struct.he_stat** %3, align 8
  %44 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %48 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.he_stat*, %struct.he_stat** %3, align 8
  %51 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
