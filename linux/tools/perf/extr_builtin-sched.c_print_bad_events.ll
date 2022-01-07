; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_print_bad_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_print_bad_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [54 x i8] c"  INFO: %.3f%% unordered timestamps (%ld out of %ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"  INFO: %.3f%% lost events (%ld out of %ld, in %ld chunks)\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"  INFO: %.3f%% context switch bugs (%ld out of %ld)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" (due to lost events?)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*)* @print_bad_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bad_events(%struct.perf_sched* %0) #0 {
  %2 = alloca %struct.perf_sched*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %2, align 8
  %3 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %4 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %9 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %14 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sitofp i32 %15 to double
  %17 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %18 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %16, %20
  %22 = fmul double %21, 1.000000e+02
  %23 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %24 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %27 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), double %22, i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %12, %7, %1
  %31 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %32 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %37 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %42 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to double
  %45 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %46 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to double
  %49 = fdiv double %44, %48
  %50 = fmul double %49, 1.000000e+02
  %51 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %52 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %55 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %58 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), double %50, i64 %53, i64 %56, i32 %59)
  br label %61

61:                                               ; preds = %40, %35, %30
  %62 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %63 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %61
  %67 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %68 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %66
  %72 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %73 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sitofp i32 %74 to double
  %76 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %77 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = sitofp i64 %78 to double
  %80 = fdiv double %75, %79
  %81 = fmul double %80, 1.000000e+02
  %82 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %83 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %86 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), double %81, i32 %84, i64 %87)
  %89 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %90 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %71
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %71
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %66, %61
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
