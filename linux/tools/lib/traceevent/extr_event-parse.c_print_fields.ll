; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_fields.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_print_flag_sym = type { %struct.tep_print_flag_sym*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"{ %s, %s }\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*, %struct.tep_print_flag_sym*)* @print_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_fields(%struct.trace_seq* %0, %struct.tep_print_flag_sym* %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca %struct.tep_print_flag_sym*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store %struct.tep_print_flag_sym* %1, %struct.tep_print_flag_sym** %4, align 8
  %5 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %6 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %4, align 8
  %7 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %4, align 8
  %10 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @trace_seq_printf(%struct.trace_seq* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %4, align 8
  %14 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %13, i32 0, i32 0
  %15 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %14, align 8
  %16 = icmp ne %struct.tep_print_flag_sym* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %19 = call i32 @trace_seq_puts(%struct.trace_seq* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %21 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %4, align 8
  %22 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %21, i32 0, i32 0
  %23 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %22, align 8
  call void @print_fields(%struct.trace_seq* %20, %struct.tep_print_flag_sym* %23)
  br label %24

24:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, i32) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
