; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_branch_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_branch_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_type_stat = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"predicted\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, double, double, double, %struct.branch_type_stat*)* @branch_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @branch_to_str(i8* %0, i32 %1, double %2, double %3, double %4, %struct.branch_type_stat* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.branch_type_stat*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store %struct.branch_type_stat* %5, %struct.branch_type_stat** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.branch_type_stat*, %struct.branch_type_stat** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @branch_type_str(%struct.branch_type_stat* %15, i8* %16, i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* %14, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %14, align 4
  br label %24

24:                                               ; preds = %21, %6
  %25 = load double, double* %10, align 8
  %26 = load double, double* %9, align 8
  %27 = fcmp olt double %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %14, align 4
  %31 = load double, double* %10, align 8
  %32 = fmul double %31, 1.000000e+02
  %33 = load double, double* %9, align 8
  %34 = fdiv double %32, %33
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i64 @count_float_printf(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %34, i8* %38, i32 %41, double 0.000000e+00)
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %28, %24
  %48 = load double, double* %11, align 8
  %49 = fcmp une double %48, 0.000000e+00
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  %53 = load double, double* %11, align 8
  %54 = fmul double %53, 1.000000e+02
  %55 = load double, double* %9, align 8
  %56 = fdiv double %54, %55
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i64 @count_float_printf(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), double %56, i8* %60, i32 %63, double 1.000000e-01)
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %50, %47
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i64 @scnprintf(i8* %76, i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %72, %69
  %86 = load i32, i32* %13, align 4
  ret i32 %86
}

declare dso_local i32 @branch_type_str(%struct.branch_type_stat*, i8*, i32) #1

declare dso_local i64 @count_float_printf(i32, i8*, double, i8*, i32, double) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
