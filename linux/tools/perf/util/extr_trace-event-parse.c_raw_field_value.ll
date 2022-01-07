; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-parse.c_raw_field_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-parse.c_raw_field_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_format_field = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @raw_field_value(%struct.tep_event* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tep_event*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tep_format_field*, align 8
  %9 = alloca i64, align 8
  store %struct.tep_event* %0, %struct.tep_event** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.tep_event*, %struct.tep_event** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.tep_format_field* @tep_find_any_field(%struct.tep_event* %10, i8* %11)
  store %struct.tep_format_field* %12, %struct.tep_format_field** %8, align 8
  %13 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %14 = icmp ne %struct.tep_format_field* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.tep_format_field*, %struct.tep_format_field** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @tep_read_number_field(%struct.tep_format_field* %17, i8* %18, i64* %9)
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i64, i64* %4, align 8
  ret i64 %22
}

declare dso_local %struct.tep_format_field* @tep_find_any_field(%struct.tep_event*, i8*) #1

declare dso_local i32 @tep_read_number_field(%struct.tep_format_field*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
