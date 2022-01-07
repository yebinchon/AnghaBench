; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotate__branch_printf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotate__branch_printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_range = type { i64, i32, i64, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"\09#\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" +%.2f%%\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" -%.2f%% (p:%.2f%%)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.block_range*, i64)* @annotate__branch_printf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @annotate__branch_printf(%struct.block_range* %0, i64 %1) #0 {
  %3 = alloca %struct.block_range*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_range*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.block_range* %0, %struct.block_range** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.block_range*, %struct.block_range** %3, align 8
  %10 = icmp ne %struct.block_range* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %99

12:                                               ; preds = %2
  %13 = load %struct.block_range*, %struct.block_range** %3, align 8
  %14 = getelementptr inbounds %struct.block_range, %struct.block_range* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = load %struct.block_range*, %struct.block_range** %3, align 8
  %19 = getelementptr inbounds %struct.block_range, %struct.block_range* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.block_range*, %struct.block_range** %3, align 8
  store %struct.block_range* %24, %struct.block_range** %6, align 8
  br label %25

25:                                               ; preds = %31, %23
  %26 = load %struct.block_range*, %struct.block_range** %6, align 8
  %27 = getelementptr inbounds %struct.block_range, %struct.block_range* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.block_range*, %struct.block_range** %6, align 8
  %33 = call %struct.block_range* @block_range__next(%struct.block_range* %32)
  store %struct.block_range* %33, %struct.block_range** %6, align 8
  br label %25

34:                                               ; preds = %25
  %35 = load %struct.block_range*, %struct.block_range** %3, align 8
  %36 = getelementptr inbounds %struct.block_range, %struct.block_range* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to double
  %39 = fmul double 1.000000e+02, %38
  %40 = load %struct.block_range*, %struct.block_range** %6, align 8
  %41 = getelementptr inbounds %struct.block_range, %struct.block_range* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %39, %43
  store double %44, double* %7, align 8
  %45 = load double, double* %7, align 8
  %46 = fcmp ogt double %45, 1.000000e-01
  br i1 %46, label %47, label %55

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load double, double* %7, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %53)
  br label %55

55:                                               ; preds = %52, %34
  br label %56

56:                                               ; preds = %55, %17, %12
  %57 = load %struct.block_range*, %struct.block_range** %3, align 8
  %58 = getelementptr inbounds %struct.block_range, %struct.block_range* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %56
  %62 = load %struct.block_range*, %struct.block_range** %3, align 8
  %63 = getelementptr inbounds %struct.block_range, %struct.block_range* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %61
  %68 = load %struct.block_range*, %struct.block_range** %3, align 8
  %69 = getelementptr inbounds %struct.block_range, %struct.block_range* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = sitofp i32 %70 to double
  %72 = fmul double 1.000000e+02, %71
  %73 = load %struct.block_range*, %struct.block_range** %3, align 8
  %74 = getelementptr inbounds %struct.block_range, %struct.block_range* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %72, %76
  store double %77, double* %8, align 8
  %78 = load double, double* %8, align 8
  %79 = fcmp ogt double %78, 1.000000e-01
  br i1 %79, label %80, label %98

80:                                               ; preds = %67
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  %86 = load double, double* %8, align 8
  %87 = load %struct.block_range*, %struct.block_range** %3, align 8
  %88 = getelementptr inbounds %struct.block_range, %struct.block_range* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = sitofp i64 %89 to double
  %91 = fmul double 1.000000e+02, %90
  %92 = load %struct.block_range*, %struct.block_range** %3, align 8
  %93 = getelementptr inbounds %struct.block_range, %struct.block_range* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %91, %95
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), double %86, double %96)
  br label %98

98:                                               ; preds = %85, %67
  br label %99

99:                                               ; preds = %11, %98, %61, %56
  ret void
}

declare dso_local %struct.block_range* @block_range__next(%struct.block_range*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
