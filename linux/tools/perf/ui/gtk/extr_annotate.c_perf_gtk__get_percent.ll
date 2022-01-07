; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/gtk/extr_annotate.c_perf_gtk__get_percent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/gtk/extr_annotate.c_perf_gtk__get_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.symbol = type { i32 }
%struct.disasm_line = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sym_hist = type { double, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { double }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@symbol_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%6.2f%%\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"</span>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.symbol*, %struct.disasm_line*, i32)* @perf_gtk__get_percent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_gtk__get_percent(i8* %0, i64 %1, %struct.symbol* %2, %struct.disasm_line* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.symbol*, align 8
  %10 = alloca %struct.disasm_line*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sym_hist*, align 8
  %13 = alloca double, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.symbol* %2, %struct.symbol** %9, align 8
  store %struct.disasm_line* %3, %struct.disasm_line** %10, align 8
  store i32 %4, i32* %11, align 4
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.disasm_line*, %struct.disasm_line** %10, align 8
  %19 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %106

24:                                               ; preds = %5
  %25 = load %struct.symbol*, %struct.symbol** %9, align 8
  %26 = call i32 @symbol__annotation(%struct.symbol* %25)
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.sym_hist* @annotation__histogram(i32 %26, i32 %27)
  store %struct.sym_hist* %28, %struct.sym_hist** %12, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 0), align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %24
  %32 = load %struct.sym_hist*, %struct.sym_hist** %12, align 8
  %33 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.disasm_line*, %struct.disasm_line** %10, align 8
  %36 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fcmp une double %41, 0.000000e+00
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %106

44:                                               ; preds = %31, %24
  %45 = load %struct.sym_hist*, %struct.sym_hist** %12, align 8
  %46 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.disasm_line*, %struct.disasm_line** %10, align 8
  %49 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = fmul double 1.000000e+02, %54
  %56 = load %struct.sym_hist*, %struct.sym_hist** %12, align 8
  %57 = getelementptr inbounds %struct.sym_hist, %struct.sym_hist* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = fdiv double %55, %58
  store double %59, double* %13, align 8
  %60 = load double, double* %13, align 8
  %61 = call i8* @perf_gtk__get_percent_color(double %60)
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %44
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %65, i64 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %64, %44
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %78, %80
  %82 = load double, double* %13, align 8
  %83 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %77, i64 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %82)
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %15, align 4
  %88 = load i8*, i8** %14, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %73
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i64, i64* %8, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 %95, %97
  %99 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %94, i64 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %90, %73
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %104, %43, %23
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.sym_hist* @annotation__histogram(i32, i32) #1

declare dso_local i32 @symbol__annotation(%struct.symbol*) #1

declare dso_local i8* @perf_gtk__get_percent_color(double) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
