; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-annotate.c_perf_evsel__add_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-annotate.c_perf_evsel__add_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }
%struct.perf_sample = type { i32 }
%struct.addr_location = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.perf_annotate = type { i64, i32* }
%struct.machine = type { i32 }
%struct.hists = type { i32 }
%struct.hist_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.perf_sample*, %struct.addr_location*, %struct.perf_annotate*, %struct.machine*)* @perf_evsel__add_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__add_sample(%struct.evsel* %0, %struct.perf_sample* %1, %struct.addr_location* %2, %struct.perf_annotate* %3, %struct.machine* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.addr_location*, align 8
  %10 = alloca %struct.perf_annotate*, align 8
  %11 = alloca %struct.machine*, align 8
  %12 = alloca %struct.hists*, align 8
  %13 = alloca %struct.hist_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.evsel* %0, %struct.evsel** %7, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %8, align 8
  store %struct.addr_location* %2, %struct.addr_location** %9, align 8
  store %struct.perf_annotate* %3, %struct.perf_annotate** %10, align 8
  store %struct.machine* %4, %struct.machine** %11, align 8
  %15 = load %struct.evsel*, %struct.evsel** %7, align 8
  %16 = call %struct.hists* @evsel__hists(%struct.evsel* %15)
  store %struct.hists* %16, %struct.hists** %12, align 8
  %17 = load %struct.perf_annotate*, %struct.perf_annotate** %10, align 8
  %18 = getelementptr inbounds %struct.perf_annotate, %struct.perf_annotate* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.perf_annotate*, %struct.perf_annotate** %10, align 8
  %23 = call i64 @has_annotation(%struct.perf_annotate* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %74, label %25

25:                                               ; preds = %21, %5
  %26 = load %struct.perf_annotate*, %struct.perf_annotate** %10, align 8
  %27 = getelementptr inbounds %struct.perf_annotate, %struct.perf_annotate* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %74

30:                                               ; preds = %25
  %31 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %32 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp eq %struct.TYPE_5__* %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load %struct.perf_annotate*, %struct.perf_annotate** %10, align 8
  %37 = getelementptr inbounds %struct.perf_annotate, %struct.perf_annotate* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %40 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strcmp(i32* %38, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %35, %30
  %47 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %48 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %46
  %52 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %53 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %57 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @rb_erase_cached(i32* %55, i32* %61)
  %63 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %64 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @symbol__delete(%struct.TYPE_5__* %65)
  %67 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %68 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @dso__reset_find_symbol_cache(%struct.TYPE_6__* %71)
  br label %73

73:                                               ; preds = %51, %46
  store i32 0, i32* %6, align 4
  br label %117

74:                                               ; preds = %35, %25, %21
  %75 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %76 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %79 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %80 = call i32 @process_branch_stack(i32 %77, %struct.addr_location* %78, %struct.perf_sample* %79)
  %81 = load %struct.perf_annotate*, %struct.perf_annotate** %10, align 8
  %82 = getelementptr inbounds %struct.perf_annotate, %struct.perf_annotate* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %74
  %86 = load %struct.perf_annotate*, %struct.perf_annotate** %10, align 8
  %87 = call i64 @has_annotation(%struct.perf_annotate* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.evsel*, %struct.evsel** %7, align 8
  %91 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %92 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %93 = load %struct.perf_annotate*, %struct.perf_annotate** %10, align 8
  %94 = load %struct.machine*, %struct.machine** %11, align 8
  %95 = call i32 @process_branch_callback(%struct.evsel* %90, %struct.perf_sample* %91, %struct.addr_location* %92, %struct.perf_annotate* %93, %struct.machine* %94)
  store i32 %95, i32* %6, align 4
  br label %117

96:                                               ; preds = %85, %74
  %97 = load %struct.hists*, %struct.hists** %12, align 8
  %98 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %99 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %100 = call %struct.hist_entry* @hists__add_entry(%struct.hists* %97, %struct.addr_location* %98, i32* null, i32* null, i32* null, %struct.perf_sample* %99, i32 1)
  store %struct.hist_entry* %100, %struct.hist_entry** %13, align 8
  %101 = load %struct.hist_entry*, %struct.hist_entry** %13, align 8
  %102 = icmp eq %struct.hist_entry* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %117

106:                                              ; preds = %96
  %107 = load %struct.hist_entry*, %struct.hist_entry** %13, align 8
  %108 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %109 = load %struct.evsel*, %struct.evsel** %7, align 8
  %110 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %111 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @hist_entry__inc_addr_samples(%struct.hist_entry* %107, %struct.perf_sample* %108, %struct.evsel* %109, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load %struct.hists*, %struct.hists** %12, align 8
  %115 = call i32 @hists__inc_nr_samples(%struct.hists* %114, i32 1)
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %106, %103, %89, %73
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.hists* @evsel__hists(%struct.evsel*) #1

declare dso_local i64 @has_annotation(%struct.perf_annotate*) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @rb_erase_cached(i32*, i32*) #1

declare dso_local i32 @symbol__delete(%struct.TYPE_5__*) #1

declare dso_local i32 @dso__reset_find_symbol_cache(%struct.TYPE_6__*) #1

declare dso_local i32 @process_branch_stack(i32, %struct.addr_location*, %struct.perf_sample*) #1

declare dso_local i32 @process_branch_callback(%struct.evsel*, %struct.perf_sample*, %struct.addr_location*, %struct.perf_annotate*, %struct.machine*) #1

declare dso_local %struct.hist_entry* @hists__add_entry(%struct.hists*, %struct.addr_location*, i32*, i32*, i32*, %struct.perf_sample*, i32) #1

declare dso_local i32 @hist_entry__inc_addr_samples(%struct.hist_entry*, %struct.perf_sample*, %struct.evsel*, i32) #1

declare dso_local i32 @hists__inc_nr_samples(%struct.hists*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
