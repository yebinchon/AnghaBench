; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumcf_dumpctr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumcf_dumpctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_cpumsf = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { %struct.s390_cpumsf_queue* }
%struct.s390_cpumsf_queue = type { i32* }
%struct.perf_sample = type { i64, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s/aux.ctr.%02x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"aux.ctr.%02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Failed to open counter set log file %s, continue...\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to write counter set data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s390_cpumsf*, %struct.perf_sample*)* @s390_cpumcf_dumpctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cpumcf_dumpctr(%struct.s390_cpumsf* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s390_cpumsf*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.s390_cpumsf_queue*, align 8
  %7 = alloca %struct.auxtrace_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.s390_cpumsf* %0, %struct.s390_cpumsf** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %12 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %17 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %21 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ule i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15, %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %109

26:                                               ; preds = %15
  %27 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %28 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %29, align 8
  %31 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %32 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %30, i64 %33
  store %struct.auxtrace_queue* %34, %struct.auxtrace_queue** %7, align 8
  %35 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %7, align 8
  %36 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %35, i32 0, i32 0
  %37 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %36, align 8
  store %struct.s390_cpumsf_queue* %37, %struct.s390_cpumsf_queue** %6, align 8
  %38 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %39 = icmp ne %struct.s390_cpumsf_queue* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %109

42:                                               ; preds = %26
  %43 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %44 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %85, label %47

47:                                               ; preds = %42
  %48 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %49 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %54 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %57 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8**, i8*, i64, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %58)
  br label %65

60:                                               ; preds = %47
  %61 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %62 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8**, i8*, i64, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %60, %52
  %66 = phi i32 [ %59, %52 ], [ %64, %60 ]
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8*, i8** %9, align 8
  %71 = call i32* @fopen(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %73 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %76 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %82, %42
  %86 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %87 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %92 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %95 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, 4
  %98 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %99 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @fwrite(i32 %93, i64 %97, i32 1, i32* %100)
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %106

106:                                              ; preds = %104, %90
  br label %107

107:                                              ; preds = %106, %85
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %40, %24
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @asprintf(i8**, i8*, i64, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fwrite(i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
