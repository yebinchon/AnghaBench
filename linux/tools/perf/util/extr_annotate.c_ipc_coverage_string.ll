; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_ipc_coverage_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_ipc_coverage_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotation = type { double, double, i64, i64 }

@.str = private unnamed_addr constant [42 x i8] c"(Average IPC: %.2f, IPC Coverage: %.1f%%)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.annotation*)* @ipc_coverage_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_coverage_string(i8* %0, i32 %1, %struct.annotation* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.annotation*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.annotation* %2, %struct.annotation** %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %9 = load %struct.annotation*, %struct.annotation** %6, align 8
  %10 = getelementptr inbounds %struct.annotation, %struct.annotation* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.annotation*, %struct.annotation** %6, align 8
  %15 = getelementptr inbounds %struct.annotation, %struct.annotation* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = load %struct.annotation*, %struct.annotation** %6, align 8
  %18 = getelementptr inbounds %struct.annotation, %struct.annotation* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %16, %20
  store double %21, double* %7, align 8
  br label %22

22:                                               ; preds = %13, %3
  %23 = load %struct.annotation*, %struct.annotation** %6, align 8
  %24 = getelementptr inbounds %struct.annotation, %struct.annotation* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.annotation*, %struct.annotation** %6, align 8
  %29 = getelementptr inbounds %struct.annotation, %struct.annotation* %28, i32 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = fmul double %30, 1.000000e+02
  %32 = load %struct.annotation*, %struct.annotation** %6, align 8
  %33 = getelementptr inbounds %struct.annotation, %struct.annotation* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to double
  %36 = fdiv double %31, %35
  store double %36, double* %8, align 8
  br label %37

37:                                               ; preds = %27, %22
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load double, double* %7, align 8
  %41 = load double, double* %8, align 8
  %42 = call i32 @scnprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), double %40, double %41)
  ret void
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
