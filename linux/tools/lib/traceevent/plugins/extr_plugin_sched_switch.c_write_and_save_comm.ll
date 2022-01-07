; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_sched_switch.c_write_and_save_comm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_sched_switch.c_write_and_save_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_format_field = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.tep_record = type { i64 }
%struct.trace_seq = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_format_field*, %struct.tep_record*, %struct.trace_seq*, i32)* @write_and_save_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_and_save_comm(%struct.tep_format_field* %0, %struct.tep_record* %1, %struct.trace_seq* %2, i32 %3) #0 {
  %5 = alloca %struct.tep_format_field*, align 8
  %6 = alloca %struct.tep_record*, align 8
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.tep_format_field* %0, %struct.tep_format_field** %5, align 8
  store %struct.tep_record* %1, %struct.tep_record** %6, align 8
  store %struct.trace_seq* %2, %struct.trace_seq** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tep_record*, %struct.tep_record** %6, align 8
  %12 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %15 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %9, align 8
  %19 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %20 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %23 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %24 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @trace_seq_printf(%struct.trace_seq* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26)
  %28 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %29 = call i32 @trace_seq_terminate(%struct.trace_seq* %28)
  %30 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %31 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %9, align 8
  %36 = load %struct.tep_format_field*, %struct.tep_format_field** %5, align 8
  %37 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @tep_register_comm(i32 %40, i8* %41, i32 %42)
  ret void
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, i8*) #1

declare dso_local i32 @trace_seq_terminate(%struct.trace_seq*) #1

declare dso_local i32 @tep_register_comm(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
