; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation__compute_ipc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation__compute_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotation = type { i32, i32, %struct.annotation_line**, %struct.TYPE_2__*, i64, i64, i64, i32 }
%struct.annotation_line = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.cyc_hist* }
%struct.cyc_hist = type { i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @annotation__compute_ipc(%struct.annotation* %0, i64 %1) #0 {
  %3 = alloca %struct.annotation*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cyc_hist*, align 8
  %7 = alloca %struct.annotation_line*, align 8
  store %struct.annotation* %0, %struct.annotation** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.annotation*, %struct.annotation** %3, align 8
  %9 = getelementptr inbounds %struct.annotation, %struct.annotation* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.annotation*, %struct.annotation** %3, align 8
  %14 = getelementptr inbounds %struct.annotation, %struct.annotation* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.cyc_hist*, %struct.cyc_hist** %16, align 8
  %18 = icmp ne %struct.cyc_hist* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %2
  br label %114

20:                                               ; preds = %12
  %21 = load %struct.annotation*, %struct.annotation** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub i64 %22, 1
  %24 = call i32 @annotation__count_insn(%struct.annotation* %21, i32 0, i64 %23)
  %25 = load %struct.annotation*, %struct.annotation** %3, align 8
  %26 = getelementptr inbounds %struct.annotation, %struct.annotation* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.annotation*, %struct.annotation** %3, align 8
  %28 = getelementptr inbounds %struct.annotation, %struct.annotation* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.annotation*, %struct.annotation** %3, align 8
  %30 = getelementptr inbounds %struct.annotation, %struct.annotation* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.annotation*, %struct.annotation** %3, align 8
  %32 = getelementptr inbounds %struct.annotation, %struct.annotation* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.annotation*, %struct.annotation** %3, align 8
  %34 = getelementptr inbounds %struct.annotation, %struct.annotation* %33, i32 0, i32 1
  %35 = call i32 @pthread_mutex_lock(i32* %34)
  %36 = load i64, i64* %4, align 8
  %37 = sub i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %107, %20
  %39 = load i64, i64* %5, align 8
  %40 = icmp uge i64 %39, 0
  br i1 %40, label %41, label %110

41:                                               ; preds = %38
  %42 = load %struct.annotation*, %struct.annotation** %3, align 8
  %43 = getelementptr inbounds %struct.annotation, %struct.annotation* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.cyc_hist*, %struct.cyc_hist** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %46, i64 %47
  store %struct.cyc_hist* %48, %struct.cyc_hist** %6, align 8
  %49 = load %struct.cyc_hist*, %struct.cyc_hist** %6, align 8
  %50 = icmp ne %struct.cyc_hist* %49, null
  br i1 %50, label %51, label %106

51:                                               ; preds = %41
  %52 = load %struct.cyc_hist*, %struct.cyc_hist** %6, align 8
  %53 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %106

56:                                               ; preds = %51
  %57 = load %struct.cyc_hist*, %struct.cyc_hist** %6, align 8
  %58 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.annotation*, %struct.annotation** %3, align 8
  %63 = load %struct.cyc_hist*, %struct.cyc_hist** %6, align 8
  %64 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.cyc_hist*, %struct.cyc_hist** %6, align 8
  %68 = call i32 @annotation__count_and_fill(%struct.annotation* %62, i32 %65, i64 %66, %struct.cyc_hist* %67)
  br label %69

69:                                               ; preds = %61, %56
  %70 = load %struct.annotation*, %struct.annotation** %3, align 8
  %71 = getelementptr inbounds %struct.annotation, %struct.annotation* %70, i32 0, i32 2
  %72 = load %struct.annotation_line**, %struct.annotation_line*** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.annotation_line*, %struct.annotation_line** %72, i64 %73
  %75 = load %struct.annotation_line*, %struct.annotation_line** %74, align 8
  store %struct.annotation_line* %75, %struct.annotation_line** %7, align 8
  %76 = load %struct.annotation_line*, %struct.annotation_line** %7, align 8
  %77 = icmp ne %struct.annotation_line* %76, null
  br i1 %77, label %78, label %103

78:                                               ; preds = %69
  %79 = load %struct.cyc_hist*, %struct.cyc_hist** %6, align 8
  %80 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = load %struct.cyc_hist*, %struct.cyc_hist** %6, align 8
  %85 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cyc_hist*, %struct.cyc_hist** %6, align 8
  %88 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sdiv i32 %86, %89
  %91 = load %struct.annotation_line*, %struct.annotation_line** %7, align 8
  %92 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.cyc_hist*, %struct.cyc_hist** %6, align 8
  %94 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.annotation_line*, %struct.annotation_line** %7, align 8
  %97 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.cyc_hist*, %struct.cyc_hist** %6, align 8
  %99 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.annotation_line*, %struct.annotation_line** %7, align 8
  %102 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %83, %78, %69
  %104 = load %struct.annotation*, %struct.annotation** %3, align 8
  %105 = getelementptr inbounds %struct.annotation, %struct.annotation* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %51, %41
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %5, align 8
  %109 = add i64 %108, -1
  store i64 %109, i64* %5, align 8
  br label %38

110:                                              ; preds = %38
  %111 = load %struct.annotation*, %struct.annotation** %3, align 8
  %112 = getelementptr inbounds %struct.annotation, %struct.annotation* %111, i32 0, i32 1
  %113 = call i32 @pthread_mutex_unlock(i32* %112)
  br label %114

114:                                              ; preds = %110, %19
  ret void
}

declare dso_local i32 @annotation__count_insn(%struct.annotation*, i32, i64) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @annotation__count_and_fill(%struct.annotation*, i32, i64, %struct.cyc_hist*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
