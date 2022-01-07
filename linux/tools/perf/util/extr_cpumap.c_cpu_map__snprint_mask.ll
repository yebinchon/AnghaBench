; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__snprint_mask.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cpumap.c_cpu_map__snprint_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cpu_map__snprint_mask(%struct.perf_cpu_map* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.perf_cpu_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.perf_cpu_map* %0, %struct.perf_cpu_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  %15 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %16 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %17 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @cpu_map__cpu(%struct.perf_cpu_map* %15, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %119

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  %26 = sdiv i32 %25, 8
  %27 = add nsw i32 %26, 1
  %28 = call i8* @zalloc(i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %33, align 1
  store i64 0, i64* %4, align 8
  br label %119

34:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %38 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @cpu_map__cpu(%struct.perf_cpu_map* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = srem i32 %45, 8
  %47 = shl i32 1, %46
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sdiv i32 %49, 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %47
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  br label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %35

60:                                               ; preds = %35
  %61 = load i32, i32* %12, align 4
  %62 = sdiv i32 %61, 4
  %63 = mul nsw i32 %62, 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %103, %60
  %65 = load i32, i32* %9, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %106

67:                                               ; preds = %64
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %69, 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  store i8 %73, i8* %13, align 1
  %74 = load i32, i32* %9, align 4
  %75 = srem i32 %74, 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load i8, i8* %13, align 1
  %79 = zext i8 %78 to i32
  %80 = ashr i32 %79, 4
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %13, align 1
  br label %87

82:                                               ; preds = %67
  %83 = load i8, i8* %13, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 15
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %13, align 1
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i8, i8* %13, align 1
  %89 = call i32 @hex_char(i8 zeroext %88)
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %10, align 8
  store i8 %90, i8* %91, align 1
  %93 = load i32, i32* %9, align 4
  %94 = srem i32 %93, 32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %10, align 8
  store i8 44, i8* %100, align 1
  br label %102

102:                                              ; preds = %99, %96, %87
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %104, 4
  store i32 %105, i32* %9, align 4
  br label %64

106:                                              ; preds = %64
  %107 = load i8*, i8** %10, align 8
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i8*, i8** %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  store i64 %118, i64* %4, align 8
  br label %119

119:                                              ; preds = %106, %31, %23
  %120 = load i64, i64* %4, align 8
  ret i64 %120
}

declare dso_local i32 @cpu_map__cpu(%struct.perf_cpu_map*, i32) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @hex_char(i8 zeroext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
