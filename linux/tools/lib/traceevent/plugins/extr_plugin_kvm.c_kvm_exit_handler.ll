; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_kvm_exit_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_kvm_exit_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_event = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"exit_reason\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" rip 0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"guest_rip\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"info1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"info2\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" info %llx %llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*)* @kvm_exit_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_exit_handler(%struct.trace_seq* %0, %struct.tep_record* %1, %struct.tep_event* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.tep_record*, align 8
  %8 = alloca %struct.tep_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store %struct.tep_record* %1, %struct.tep_record** %7, align 8
  store %struct.tep_event* %2, %struct.tep_event** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %13 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %14 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %15 = call i64 @print_exit_reason(%struct.trace_seq* %12, %struct.tep_record* %13, %struct.tep_event* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %40

18:                                               ; preds = %4
  %19 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %20 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %21 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %22 = call i32 @tep_print_num_field(%struct.trace_seq* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.tep_event* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.tep_record* %21, i32 1)
  %23 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %24 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %25 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %26 = call i64 @tep_get_field_val(%struct.trace_seq* %23, %struct.tep_event* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.tep_record* %25, i64* %10, i32 0)
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %30 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %31 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %32 = call i64 @tep_get_field_val(%struct.trace_seq* %29, %struct.tep_event* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.tep_record* %31, i64* %11, i32 0)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @trace_seq_printf(%struct.trace_seq* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %28, %18
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @print_exit_reason(%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*) #1

declare dso_local i32 @tep_print_num_field(%struct.trace_seq*, i8*, %struct.tep_event*, i8*, %struct.tep_record*, i32) #1

declare dso_local i64 @tep_get_field_val(%struct.trace_seq*, %struct.tep_event*, i8*, %struct.tep_record*, i64*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
