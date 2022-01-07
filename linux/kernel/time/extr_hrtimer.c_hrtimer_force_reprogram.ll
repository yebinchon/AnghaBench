; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_force_reprogram.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_force_reprogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer_cpu_base = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HRTIMER_ACTIVE_ALL = common dso_local global i32 0, align 4
@HRTIMER_ACTIVE_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hrtimer_cpu_base*, i32)* @hrtimer_force_reprogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hrtimer_force_reprogram(%struct.hrtimer_cpu_base* %0, i32 %1) #0 {
  %3 = alloca %struct.hrtimer_cpu_base*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hrtimer_cpu_base* %0, %struct.hrtimer_cpu_base** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %7 = load i32, i32* @HRTIMER_ACTIVE_ALL, align 4
  %8 = call i64 @__hrtimer_get_next_event(%struct.hrtimer_cpu_base* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %10 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %15 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %22 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %27 = load i32, i32* @HRTIMER_ACTIVE_HARD, align 4
  %28 = call i64 @__hrtimer_get_next_event(%struct.hrtimer_cpu_base* %26, i32 %27)
  store i64 %28, i64* %5, align 8
  br label %33

29:                                               ; preds = %20
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %32 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %13, %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %40 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %62

44:                                               ; preds = %37, %34
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %47 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %49 = call i32 @__hrtimer_hres_active(%struct.hrtimer_cpu_base* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %53 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %44
  br label %62

57:                                               ; preds = %51
  %58 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %59 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @tick_program_event(i64 %60, i32 1)
  br label %62

62:                                               ; preds = %57, %56, %43
  ret void
}

declare dso_local i64 @__hrtimer_get_next_event(%struct.hrtimer_cpu_base*, i32) #1

declare dso_local i32 @__hrtimer_hres_active(%struct.hrtimer_cpu_base*) #1

declare dso_local i32 @tick_program_event(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
