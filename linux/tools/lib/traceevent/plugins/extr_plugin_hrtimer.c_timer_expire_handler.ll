; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_hrtimer.c_timer_expire_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_hrtimer.c_timer_expire_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_event = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"hrtimer=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"hrtimer\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" now=\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" function=%s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*)* @timer_expire_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_expire_handler(%struct.trace_seq* %0, %struct.tep_record* %1, %struct.tep_event* %2, i8* %3) #0 {
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca %struct.tep_record*, align 8
  %7 = alloca %struct.tep_event*, align 8
  %8 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store %struct.tep_record* %1, %struct.tep_record** %6, align 8
  store %struct.tep_event* %2, %struct.tep_event** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %10 = call i32 @trace_seq_printf(%struct.trace_seq* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %12 = load %struct.tep_event*, %struct.tep_event** %7, align 8
  %13 = load %struct.tep_record*, %struct.tep_record** %6, align 8
  %14 = call i32 @tep_print_num_field(%struct.trace_seq* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.tep_event* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.tep_record* %13, i32 0)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %18 = load %struct.tep_event*, %struct.tep_event** %7, align 8
  %19 = load %struct.tep_record*, %struct.tep_record** %6, align 8
  %20 = call i32 @tep_print_num_field(%struct.trace_seq* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.tep_event* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.tep_record* %19, i32 1)
  br label %21

21:                                               ; preds = %16, %4
  %22 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %23 = call i32 @trace_seq_printf(%struct.trace_seq* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %24 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %25 = load %struct.tep_event*, %struct.tep_event** %7, align 8
  %26 = load %struct.tep_record*, %struct.tep_record** %6, align 8
  %27 = call i32 @tep_print_num_field(%struct.trace_seq* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.tep_event* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct.tep_record* %26, i32 1)
  %28 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %29 = load %struct.tep_event*, %struct.tep_event** %7, align 8
  %30 = load %struct.tep_record*, %struct.tep_record** %6, align 8
  %31 = call i32 @tep_print_func_field(%struct.trace_seq* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.tep_event* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct.tep_record* %30, i32 0)
  ret i32 0
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*) #1

declare dso_local i32 @tep_print_num_field(%struct.trace_seq*, i8*, %struct.tep_event*, i8*, %struct.tep_record*, i32) #1

declare dso_local i32 @tep_print_func_field(%struct.trace_seq*, i8*, %struct.tep_event*, i8*, %struct.tep_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
