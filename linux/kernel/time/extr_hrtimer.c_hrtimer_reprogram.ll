; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_reprogram.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c_hrtimer_reprogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i64, %struct.hrtimer_clock_base* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32 }
%struct.hrtimer_cpu_base = type { i64, i64, i64, %struct.hrtimer*, i64, %struct.hrtimer*, i64 }

@hrtimer_bases = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hrtimer*, i32)* @hrtimer_reprogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hrtimer_reprogram(%struct.hrtimer* %0, i32 %1) #0 {
  %3 = alloca %struct.hrtimer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hrtimer_cpu_base*, align 8
  %6 = alloca %struct.hrtimer_clock_base*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hrtimer_cpu_base*, align 8
  store %struct.hrtimer* %0, %struct.hrtimer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call %struct.hrtimer_cpu_base* @this_cpu_ptr(i32* @hrtimer_bases)
  store %struct.hrtimer_cpu_base* %9, %struct.hrtimer_cpu_base** %5, align 8
  %10 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %11 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %10, i32 0, i32 1
  %12 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %11, align 8
  store %struct.hrtimer_clock_base* %12, %struct.hrtimer_clock_base** %6, align 8
  %13 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %14 = call i32 @hrtimer_get_expires(%struct.hrtimer* %13)
  %15 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %6, align 8
  %16 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ktime_sub(i32 %14, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %20 = call i64 @hrtimer_get_expires_tv64(%struct.hrtimer* %19)
  %21 = icmp slt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON_ONCE(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %29 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %27
  %33 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %6, align 8
  %34 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %33, i32 0, i32 0
  %35 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %34, align 8
  store %struct.hrtimer_cpu_base* %35, %struct.hrtimer_cpu_base** %8, align 8
  %36 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %8, align 8
  %37 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %106

41:                                               ; preds = %32
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %8, align 8
  %44 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ktime_before(i64 %42, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %106

49:                                               ; preds = %41
  %50 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %51 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %8, align 8
  %52 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %51, i32 0, i32 5
  store %struct.hrtimer* %50, %struct.hrtimer** %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %8, align 8
  %55 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %8, align 8
  %58 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ktime_before(i64 %56, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62, %49
  br label %106

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %27
  %68 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %6, align 8
  %69 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %68, i32 0, i32 0
  %70 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %69, align 8
  %71 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %5, align 8
  %72 = icmp ne %struct.hrtimer_cpu_base* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %106

74:                                               ; preds = %67
  %75 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %5, align 8
  %76 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %106

80:                                               ; preds = %74
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %5, align 8
  %83 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %106

87:                                               ; preds = %80
  %88 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %89 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %5, align 8
  %90 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %89, i32 0, i32 3
  store %struct.hrtimer* %88, %struct.hrtimer** %90, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %5, align 8
  %93 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %5, align 8
  %95 = call i32 @__hrtimer_hres_active(%struct.hrtimer_cpu_base* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  %98 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %5, align 8
  %99 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %87
  br label %106

103:                                              ; preds = %97
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @tick_program_event(i64 %104, i32 1)
  br label %106

106:                                              ; preds = %103, %102, %86, %79, %73, %65, %48, %40
  ret void
}

declare dso_local %struct.hrtimer_cpu_base* @this_cpu_ptr(i32*) #1

declare dso_local i64 @ktime_sub(i32, i32) #1

declare dso_local i32 @hrtimer_get_expires(%struct.hrtimer*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @hrtimer_get_expires_tv64(%struct.hrtimer*) #1

declare dso_local i32 @ktime_before(i64, i64) #1

declare dso_local i32 @__hrtimer_hres_active(%struct.hrtimer_cpu_base*) #1

declare dso_local i32 @tick_program_event(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
