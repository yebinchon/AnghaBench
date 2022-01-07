; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_print_hwp_request.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_print_hwp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_hwp_request = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"cpu%d: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"HWP_REQ: min %d max %d des %d epp %d window 0x%x (%d*10^%dus) use_pkg %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_hwp_request(i32 %0, %struct.msr_hwp_request* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msr_hwp_request*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.msr_hwp_request* %1, %struct.msr_hwp_request** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %20 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %23 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %26 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %29 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %32 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %35 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 127
  %38 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %39 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 7
  %42 = and i32 %41, 7
  %43 = load %struct.msr_hwp_request*, %struct.msr_hwp_request** %5, align 8
  %44 = getelementptr inbounds %struct.msr_hwp_request, %struct.msr_hwp_request* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %37, i32 %42, i32 %45)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
