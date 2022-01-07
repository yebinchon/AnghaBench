; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_diff_timespec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_diff_timespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec*, %struct.timespec*, %struct.timespec*)* @diff_timespec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_timespec(%struct.timespec* %0, %struct.timespec* %1, %struct.timespec* %2) #0 {
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %7 = load %struct.timespec*, %struct.timespec** %5, align 8
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.timespec*, %struct.timespec** %6, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.timespec*, %struct.timespec** %4, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.timespec*, %struct.timespec** %5, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.timespec*, %struct.timespec** %6, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %3
  %24 = load %struct.timespec*, %struct.timespec** %5, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NSEC_PER_SEC, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.timespec*, %struct.timespec** %6, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load %struct.timespec*, %struct.timespec** %4, align 8
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.timespec*, %struct.timespec** %4, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  br label %49

39:                                               ; preds = %3
  %40 = load %struct.timespec*, %struct.timespec** %5, align 8
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.timespec*, %struct.timespec** %6, align 8
  %44 = getelementptr inbounds %struct.timespec, %struct.timespec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = load %struct.timespec*, %struct.timespec** %4, align 8
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %39, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
