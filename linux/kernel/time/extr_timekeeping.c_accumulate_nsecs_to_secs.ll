; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_accumulate_nsecs_to_secs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_accumulate_nsecs_to_secs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timekeeper = type { i32, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.timespec64 = type { i32, i64 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@TK_CLOCK_WAS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timekeeper*)* @accumulate_nsecs_to_secs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accumulate_nsecs_to_secs(%struct.timekeeper* %0) #0 {
  %2 = alloca %struct.timekeeper*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec64, align 8
  store %struct.timekeeper* %0, %struct.timekeeper** %2, align 8
  %7 = load i64, i64* @NSEC_PER_SEC, align 8
  %8 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %9 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = shl i64 %7, %11
  store i64 %12, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %77, %36, %1
  %14 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %15 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %78

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %23 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, %21
  store i64 %26, i64* %24, align 8
  %27 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %28 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %32 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %38 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %13

39:                                               ; preds = %20
  %40 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %41 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @second_overflow(i64 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %51 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i32, i32* %5, align 4
  %55 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %58 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %59 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = bitcast %struct.timespec64* %6 to { i32, i64 }*
  %62 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %61, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @timespec64_sub(i32 %60, i32 %63, i64 %65)
  %67 = call i32 @tk_set_wall_to_mono(%struct.timekeeper* %57, i32 %66)
  %68 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %69 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %70 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %71, %73
  %75 = call i32 @__timekeeping_set_tai_offset(%struct.timekeeper* %68, i64 %74)
  %76 = load i32, i32* @TK_CLOCK_WAS_SET, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %47, %39
  br label %13

78:                                               ; preds = %13
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @second_overflow(i64) #1

declare dso_local i32 @tk_set_wall_to_mono(%struct.timekeeper*, i32) #1

declare dso_local i32 @timespec64_sub(i32, i32, i64) #1

declare dso_local i32 @__timekeeping_set_tai_offset(%struct.timekeeper*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
