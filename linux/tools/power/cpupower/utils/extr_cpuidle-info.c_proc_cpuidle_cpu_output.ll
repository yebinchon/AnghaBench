; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpuidle-info.c_proc_cpuidle_cpu_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpuidle-info.c_proc_cpuidle_cpu_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"CPU %u: No C-states info\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"active state:            C0\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"max_cstate:              C%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"maximum allowed latency: %lu usec\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"states:\09\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"    C%d:                  type[C%d] \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"promotion[--] demotion[--] \00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"latency[%03lu] \00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"usage[%08lu] \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"duration[%020Lu] \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @proc_cpuidle_cpu_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_cpuidle_cpu_output(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 2000000000, i64* %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @cpuidle_state_count(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (i8*, ...) @printf(i8* %11, i32 %12)
  br label %55

14:                                               ; preds = %1
  %15 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* %15)
  %17 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  %19 = sub i32 %18, 1
  %20 = call i32 (i8*, ...) @printf(i8* %17, i32 %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i64, i64* %3, align 8
  %23 = call i32 (i8*, ...) @printf(i8* %21, i64 %22)
  %24 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* %24)
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %52, %14
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, ...) @printf(i8* %31, i32 %32, i32 %33)
  %35 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* %35)
  %37 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @cpuidle_state_latency(i32 %38, i32 %39)
  %41 = call i32 (i8*, ...) @printf(i8* %37, i64 %40)
  %42 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @cpuidle_state_usage(i32 %43, i32 %44)
  %46 = call i32 (i8*, ...) @printf(i8* %42, i64 %45)
  %47 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @cpuidle_state_time(i32 %48, i32 %49)
  %51 = call i32 (i8*, ...) @printf(i8* %47, i64 %50)
  br label %52

52:                                               ; preds = %30
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %26

55:                                               ; preds = %10, %26
  ret void
}

declare dso_local i32 @cpuidle_state_count(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @cpuidle_state_latency(i32, i32) #1

declare dso_local i64 @cpuidle_state_usage(i32, i32) #1

declare dso_local i64 @cpuidle_state_time(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
