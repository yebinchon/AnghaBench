; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_he_stat__add_period.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_he_stat__add_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_stat = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.he_stat*, i64, i64)* @he_stat__add_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @he_stat__add_period(%struct.he_stat* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.he_stat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.he_stat* %0, %struct.he_stat** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %9 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %16 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load %struct.he_stat*, %struct.he_stat** %4, align 8
  %22 = getelementptr inbounds %struct.he_stat, %struct.he_stat* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
