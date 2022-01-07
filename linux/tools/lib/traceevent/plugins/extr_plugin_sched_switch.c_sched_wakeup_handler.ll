; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_sched_switch.c_sched_wakeup_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_sched_switch.c_sched_wakeup_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_event = type { i32 }
%struct.tep_format_field = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"prio\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" [%lld]\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" success=%lld\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"target_cpu\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" CPU:%03llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*)* @sched_wakeup_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_wakeup_handler(%struct.trace_seq* %0, %struct.tep_record* %1, %struct.tep_event* %2, i8* %3) #0 {
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
  %15 = call i64 @tep_get_field_val(%struct.trace_seq* %12, %struct.tep_event* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.tep_record* %14, i64* %11, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %19 = call i32 @trace_seq_putc(%struct.trace_seq* %18, i8 signext 33)
  store i32 %19, i32* %5, align 4
  br label %67

20:                                               ; preds = %4
  %21 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %22 = call %struct.tep_format_field* @tep_find_any_field(%struct.tep_event* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
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
  %36 = call i32 @trace_seq_printf(%struct.trace_seq* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %38 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %39 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %40 = call i64 @tep_get_field_val(%struct.trace_seq* %37, %struct.tep_event* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.tep_record* %39, i64* %11, i32 0)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @trace_seq_printf(%struct.trace_seq* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %48 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %49 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %50 = call i64 @tep_get_field_val(%struct.trace_seq* %47, %struct.tep_event* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.tep_record* %49, i64* %11, i32 1)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @trace_seq_printf(%struct.trace_seq* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %58 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %59 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %60 = call i64 @tep_get_field_val(%struct.trace_seq* %57, %struct.tep_event* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), %struct.tep_record* %59, i64* %11, i32 0)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @trace_seq_printf(%struct.trace_seq* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %62, %56
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %17
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @tep_get_field_val(%struct.trace_seq*, %struct.tep_event*, i8*, %struct.tep_record*, i64*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local %struct.tep_format_field* @tep_find_any_field(%struct.tep_event*, i8*) #1

declare dso_local i32 @write_and_save_comm(%struct.tep_format_field*, %struct.tep_record*, %struct.trace_seq*, i64) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
