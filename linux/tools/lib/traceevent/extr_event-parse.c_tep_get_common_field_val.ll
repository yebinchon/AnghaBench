; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_get_common_field_val.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_get_common_field_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_event = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_format_field = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_get_common_field_val(%struct.trace_seq* %0, %struct.tep_event* %1, i8* %2, %struct.tep_record* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca %struct.tep_event*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tep_record*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tep_format_field*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %8, align 8
  store %struct.tep_event* %1, %struct.tep_event** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.tep_record* %3, %struct.tep_record** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %16 = icmp ne %struct.tep_event* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %29

18:                                               ; preds = %6
  %19 = load %struct.tep_event*, %struct.tep_event** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call %struct.tep_format_field* @tep_find_common_field(%struct.tep_event* %19, i8* %20)
  store %struct.tep_format_field* %21, %struct.tep_format_field** %14, align 8
  %22 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %23 = load %struct.tep_format_field*, %struct.tep_format_field** %14, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.tep_record*, %struct.tep_record** %11, align 8
  %26 = load i64*, i64** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @get_field_val(%struct.trace_seq* %22, %struct.tep_format_field* %23, i8* %24, %struct.tep_record* %25, i64* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local %struct.tep_format_field* @tep_find_common_field(%struct.tep_event*, i8*) #1

declare dso_local i32 @get_field_val(%struct.trace_seq*, %struct.tep_format_field*, i8*, %struct.tep_record*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
