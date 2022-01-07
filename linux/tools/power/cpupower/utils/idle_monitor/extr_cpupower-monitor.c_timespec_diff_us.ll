; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_timespec_diff_us.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_timespec_diff_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @timespec_diff_us(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = bitcast %struct.timespec* %5 to { i64, i32 }*
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %10, align 8
  %11 = bitcast %struct.timespec* %6 to { i64, i32 }*
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  store i32 %3, i32* %13, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %15, %17
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %22, %24
  %26 = sub nsw i32 %25, 1
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 1000000000, %29
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %30, %32
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  br label %48

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %37, %39
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %43, %45
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %35, %20
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 1000000
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sdiv i64 %54, 1000
  %56 = add nsw i64 %52, %55
  ret i64 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
