; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_print_exit_reason.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_print_exit_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_event = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"reason %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"reason UNKNOWN (%llu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*)* @print_exit_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_exit_reason(%struct.trace_seq* %0, %struct.tep_record* %1, %struct.tep_event* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.tep_record*, align 8
  %8 = alloca %struct.tep_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store %struct.tep_record* %1, %struct.tep_record** %7, align 8
  store %struct.tep_event* %2, %struct.tep_event** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %14 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %17 = call i64 @tep_get_field_val(%struct.trace_seq* %13, %struct.tep_event* %14, i8* %15, %struct.tep_record* %16, i64* %11, i32 1)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %42

20:                                               ; preds = %4
  %21 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %22 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %23 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %24 = call i64 @tep_get_field_val(%struct.trace_seq* %21, %struct.tep_event* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.tep_record* %23, i64* %10, i32 0)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i64 1, i64* %10, align 8
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i8* @find_exit_reason(i64 %28, i64 %29)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %37, %33
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @tep_get_field_val(%struct.trace_seq*, %struct.tep_event*, i8*, %struct.tep_record*, i64*, i32) #1

declare dso_local i8* @find_exit_reason(i64, i64) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
