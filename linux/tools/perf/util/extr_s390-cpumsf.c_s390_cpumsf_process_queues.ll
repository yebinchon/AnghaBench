; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_process_queues.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_process_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_cpumsf = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.auxtrace_queue* }
%struct.auxtrace_queue = type { %struct.s390_cpumsf_queue* }
%struct.s390_cpumsf_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s390_cpumsf*, i64)* @s390_cpumsf_process_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cpumsf_process_queues(%struct.s390_cpumsf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s390_cpumsf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.auxtrace_queue*, align 8
  %10 = alloca %struct.s390_cpumsf_queue*, align 8
  store %struct.s390_cpumsf* %0, %struct.s390_cpumsf** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %11

11:                                               ; preds = %2, %98
  %12 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %13 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %99

18:                                               ; preds = %11
  %19 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %20 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %99

29:                                               ; preds = %18
  %30 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %31 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %38 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %40, i64 %42
  store %struct.auxtrace_queue* %43, %struct.auxtrace_queue** %9, align 8
  %44 = load %struct.auxtrace_queue*, %struct.auxtrace_queue** %9, align 8
  %45 = getelementptr inbounds %struct.auxtrace_queue, %struct.auxtrace_queue* %44, i32 0, i32 0
  %46 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %45, align 8
  store %struct.s390_cpumsf_queue* %46, %struct.s390_cpumsf_queue** %10, align 8
  %47 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %48 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %47, i32 0, i32 0
  %49 = call i32 @auxtrace_heap__pop(%struct.TYPE_7__* %48)
  %50 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %51 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %29
  %56 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %57 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %67, %55
  br label %72

70:                                               ; preds = %29
  %71 = load i64, i64* %5, align 8
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %70, %69
  %73 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %10, align 8
  %74 = call i32 @s390_cpumsf_run_decoder(%struct.s390_cpumsf_queue* %73, i64* %7)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %79 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %78, i32 0, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @auxtrace_heap__add(%struct.TYPE_7__* %79, i32 %80, i64 %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %99

84:                                               ; preds = %72
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %84
  %88 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %89 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %88, i32 0, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @auxtrace_heap__add(%struct.TYPE_7__* %89, i32 %90, i64 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %99

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %84
  br label %11

99:                                               ; preds = %95, %77, %28, %17
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @auxtrace_heap__pop(%struct.TYPE_7__*) #1

declare dso_local i32 @s390_cpumsf_run_decoder(%struct.s390_cpumsf_queue*, i64*) #1

declare dso_local i32 @auxtrace_heap__add(%struct.TYPE_7__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
