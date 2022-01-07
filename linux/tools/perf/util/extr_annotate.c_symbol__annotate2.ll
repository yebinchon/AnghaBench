; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__annotate2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__annotate2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.map = type { i32 }
%struct.evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.annotation_options = type { i32 }
%struct.arch = type { i32 }
%struct.annotation = type { i32, i32*, %struct.annotation_options* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symbol__annotate2(%struct.symbol* %0, %struct.map* %1, %struct.evsel* %2, %struct.annotation_options* %3, %struct.arch** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca %struct.annotation_options*, align 8
  %11 = alloca %struct.arch**, align 8
  %12 = alloca %struct.annotation*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.symbol* %0, %struct.symbol** %7, align 8
  store %struct.map* %1, %struct.map** %8, align 8
  store %struct.evsel* %2, %struct.evsel** %9, align 8
  store %struct.annotation_options* %3, %struct.annotation_options** %10, align 8
  store %struct.arch** %4, %struct.arch*** %11, align 8
  %16 = load %struct.symbol*, %struct.symbol** %7, align 8
  %17 = call %struct.annotation* @symbol__annotation(%struct.symbol* %16)
  store %struct.annotation* %17, %struct.annotation** %12, align 8
  %18 = load %struct.symbol*, %struct.symbol** %7, align 8
  %19 = call i64 @symbol__size(%struct.symbol* %18)
  store i64 %19, i64* %13, align 8
  store i32 1, i32* %14, align 4
  %20 = load i64, i64* %13, align 8
  %21 = mul i64 %20, 8
  %22 = call i32* @zalloc(i64 %21)
  %23 = load %struct.annotation*, %struct.annotation** %12, align 8
  %24 = getelementptr inbounds %struct.annotation, %struct.annotation* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.annotation*, %struct.annotation** %12, align 8
  %26 = getelementptr inbounds %struct.annotation, %struct.annotation* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %6, align 4
  br label %81

31:                                               ; preds = %5
  %32 = load %struct.evsel*, %struct.evsel** %9, align 8
  %33 = call i64 @perf_evsel__is_group_event(%struct.evsel* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.evsel*, %struct.evsel** %9, align 8
  %37 = getelementptr inbounds %struct.evsel, %struct.evsel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.symbol*, %struct.symbol** %7, align 8
  %42 = load %struct.map*, %struct.map** %8, align 8
  %43 = load %struct.evsel*, %struct.evsel** %9, align 8
  %44 = load %struct.annotation_options*, %struct.annotation_options** %10, align 8
  %45 = load %struct.arch**, %struct.arch*** %11, align 8
  %46 = call i32 @symbol__annotate(%struct.symbol* %41, %struct.map* %42, %struct.evsel* %43, i32 0, %struct.annotation_options* %44, %struct.arch** %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %76

50:                                               ; preds = %40
  %51 = load %struct.annotation_options*, %struct.annotation_options** %10, align 8
  %52 = load %struct.annotation*, %struct.annotation** %12, align 8
  %53 = getelementptr inbounds %struct.annotation, %struct.annotation* %52, i32 0, i32 2
  store %struct.annotation_options* %51, %struct.annotation_options** %53, align 8
  %54 = load %struct.symbol*, %struct.symbol** %7, align 8
  %55 = load %struct.evsel*, %struct.evsel** %9, align 8
  %56 = call i32 @symbol__calc_percent(%struct.symbol* %54, %struct.evsel* %55)
  %57 = load %struct.annotation*, %struct.annotation** %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @annotation__set_offsets(%struct.annotation* %57, i64 %58)
  %60 = load %struct.annotation*, %struct.annotation** %12, align 8
  %61 = load %struct.symbol*, %struct.symbol** %7, align 8
  %62 = call i32 @annotation__mark_jump_targets(%struct.annotation* %60, %struct.symbol* %61)
  %63 = load %struct.annotation*, %struct.annotation** %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @annotation__compute_ipc(%struct.annotation* %63, i64 %64)
  %66 = load %struct.annotation*, %struct.annotation** %12, align 8
  %67 = load %struct.symbol*, %struct.symbol** %7, align 8
  %68 = call i32 @annotation__init_column_widths(%struct.annotation* %66, %struct.symbol* %67)
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.annotation*, %struct.annotation** %12, align 8
  %71 = getelementptr inbounds %struct.annotation, %struct.annotation* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.annotation*, %struct.annotation** %12, align 8
  %73 = call i32 @annotation__update_column_widths(%struct.annotation* %72)
  %74 = load %struct.symbol*, %struct.symbol** %7, align 8
  %75 = getelementptr inbounds %struct.symbol, %struct.symbol* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  store i32 0, i32* %6, align 4
  br label %81

76:                                               ; preds = %49
  %77 = load %struct.annotation*, %struct.annotation** %12, align 8
  %78 = getelementptr inbounds %struct.annotation, %struct.annotation* %77, i32 0, i32 1
  %79 = call i32 @zfree(i32** %78)
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %76, %50, %29
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i64 @symbol__size(%struct.symbol*) #1

declare dso_local i32* @zalloc(i64) #1

declare dso_local i64 @perf_evsel__is_group_event(%struct.evsel*) #1

declare dso_local i32 @symbol__annotate(%struct.symbol*, %struct.map*, %struct.evsel*, i32, %struct.annotation_options*, %struct.arch**) #1

declare dso_local i32 @symbol__calc_percent(%struct.symbol*, %struct.evsel*) #1

declare dso_local i32 @annotation__set_offsets(%struct.annotation*, i64) #1

declare dso_local i32 @annotation__mark_jump_targets(%struct.annotation*, %struct.symbol*) #1

declare dso_local i32 @annotation__compute_ipc(%struct.annotation*, i64) #1

declare dso_local i32 @annotation__init_column_widths(%struct.annotation*, %struct.symbol*) #1

declare dso_local i32 @annotation__update_column_widths(%struct.annotation*) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
