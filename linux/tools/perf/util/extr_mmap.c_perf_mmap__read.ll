; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_mmap.c_perf_mmap__read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_mmap.c_perf_mmap__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mmap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i64, i8* }

@page_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.perf_event* (%struct.mmap*, i64*, i64)* @perf_mmap__read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.perf_event* @perf_mmap__read(%struct.mmap* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %struct.mmap*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %union.perf_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.mmap* %0, %struct.mmap** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.mmap*, %struct.mmap** %5, align 8
  %17 = getelementptr inbounds %struct.mmap, %struct.mmap* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @page_size, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %8, align 8
  store %union.perf_event* null, %union.perf_event** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %23, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sge i32 %28, 8
  br i1 %29, label %30, label %137

30:                                               ; preds = %3
  %31 = load i8*, i8** %8, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mmap*, %struct.mmap** %5, align 8
  %35 = getelementptr inbounds %struct.mmap, %struct.mmap* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %33, %37
  %39 = getelementptr inbounds i8, i8* %31, i64 %38
  %40 = bitcast i8* %39 to %union.perf_event*
  store %union.perf_event* %40, %union.perf_event** %9, align 8
  %41 = load %union.perf_event*, %union.perf_event** %9, align 8
  %42 = bitcast %union.perf_event* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ult i64 %45, 8
  br i1 %46, label %52, label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %10, align 4
  %49 = load i64, i64* %11, align 8
  %50 = trunc i64 %49 to i32
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %30
  store %union.perf_event* null, %union.perf_event** %4, align 8
  br label %139

53:                                               ; preds = %47
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mmap*, %struct.mmap** %5, align 8
  %57 = getelementptr inbounds %struct.mmap, %struct.mmap* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %55, %59
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %60, %61
  %63 = load i64*, i64** %6, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %64, %65
  %67 = load %struct.mmap*, %struct.mmap** %5, align 8
  %68 = getelementptr inbounds %struct.mmap, %struct.mmap* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %66, %70
  %72 = icmp ne i64 %62, %71
  br i1 %72, label %73, label %132

73:                                               ; preds = %53
  %74 = load i64*, i64** %6, align 8
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %12, align 4
  %77 = load i64, i64* %11, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @min(i32 8, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.mmap*, %struct.mmap** %5, align 8
  %81 = getelementptr inbounds %struct.mmap, %struct.mmap* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %15, align 8
  br label %84

84:                                               ; preds = %123, %73
  %85 = load %struct.mmap*, %struct.mmap** %5, align 8
  %86 = getelementptr inbounds %struct.mmap, %struct.mmap* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.mmap*, %struct.mmap** %5, align 8
  %93 = getelementptr inbounds %struct.mmap, %struct.mmap* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = and i64 %91, %95
  %97 = sub i64 %89, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @min(i32 %98, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i8*, i8** %15, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = load %struct.mmap*, %struct.mmap** %5, align 8
  %106 = getelementptr inbounds %struct.mmap, %struct.mmap* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = and i64 %104, %108
  %110 = getelementptr inbounds i8, i8* %102, i64 %109
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @memcpy(i8* %101, i8* %110, i32 %111)
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, %113
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i8*, i8** %15, align 8
  %118 = zext i32 %116 to i64
  %119 = getelementptr i8, i8* %117, i64 %118
  store i8* %119, i8** %15, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %84
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %84, label %126

126:                                              ; preds = %123
  %127 = load %struct.mmap*, %struct.mmap** %5, align 8
  %128 = getelementptr inbounds %struct.mmap, %struct.mmap* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = bitcast i8* %130 to %union.perf_event*
  store %union.perf_event* %131, %union.perf_event** %9, align 8
  br label %132

132:                                              ; preds = %126, %53
  %133 = load i64, i64* %11, align 8
  %134 = load i64*, i64** %6, align 8
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, %133
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %132, %3
  %138 = load %union.perf_event*, %union.perf_event** %9, align 8
  store %union.perf_event* %138, %union.perf_event** %4, align 8
  br label %139

139:                                              ; preds = %137, %52
  %140 = load %union.perf_event*, %union.perf_event** %4, align 8
  ret %union.perf_event* %140
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
