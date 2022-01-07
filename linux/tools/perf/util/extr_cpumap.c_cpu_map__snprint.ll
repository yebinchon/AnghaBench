; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__snprint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__snprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32, i32* }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s%d-%d\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cpumask list: %s\0A\00", align 1
@COMMA = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cpu_map__snprint(%struct.perf_cpu_map* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.perf_cpu_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.perf_cpu_map* %0, %struct.perf_cpu_map** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %146, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %17 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %149

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %24 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @INT_MAX, align 4
  br label %40

32:                                               ; preds = %21
  %33 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %34 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %32, %30
  %41 = phi i32 [ %31, %30 ], [ %39, %32 ]
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = sub i64 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %59 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %60 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 (i8*, i64, i8*, i8*, i32, ...) @snprintf(i8* %51, i64 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %65)
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %48, %44
  br label %145

70:                                               ; preds = %40
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %76 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %74, %81
  %83 = icmp ne i32 %73, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %144

87:                                               ; preds = %84, %70
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %87
  %94 = load i8*, i8** %5, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %11, align 8
  %99 = sub i64 %97, %98
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %104 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %105 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 (i8*, i64, i8*, i8*, i32, ...) @snprintf(i8* %96, i64 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %103, i32 %110)
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %11, align 8
  br label %142

114:                                              ; preds = %87
  %115 = load i8*, i8** %5, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* %11, align 8
  %120 = sub i64 %118, %119
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %125 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %126 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  %133 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i64 (i8*, i64, i8*, i8*, i32, ...) @snprintf(i8* %117, i64 %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %124, i32 %131, i32 %138)
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %11, align 8
  br label %142

142:                                              ; preds = %114, %93
  store i32 0, i32* %10, align 4
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %142, %84
  br label %145

145:                                              ; preds = %144, %69
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %14

149:                                              ; preds = %14
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @pr_debug2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %150)
  %152 = load i64, i64* %11, align 8
  ret i64 %152
}

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i32, ...) #1

declare dso_local i32 @pr_debug2(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
