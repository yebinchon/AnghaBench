; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_sched_switch.c_sched_switch_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_sched_switch.c_sched_switch_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_event = type { i32 }
%struct.tep_format_field = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"prev_pid\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"prev_comm\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%lld \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"prev_prio\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"[%d] \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"prev_state\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" ==> \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"next_pid\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"next_comm\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"next_prio\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*)* @sched_switch_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_switch_handler(%struct.trace_seq* %0, %struct.tep_record* %1, %struct.tep_event* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.tep_record*, align 8
  %8 = alloca %struct.tep_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tep_format_field*, align 8
  %11 = alloca i64, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store %struct.tep_record* %1, %struct.tep_record** %7, align 8
  store %struct.tep_event* %2, %struct.tep_event** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %13 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %14 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %15 = call i64 @tep_get_field_val(%struct.trace_seq* %12, %struct.tep_event* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.tep_record* %14, i64* %11, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %19 = call i32 @trace_seq_putc(%struct.trace_seq* %18, i8 signext 33)
  store i32 %19, i32* %5, align 4
  br label %98

20:                                               ; preds = %4
  %21 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %22 = call %struct.tep_format_field* @tep_find_any_field(%struct.tep_event* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.tep_format_field* %22, %struct.tep_format_field** %10, align 8
  %23 = load %struct.tep_format_field*, %struct.tep_format_field** %10, align 8
  %24 = icmp ne %struct.tep_format_field* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.tep_format_field*, %struct.tep_format_field** %10, align 8
  %27 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %28 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @write_and_save_comm(%struct.tep_format_field* %26, %struct.tep_record* %27, %struct.trace_seq* %28, i64 %29)
  %31 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %32 = call i32 @trace_seq_putc(%struct.trace_seq* %31, i8 signext 58)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %35 = load i64, i64* %11, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @trace_seq_printf(%struct.trace_seq* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %39 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %40 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %41 = call i64 @tep_get_field_val(%struct.trace_seq* %38, %struct.tep_event* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.tep_record* %40, i64* %11, i32 0)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %45 = load i64, i64* %11, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @trace_seq_printf(%struct.trace_seq* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %33
  %49 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %50 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %51 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %52 = call i64 @tep_get_field_val(%struct.trace_seq* %49, %struct.tep_event* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %struct.tep_record* %51, i64* %11, i32 0)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @write_state(%struct.trace_seq* %55, i64 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %60 = call i32 @trace_seq_puts(%struct.trace_seq* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %61 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %62 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %63 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %64 = call i64 @tep_get_field_val(%struct.trace_seq* %61, %struct.tep_event* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct.tep_record* %63, i64* %11, i32 1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %68 = call i32 @trace_seq_putc(%struct.trace_seq* %67, i8 signext 33)
  store i32 %68, i32* %5, align 4
  br label %98

69:                                               ; preds = %58
  %70 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %71 = call %struct.tep_format_field* @tep_find_any_field(%struct.tep_event* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store %struct.tep_format_field* %71, %struct.tep_format_field** %10, align 8
  %72 = load %struct.tep_format_field*, %struct.tep_format_field** %10, align 8
  %73 = icmp ne %struct.tep_format_field* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.tep_format_field*, %struct.tep_format_field** %10, align 8
  %76 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %77 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @write_and_save_comm(%struct.tep_format_field* %75, %struct.tep_record* %76, %struct.trace_seq* %77, i64 %78)
  %80 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %81 = call i32 @trace_seq_putc(%struct.trace_seq* %80, i8 signext 58)
  br label %82

82:                                               ; preds = %74, %69
  %83 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %84 = load i64, i64* %11, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @trace_seq_printf(%struct.trace_seq* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %85)
  %87 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %88 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %89 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %90 = call i64 @tep_get_field_val(%struct.trace_seq* %87, %struct.tep_event* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), %struct.tep_record* %89, i64* %11, i32 0)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %94 = load i64, i64* %11, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @trace_seq_printf(%struct.trace_seq* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %92, %82
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %66, %17
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @tep_get_field_val(%struct.trace_seq*, %struct.tep_event*, i8*, %struct.tep_record*, i64*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local %struct.tep_format_field* @tep_find_any_field(%struct.tep_event*, i8*) #1

declare dso_local i32 @write_and_save_comm(%struct.tep_format_field*, %struct.tep_record*, %struct.trace_seq*, i64) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32) #1

declare dso_local i32 @write_state(%struct.trace_seq*, i64) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
