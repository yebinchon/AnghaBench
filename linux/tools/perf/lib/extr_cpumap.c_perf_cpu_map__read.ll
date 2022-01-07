; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_cpumap.c_perf_cpu_map__read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_cpumap.c_perf_cpu_map__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@MAX_NR_CPUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Perf can support %d CPUs. Consider raising MAX_NR_CPUS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_cpu_map* @perf_cpu_map__read(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.perf_cpu_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store %struct.perf_cpu_map* null, %struct.perf_cpu_map** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i8 0, i8* %11, align 1
  store i32 -1, i32* %10, align 4
  br label %13

13:                                               ; preds = %111, %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @fscanf(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %9, i8* %11)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %112

19:                                               ; preds = %13
  %20 = load i32, i32* %10, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @MAX_NR_CPUS, align 4
  %31 = icmp sge i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @MAX_NR_CPUS, align 4
  %34 = call i32 @WARN_ONCE(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %22
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @MAX_NR_CPUS, align 4
  %41 = sdiv i32 %40, 2
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32* @realloc(i32* %43, i32 %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %122

52:                                               ; preds = %38
  %53 = load i32*, i32** %6, align 8
  store i32* %53, i32** %5, align 8
  br label %54

54:                                               ; preds = %52, %22
  br label %55

55:                                               ; preds = %60, %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %61, i32* %66, align 4
  br label %55

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %19
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i32, i32* @MAX_NR_CPUS, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i32* @realloc(i32* %76, i32 %80)
  store i32* %81, i32** %6, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %122

85:                                               ; preds = %72
  %86 = load i32*, i32** %6, align 8
  store i32* %86, i32** %5, align 8
  br label %87

87:                                               ; preds = %85, %68
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load i8, i8* %11, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 45
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %10, align 4
  br label %103

102:                                              ; preds = %96, %87
  store i32 -1, i32* %10, align 4
  br label %103

103:                                              ; preds = %102, %100
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load i8, i8* %11, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %103
  br label %112

111:                                              ; preds = %106
  br label %13

112:                                              ; preds = %110, %18
  %113 = load i32, i32* %4, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %4, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = call %struct.perf_cpu_map* @cpu_map__trim_new(i32 %116, i32* %117)
  store %struct.perf_cpu_map* %118, %struct.perf_cpu_map** %3, align 8
  br label %121

119:                                              ; preds = %112
  %120 = call %struct.perf_cpu_map* (...) @cpu_map__default_new()
  store %struct.perf_cpu_map* %120, %struct.perf_cpu_map** %3, align 8
  br label %121

121:                                              ; preds = %119, %115
  br label %122

122:                                              ; preds = %121, %84, %51
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @free(i32* %123)
  %125 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %3, align 8
  ret %struct.perf_cpu_map* %125
}

declare dso_local i32 @fscanf(i32*, i8*, i32*, i8*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local %struct.perf_cpu_map* @cpu_map__trim_new(i32, i32*) #1

declare dso_local %struct.perf_cpu_map* @cpu_map__default_new(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
