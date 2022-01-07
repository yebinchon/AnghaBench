; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_print_entries.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_print_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hist_trigger_data = type { i32, i32, %struct.tracing_map* }
%struct.tracing_map = type { i32 }
%struct.tracing_map_sort_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.hist_trigger_data*)* @print_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_entries(%struct.seq_file* %0, %struct.hist_trigger_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca %struct.tracing_map_sort_entry**, align 8
  %7 = alloca %struct.tracing_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %5, align 8
  store %struct.tracing_map_sort_entry** null, %struct.tracing_map_sort_entry*** %6, align 8
  %10 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %11 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %10, i32 0, i32 2
  %12 = load %struct.tracing_map*, %struct.tracing_map** %11, align 8
  store %struct.tracing_map* %12, %struct.tracing_map** %7, align 8
  %13 = load %struct.tracing_map*, %struct.tracing_map** %7, align 8
  %14 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %15 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %18 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @tracing_map_sort_entries(%struct.tracing_map* %13, i32 %16, i32 %19, %struct.tracing_map_sort_entry*** %6)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %32 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %33 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %33, i64 %35
  %37 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %36, align 8
  %38 = getelementptr inbounds %struct.tracing_map_sort_entry, %struct.tracing_map_sort_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %40, i64 %42
  %44 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %43, align 8
  %45 = getelementptr inbounds %struct.tracing_map_sort_entry, %struct.tracing_map_sort_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hist_trigger_entry_print(%struct.seq_file* %31, %struct.hist_trigger_data* %32, i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %30
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %26

51:                                               ; preds = %26
  %52 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @tracing_map_destroy_sort_entries(%struct.tracing_map_sort_entry** %52, i32 %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %23
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @tracing_map_sort_entries(%struct.tracing_map*, i32, i32, %struct.tracing_map_sort_entry***) #1

declare dso_local i32 @hist_trigger_entry_print(%struct.seq_file*, %struct.hist_trigger_data*, i32, i32) #1

declare dso_local i32 @tracing_map_destroy_sort_entries(%struct.tracing_map_sort_entry**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
