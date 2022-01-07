; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_find_event_by_record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_find_event_by_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_handle = type { i32 }
%struct.tep_record = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ug! negative record size %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tep_event* @tep_find_event_by_record(%struct.tep_handle* %0, %struct.tep_record* %1) #0 {
  %3 = alloca %struct.tep_event*, align 8
  %4 = alloca %struct.tep_handle*, align 8
  %5 = alloca %struct.tep_record*, align 8
  %6 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %4, align 8
  store %struct.tep_record* %1, %struct.tep_record** %5, align 8
  %7 = load %struct.tep_record*, %struct.tep_record** %5, align 8
  %8 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.tep_record*, %struct.tep_record** %5, align 8
  %13 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @do_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %14)
  store %struct.tep_event* null, %struct.tep_event** %3, align 8
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %18 = load %struct.tep_record*, %struct.tep_record** %5, align 8
  %19 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @trace_parse_common_type(%struct.tep_handle* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.tep_event* @tep_find_event(%struct.tep_handle* %22, i32 %23)
  store %struct.tep_event* %24, %struct.tep_event** %3, align 8
  br label %25

25:                                               ; preds = %16, %11
  %26 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  ret %struct.tep_event* %26
}

declare dso_local i32 @do_warning(i8*, i64) #1

declare dso_local i32 @trace_parse_common_type(%struct.tep_handle*, i32) #1

declare dso_local %struct.tep_event* @tep_find_event(%struct.tep_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
