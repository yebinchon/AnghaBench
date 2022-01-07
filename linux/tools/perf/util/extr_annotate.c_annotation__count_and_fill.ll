; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation__count_and_fill.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation__count_and_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotation = type { i32, i32, i32, %struct.annotation_line** }
%struct.annotation_line = type { double }
%struct.cyc_hist = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.annotation*, i64, i64, %struct.cyc_hist*)* @annotation__count_and_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @annotation__count_and_fill(%struct.annotation* %0, i64 %1, i64 %2, %struct.cyc_hist* %3) #0 {
  %5 = alloca %struct.annotation*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cyc_hist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca float, align 4
  %13 = alloca %struct.annotation_line*, align 8
  store %struct.annotation* %0, %struct.annotation** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.cyc_hist* %3, %struct.cyc_hist** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.annotation*, %struct.annotation** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @annotation__count_insn(%struct.annotation* %14, i64 %15, i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %108

20:                                               ; preds = %4
  %21 = load %struct.cyc_hist*, %struct.cyc_hist** %8, align 8
  %22 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %108

25:                                               ; preds = %20
  %26 = load %struct.cyc_hist*, %struct.cyc_hist** %8, align 8
  %27 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %108

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = uitofp i32 %31 to double
  %33 = load %struct.cyc_hist*, %struct.cyc_hist** %8, align 8
  %34 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to double
  %37 = load %struct.cyc_hist*, %struct.cyc_hist** %8, align 8
  %38 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = uitofp i32 %39 to double
  %41 = fdiv double %36, %40
  %42 = fdiv double %32, %41
  %43 = fptrunc double %42 to float
  store float %43, float* %12, align 4
  %44 = load %struct.cyc_hist*, %struct.cyc_hist** %8, align 8
  %45 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 32767
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %108

49:                                               ; preds = %30
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %77, %49
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ule i64 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load %struct.annotation*, %struct.annotation** %5, align 8
  %57 = getelementptr inbounds %struct.annotation, %struct.annotation* %56, i32 0, i32 3
  %58 = load %struct.annotation_line**, %struct.annotation_line*** %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds %struct.annotation_line*, %struct.annotation_line** %58, i64 %59
  %61 = load %struct.annotation_line*, %struct.annotation_line** %60, align 8
  store %struct.annotation_line* %61, %struct.annotation_line** %13, align 8
  %62 = load %struct.annotation_line*, %struct.annotation_line** %13, align 8
  %63 = icmp ne %struct.annotation_line* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %55
  %65 = load %struct.annotation_line*, %struct.annotation_line** %13, align 8
  %66 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = fcmp oeq double %67, 0.000000e+00
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load float, float* %12, align 4
  %71 = fpext float %70 to double
  %72 = load %struct.annotation_line*, %struct.annotation_line** %13, align 8
  %73 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %72, i32 0, i32 0
  store double %71, double* %73, align 8
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %69, %64, %55
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %11, align 8
  br label %51

80:                                               ; preds = %51
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = load %struct.cyc_hist*, %struct.cyc_hist** %8, align 8
  %85 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.annotation*, %struct.annotation** %5, align 8
  %88 = getelementptr inbounds %struct.annotation, %struct.annotation* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.cyc_hist*, %struct.cyc_hist** %8, align 8
  %95 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul i32 %93, %96
  %98 = load %struct.annotation*, %struct.annotation** %5, align 8
  %99 = getelementptr inbounds %struct.annotation, %struct.annotation* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.annotation*, %struct.annotation** %5, align 8
  %104 = getelementptr inbounds %struct.annotation, %struct.annotation* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %83, %80
  br label %108

108:                                              ; preds = %48, %107, %25, %20, %4
  ret void
}

declare dso_local i32 @annotation__count_insn(%struct.annotation*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
