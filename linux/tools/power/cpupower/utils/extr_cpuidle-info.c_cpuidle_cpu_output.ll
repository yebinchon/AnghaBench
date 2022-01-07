; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpuidle-info.c_cpuidle_cpu_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpuidle-info.c_cpuidle_cpu_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"CPU %u: No idle states\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Number of idle states: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Available idle states:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%s:\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" (DISABLED) \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Flags/Description: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Latency: %lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Usage: %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Duration: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cpuidle_cpu_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuidle_cpu_output(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @cpuidle_state_count(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i8*, ...) @printf(i8* %14, i32 %15)
  br label %105

17:                                               ; preds = %2
  %18 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, ...) @printf(i8* %18, i32 %19)
  %21 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %39, %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @cpuidle_state_name(i32 %28, i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %39

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @free(i8* %37)
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %23

42:                                               ; preds = %23
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %105

47:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %102, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @cpuidle_is_state_disabled(i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i8* @cpuidle_state_name(i32 %60, i32 %61)
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %102

66:                                               ; preds = %59
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %67, i8* %71)
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i8* @cpuidle_state_desc(i32 %75, i32 %76)
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %66
  br label %102

81:                                               ; preds = %66
  %82 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 (i8*, ...) @printf(i8* %82, i8* %83)
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @free(i8* %85)
  %87 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i8* @cpuidle_state_latency(i32 %88, i32 %89)
  %91 = call i32 (i8*, ...) @printf(i8* %87, i8* %90)
  %92 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i8* @cpuidle_state_usage(i32 %93, i32 %94)
  %96 = call i32 (i8*, ...) @printf(i8* %92, i8* %95)
  %97 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i8* @cpuidle_state_time(i32 %98, i32 %99)
  %101 = call i32 (i8*, ...) @printf(i8* %97, i8* %100)
  br label %102

102:                                              ; preds = %81, %80, %65
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %48

105:                                              ; preds = %13, %46, %48
  ret void
}

declare dso_local i32 @cpuidle_state_count(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @cpuidle_state_name(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cpuidle_is_state_disabled(i32, i32) #1

declare dso_local i8* @cpuidle_state_desc(i32, i32) #1

declare dso_local i8* @cpuidle_state_latency(i32, i32) #1

declare dso_local i8* @cpuidle_state_usage(i32, i32) #1

declare dso_local i8* @cpuidle_state_time(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
