; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_cpu_to_ptq.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_cpu_to_ptq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { i32 }
%struct.intel_pt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.intel_pt_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_pt_queue* (%struct.intel_pt*, i32)* @intel_pt_cpu_to_ptq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_pt_queue* @intel_pt_cpu_to_ptq(%struct.intel_pt* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_pt_queue*, align 8
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_pt* %0, %struct.intel_pt** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %12 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %2
  store %struct.intel_pt_queue* null, %struct.intel_pt_queue** %3, align 8
  br label %120

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %20 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp uge i32 %18, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %26 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %34 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %32
  %45 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %46 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %52, align 8
  store %struct.intel_pt_queue* %53, %struct.intel_pt_queue** %3, align 8
  br label %120

54:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %82, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp ugt i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %60 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, -1
  store i32 %64, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %58
  %72 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %73 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %79, align 8
  store %struct.intel_pt_queue* %80, %struct.intel_pt_queue** %3, align 8
  br label %120

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %55

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %116, %85
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %89 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %87, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %86
  %94 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %95 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %93
  %106 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %107 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %113, align 8
  store %struct.intel_pt_queue* %114, %struct.intel_pt_queue** %3, align 8
  br label %120

115:                                              ; preds = %93
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %86

119:                                              ; preds = %86
  store %struct.intel_pt_queue* null, %struct.intel_pt_queue** %3, align 8
  br label %120

120:                                              ; preds = %119, %105, %71, %44, %16
  %121 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %3, align 8
  ret %struct.intel_pt_queue* %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
