; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_trigger_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_trigger_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.event_trigger_data = type { %struct.hist_trigger_data*, %struct.TYPE_4__* }
%struct.hist_trigger_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.seq_file*, %struct.TYPE_4__*, %struct.event_trigger_data*)* }

@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"# event histogram\0A#\0A# trigger info: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"#\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"\0ATotals:\0A    Hits: %llu\0A    Entries: %u\0A    Dropped: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.event_trigger_data*, i32)* @hist_trigger_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_trigger_show(%struct.seq_file* %0, %struct.event_trigger_data* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.event_trigger_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hist_trigger_data*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.event_trigger_data* %1, %struct.event_trigger_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = call i32 @seq_puts(%struct.seq_file* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.event_trigger_data*, %struct.event_trigger_data** %5, align 8
  %18 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.seq_file*, %struct.TYPE_4__*, %struct.event_trigger_data*)*, i32 (%struct.seq_file*, %struct.TYPE_4__*, %struct.event_trigger_data*)** %20, align 8
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = load %struct.event_trigger_data*, %struct.event_trigger_data** %5, align 8
  %24 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.event_trigger_data*, %struct.event_trigger_data** %5, align 8
  %27 = call i32 %21(%struct.seq_file* %22, %struct.TYPE_4__* %25, %struct.event_trigger_data* %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.event_trigger_data*, %struct.event_trigger_data** %5, align 8
  %31 = getelementptr inbounds %struct.event_trigger_data, %struct.event_trigger_data* %30, i32 0, i32 0
  %32 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %31, align 8
  store %struct.hist_trigger_data* %32, %struct.hist_trigger_data** %7, align 8
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %35 = call i32 @print_entries(%struct.seq_file* %33, %struct.hist_trigger_data* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %14
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %42 = call i32 @track_data_snapshot_print(%struct.seq_file* %40, %struct.hist_trigger_data* %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %45 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = call i64 @atomic64_read(i32* %47)
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %52 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i64 @atomic64_read(i32* %54)
  %56 = trunc i64 %55 to i32
  %57 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %50, i32 %56)
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @print_entries(%struct.seq_file*, %struct.hist_trigger_data*) #1

declare dso_local i32 @track_data_snapshot_print(%struct.seq_file*, %struct.hist_trigger_data*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
