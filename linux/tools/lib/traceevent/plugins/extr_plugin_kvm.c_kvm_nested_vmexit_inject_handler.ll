; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_kvm_nested_vmexit_inject_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_kvm_nested_vmexit_inject_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_event = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"exit_code\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" info1 %llx\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"exit_info1\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" info2 %llx\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"exit_info2\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" int_info %llx\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"exit_int_info\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c" int_info_err %llx\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"exit_int_info_err\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*)* @kvm_nested_vmexit_inject_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_nested_vmexit_inject_handler(%struct.trace_seq* %0, %struct.tep_record* %1, %struct.tep_event* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.tep_record*, align 8
  %8 = alloca %struct.tep_event*, align 8
  %9 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store %struct.tep_record* %1, %struct.tep_record** %7, align 8
  store %struct.tep_event* %2, %struct.tep_event** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %11 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %12 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %13 = call i64 @print_exit_reason(%struct.trace_seq* %10, %struct.tep_record* %11, %struct.tep_event* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %33

16:                                               ; preds = %4
  %17 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %18 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %19 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %20 = call i32 @tep_print_num_field(%struct.trace_seq* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.tep_event* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.tep_record* %19, i32 1)
  %21 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %22 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %23 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %24 = call i32 @tep_print_num_field(%struct.trace_seq* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.tep_event* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.tep_record* %23, i32 1)
  %25 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %26 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %27 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %28 = call i32 @tep_print_num_field(%struct.trace_seq* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), %struct.tep_event* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), %struct.tep_record* %27, i32 1)
  %29 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %30 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %31 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %32 = call i32 @tep_print_num_field(%struct.trace_seq* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), %struct.tep_event* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), %struct.tep_record* %31, i32 1)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %16, %15
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @print_exit_reason(%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*) #1

declare dso_local i32 @tep_print_num_field(%struct.trace_seq*, i8*, %struct.tep_event*, i8*, %struct.tep_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
