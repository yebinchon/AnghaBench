; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_update_offsets_now.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_ktime_get_update_offsets_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.timekeeper }
%struct.timekeeper = type { i32, i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@tk_core = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ktime_get_update_offsets_now(i32* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.timekeeper*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store %struct.timekeeper* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tk_core, i32 0, i32 1), %struct.timekeeper** %9, align 8
  br label %13

13:                                               ; preds = %65, %4
  %14 = call i32 @read_seqcount_begin(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tk_core, i32 0, i32 0))
  store i32 %14, i32* %10, align 4
  %15 = load %struct.timekeeper*, %struct.timekeeper** %9, align 8
  %16 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.timekeeper*, %struct.timekeeper** %9, align 8
  %20 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %19, i32 0, i32 5
  %21 = call i32 @timekeeping_get_ns(%struct.TYPE_4__* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i64 @ktime_add_ns(i64 %22, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.timekeeper*, %struct.timekeeper** %9, align 8
  %28 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %13
  %32 = load %struct.timekeeper*, %struct.timekeeper** %9, align 8
  %33 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.timekeeper*, %struct.timekeeper** %9, align 8
  %37 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %6, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.timekeeper*, %struct.timekeeper** %9, align 8
  %41 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  %44 = load %struct.timekeeper*, %struct.timekeeper** %9, align 8
  %45 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %8, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %31, %13
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.timekeeper*, %struct.timekeeper** %9, align 8
  %51 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.timekeeper*, %struct.timekeeper** %9, align 8
  %59 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ktime_set(i32 1, i32 0)
  %62 = call i64 @ktime_sub(i64 %60, i32 %61)
  %63 = load i64*, i64** %6, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @read_seqcount_retry(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tk_core, i32 0, i32 0), i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %13, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %11, align 8
  ret i64 %70
}

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @timekeeping_get_ns(%struct.TYPE_4__*) #1

declare dso_local i64 @ktime_add_ns(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ktime_sub(i64, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
