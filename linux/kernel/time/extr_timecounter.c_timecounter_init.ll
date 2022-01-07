; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timecounter.c_timecounter_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timecounter.c_timecounter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { i64, i64, i32, i32, %struct.cyclecounter* }
%struct.cyclecounter = type { i64, i32 (%struct.cyclecounter*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timecounter_init(%struct.timecounter* %0, %struct.cyclecounter* %1, i32 %2) #0 {
  %4 = alloca %struct.timecounter*, align 8
  %5 = alloca %struct.cyclecounter*, align 8
  %6 = alloca i32, align 4
  store %struct.timecounter* %0, %struct.timecounter** %4, align 8
  store %struct.cyclecounter* %1, %struct.cyclecounter** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cyclecounter*, %struct.cyclecounter** %5, align 8
  %8 = load %struct.timecounter*, %struct.timecounter** %4, align 8
  %9 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %8, i32 0, i32 4
  store %struct.cyclecounter* %7, %struct.cyclecounter** %9, align 8
  %10 = load %struct.cyclecounter*, %struct.cyclecounter** %5, align 8
  %11 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %10, i32 0, i32 1
  %12 = load i32 (%struct.cyclecounter*)*, i32 (%struct.cyclecounter*)** %11, align 8
  %13 = load %struct.cyclecounter*, %struct.cyclecounter** %5, align 8
  %14 = call i32 %12(%struct.cyclecounter* %13)
  %15 = load %struct.timecounter*, %struct.timecounter** %4, align 8
  %16 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.timecounter*, %struct.timecounter** %4, align 8
  %19 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.cyclecounter*, %struct.cyclecounter** %5, align 8
  %21 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = shl i64 1, %22
  %24 = sub i64 %23, 1
  %25 = load %struct.timecounter*, %struct.timecounter** %4, align 8
  %26 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.timecounter*, %struct.timecounter** %4, align 8
  %28 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
