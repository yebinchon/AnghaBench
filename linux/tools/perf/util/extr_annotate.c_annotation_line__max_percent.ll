; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation_line__max_percent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation_line__max_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotation_line = type { i32* }
%struct.annotation = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.annotation_line*, %struct.annotation*, i32)* @annotation_line__max_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @annotation_line__max_percent(%struct.annotation_line* %0, %struct.annotation* %1, i32 %2) #0 {
  %4 = alloca %struct.annotation_line*, align 8
  %5 = alloca %struct.annotation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store %struct.annotation_line* %0, %struct.annotation_line** %4, align 8
  store %struct.annotation* %1, %struct.annotation** %5, align 8
  store i32 %2, i32* %6, align 4
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.annotation*, %struct.annotation** %5, align 8
  %13 = getelementptr inbounds %struct.annotation, %struct.annotation* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.annotation_line*, %struct.annotation_line** %4, align 8
  %18 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %6, align 4
  %24 = call double @annotation_data__percent(i32* %22, i32 %23)
  store double %24, double* %9, align 8
  %25 = load double, double* %9, align 8
  %26 = load double, double* %7, align 8
  %27 = fcmp ogt double %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load double, double* %9, align 8
  store double %29, double* %7, align 8
  br label %30

30:                                               ; preds = %28, %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load double, double* %7, align 8
  ret double %35
}

declare dso_local double @annotation_data__percent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
