; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__sym_ipc_snprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__sym_ipc_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.symbol* }
%struct.symbol = type { i32 }
%struct.annotation = type { double, double, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%-5.2f [%5.1f%%]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, i8*, i64, i32)* @hist_entry__sym_ipc_snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__sym_ipc_snprintf(%struct.hist_entry* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca %struct.annotation*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca [64 x i8], align 16
  store %struct.hist_entry* %0, %struct.hist_entry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %16 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.symbol*, %struct.symbol** %17, align 8
  store %struct.symbol* %18, %struct.symbol** %10, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  %19 = load %struct.symbol*, %struct.symbol** %10, align 8
  %20 = icmp ne %struct.symbol* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @repsep_snprintf(i8* %22, i64 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %5, align 4
  br label %67

26:                                               ; preds = %4
  %27 = load %struct.symbol*, %struct.symbol** %10, align 8
  %28 = call %struct.annotation* @symbol__annotation(%struct.symbol* %27)
  store %struct.annotation* %28, %struct.annotation** %11, align 8
  %29 = load %struct.annotation*, %struct.annotation** %11, align 8
  %30 = getelementptr inbounds %struct.annotation, %struct.annotation* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.annotation*, %struct.annotation** %11, align 8
  %35 = getelementptr inbounds %struct.annotation, %struct.annotation* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = load %struct.annotation*, %struct.annotation** %11, align 8
  %38 = getelementptr inbounds %struct.annotation, %struct.annotation* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = sitofp i64 %39 to double
  %41 = fdiv double %36, %40
  store double %41, double* %12, align 8
  br label %42

42:                                               ; preds = %33, %26
  %43 = load %struct.annotation*, %struct.annotation** %11, align 8
  %44 = getelementptr inbounds %struct.annotation, %struct.annotation* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.annotation*, %struct.annotation** %11, align 8
  %49 = getelementptr inbounds %struct.annotation, %struct.annotation* %48, i32 0, i32 1
  %50 = load double, double* %49, align 8
  %51 = fmul double %50, 1.000000e+02
  %52 = load %struct.annotation*, %struct.annotation** %11, align 8
  %53 = getelementptr inbounds %struct.annotation, %struct.annotation* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sitofp i64 %54 to double
  %56 = fdiv double %51, %55
  store double %56, double* %13, align 8
  br label %57

57:                                               ; preds = %47, %42
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %59 = load double, double* %12, align 8
  %60 = load double, double* %13, align 8
  %61 = call i32 @snprintf(i8* %58, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), double %59, double %60)
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %66 = call i32 @repsep_snprintf(i8* %62, i64 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %64, i8* %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %57, %21
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @repsep_snprintf(i8*, i64, i8*, i32, i8*) #1

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
