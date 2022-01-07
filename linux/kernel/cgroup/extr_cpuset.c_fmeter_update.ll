; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_fmeter_update.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_fmeter_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmeter = type { i64, i32, i32 }

@FM_MAXTICKS = common dso_local global i32 0, align 4
@FM_COEF = common dso_local global i32 0, align 4
@FM_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmeter*)* @fmeter_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmeter_update(%struct.fmeter* %0) #0 {
  %2 = alloca %struct.fmeter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.fmeter* %0, %struct.fmeter** %2, align 8
  %5 = call i64 (...) @ktime_get_seconds()
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.fmeter*, %struct.fmeter** %2, align 8
  %8 = getelementptr inbounds %struct.fmeter, %struct.fmeter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %6, %9
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %51

14:                                               ; preds = %1
  %15 = load i32, i32* @FM_MAXTICKS, align 4
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @min(i32 %15, i64 %16)
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %22, %14
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %4, align 8
  %21 = icmp sgt i64 %19, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* @FM_COEF, align 4
  %24 = load %struct.fmeter*, %struct.fmeter** %2, align 8
  %25 = getelementptr inbounds %struct.fmeter, %struct.fmeter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = load i32, i32* @FM_SCALE, align 4
  %29 = sdiv i32 %27, %28
  %30 = load %struct.fmeter*, %struct.fmeter** %2, align 8
  %31 = getelementptr inbounds %struct.fmeter, %struct.fmeter* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %18

32:                                               ; preds = %18
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.fmeter*, %struct.fmeter** %2, align 8
  %35 = getelementptr inbounds %struct.fmeter, %struct.fmeter* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @FM_SCALE, align 4
  %37 = load i32, i32* @FM_COEF, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load %struct.fmeter*, %struct.fmeter** %2, align 8
  %40 = getelementptr inbounds %struct.fmeter, %struct.fmeter* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load i32, i32* @FM_SCALE, align 4
  %44 = sdiv i32 %42, %43
  %45 = load %struct.fmeter*, %struct.fmeter** %2, align 8
  %46 = getelementptr inbounds %struct.fmeter, %struct.fmeter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.fmeter*, %struct.fmeter** %2, align 8
  %50 = getelementptr inbounds %struct.fmeter, %struct.fmeter* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %32, %13
  ret void
}

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i64 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
