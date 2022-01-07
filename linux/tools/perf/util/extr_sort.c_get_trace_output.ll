; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_get_trace_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_get_trace_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.hist_entry = type { i32, i32, i32 }
%struct.trace_seq = type { i64, i32 }
%struct.evsel = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tep_record = type { i32, i32 }

@symbol_conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TEP_PRINT_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hist_entry*)* @get_trace_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_trace_output(%struct.hist_entry* %0) #0 {
  %2 = alloca %struct.hist_entry*, align 8
  %3 = alloca %struct.trace_seq, align 8
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.tep_record, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %2, align 8
  %6 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %5, i32 0, i32 0
  %7 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %5, i32 0, i32 1
  %11 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %15 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.evsel* @hists_to_evsel(i32 %16)
  store %struct.evsel* %17, %struct.evsel** %4, align 8
  %18 = call i32 @trace_seq_init(%struct.trace_seq* %3)
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @symbol_conf, i32 0, i32 0), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hist_entry*, %struct.hist_entry** %2, align 8
  %26 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.evsel*, %struct.evsel** %4, align 8
  %29 = getelementptr inbounds %struct.evsel, %struct.evsel* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @tep_print_fields(%struct.trace_seq* %3, i32 %24, i32 %27, %struct.TYPE_3__* %30)
  br label %40

32:                                               ; preds = %1
  %33 = load %struct.evsel*, %struct.evsel** %4, align 8
  %34 = getelementptr inbounds %struct.evsel, %struct.evsel* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TEP_PRINT_INFO, align 4
  %39 = call i32 @tep_print_event(i32 %37, %struct.trace_seq* %3, %struct.tep_record* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %32, %21
  %41 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %3, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %3, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = call i8* @realloc(i32 %42, i64 %45)
  ret i8* %46
}

declare dso_local %struct.evsel* @hists_to_evsel(i32) #1

declare dso_local i32 @trace_seq_init(%struct.trace_seq*) #1

declare dso_local i32 @tep_print_fields(%struct.trace_seq*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @tep_print_event(i32, %struct.trace_seq*, %struct.tep_record*, i8*, i32) #1

declare dso_local i8* @realloc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
