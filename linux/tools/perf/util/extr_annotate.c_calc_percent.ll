; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_calc_percent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_calc_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hist = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.hists = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.annotation_data = type { double*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double, i32 }

@PERCENT_HITS_LOCAL = common dso_local global i64 0, align 8
@PERCENT_HITS_GLOBAL = common dso_local global i64 0, align 8
@PERCENT_PERIOD_LOCAL = common dso_local global i64 0, align 8
@PERCENT_PERIOD_GLOBAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hist*, %struct.hists*, %struct.annotation_data*, i64, i64)* @calc_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_percent(%struct.sym_hist* %0, %struct.hists* %1, %struct.annotation_data* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.sym_hist*, align 8
  %7 = alloca %struct.hists*, align 8
  %8 = alloca %struct.annotation_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store %struct.sym_hist* %0, %struct.sym_hist** %6, align 8
  store %struct.hists* %1, %struct.hists** %7, align 8
  store %struct.annotation_data* %2, %struct.annotation_data** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store double 0.000000e+00, double* %12, align 8
  br label %13

13:                                               ; preds = %17, %5
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %19 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %30 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to double
  %37 = load double, double* %12, align 8
  %38 = fadd double %37, %36
  store double %38, double* %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %13

41:                                               ; preds = %13
  %42 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %43 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = load double, double* %12, align 8
  %48 = load %struct.annotation_data*, %struct.annotation_data** %8, align 8
  %49 = getelementptr inbounds %struct.annotation_data, %struct.annotation_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store double %47, double* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.annotation_data*, %struct.annotation_data** %8, align 8
  %53 = getelementptr inbounds %struct.annotation_data, %struct.annotation_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = uitofp i32 %55 to double
  %57 = fmul double 1.000000e+02, %56
  %58 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %59 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %57, %61
  %63 = load %struct.annotation_data*, %struct.annotation_data** %8, align 8
  %64 = getelementptr inbounds %struct.annotation_data, %struct.annotation_data* %63, i32 0, i32 0
  %65 = load double*, double** %64, align 8
  %66 = load i64, i64* @PERCENT_HITS_LOCAL, align 8
  %67 = getelementptr inbounds double, double* %65, i64 %66
  store double %62, double* %67, align 8
  br label %68

68:                                               ; preds = %46, %41
  %69 = load %struct.hists*, %struct.hists** %7, align 8
  %70 = getelementptr inbounds %struct.hists, %struct.hists* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = uitofp i32 %75 to double
  %77 = fmul double 1.000000e+02, %76
  %78 = load %struct.hists*, %struct.hists** %7, align 8
  %79 = getelementptr inbounds %struct.hists, %struct.hists* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sitofp i32 %81 to double
  %83 = fdiv double %77, %82
  %84 = load %struct.annotation_data*, %struct.annotation_data** %8, align 8
  %85 = getelementptr inbounds %struct.annotation_data, %struct.annotation_data* %84, i32 0, i32 0
  %86 = load double*, double** %85, align 8
  %87 = load i64, i64* @PERCENT_HITS_GLOBAL, align 8
  %88 = getelementptr inbounds double, double* %86, i64 %87
  store double %83, double* %88, align 8
  br label %89

89:                                               ; preds = %74, %68
  %90 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %91 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load double, double* %12, align 8
  %96 = fmul double 1.000000e+02, %95
  %97 = load %struct.sym_hist*, %struct.sym_hist** %6, align 8
  %98 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sitofp i32 %99 to double
  %101 = fdiv double %96, %100
  %102 = load %struct.annotation_data*, %struct.annotation_data** %8, align 8
  %103 = getelementptr inbounds %struct.annotation_data, %struct.annotation_data* %102, i32 0, i32 0
  %104 = load double*, double** %103, align 8
  %105 = load i64, i64* @PERCENT_PERIOD_LOCAL, align 8
  %106 = getelementptr inbounds double, double* %104, i64 %105
  store double %101, double* %106, align 8
  br label %107

107:                                              ; preds = %94, %89
  %108 = load %struct.hists*, %struct.hists** %7, align 8
  %109 = getelementptr inbounds %struct.hists, %struct.hists* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = load double, double* %12, align 8
  %115 = fmul double 1.000000e+02, %114
  %116 = load %struct.hists*, %struct.hists** %7, align 8
  %117 = getelementptr inbounds %struct.hists, %struct.hists* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sitofp i32 %119 to double
  %121 = fdiv double %115, %120
  %122 = load %struct.annotation_data*, %struct.annotation_data** %8, align 8
  %123 = getelementptr inbounds %struct.annotation_data, %struct.annotation_data* %122, i32 0, i32 0
  %124 = load double*, double** %123, align 8
  %125 = load i64, i64* @PERCENT_PERIOD_GLOBAL, align 8
  %126 = getelementptr inbounds double, double* %124, i64 %125
  store double %121, double* %126, align 8
  br label %127

127:                                              ; preds = %113, %107
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
