; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_get_boost_mode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_get_boost_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cpufreq_frequencies = type { i32, %struct.cpufreq_frequencies* }

@cpupower_cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X86_VENDOR_AMD = common dso_local global i64 0, align 8
@X86_VENDOR_HYGON = common dso_local global i64 0, align 8
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"boost\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"  boost frequency steps: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_boost_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_boost_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_frequencies*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 8
  %6 = load i64, i64* @X86_VENDOR_AMD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 8
  %10 = load i64, i64* @X86_VENDOR_HYGON, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 8
  %14 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %8, %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @get_boost_mode_x86(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.cpufreq_frequencies* @cpufreq_get_frequencies(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.cpufreq_frequencies* %21, %struct.cpufreq_frequencies** %4, align 8
  %22 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %4, align 8
  %23 = icmp ne %struct.cpufreq_frequencies* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @printf(i8* %25)
  br label %27

27:                                               ; preds = %32, %24
  %28 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %4, align 8
  %29 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %28, i32 0, i32 1
  %30 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %29, align 8
  %31 = icmp ne %struct.cpufreq_frequencies* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %4, align 8
  %34 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @print_speed(i32 %35)
  %37 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %4, align 8
  %39 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %38, i32 0, i32 1
  %40 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %39, align 8
  store %struct.cpufreq_frequencies* %40, %struct.cpufreq_frequencies** %4, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %4, align 8
  %43 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @print_speed(i32 %44)
  %46 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %4, align 8
  %48 = call i32 @cpufreq_put_frequencies(%struct.cpufreq_frequencies* %47)
  br label %49

49:                                               ; preds = %41, %19
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @get_boost_mode_x86(i32) #1

declare dso_local %struct.cpufreq_frequencies* @cpufreq_get_frequencies(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @print_speed(i32) #1

declare dso_local i32 @cpufreq_put_frequencies(%struct.cpufreq_frequencies*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
