; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_bprint_raw.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_bprint_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.trace_event = type { i32 }
%struct.bprint_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c": %lx : \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32, %struct.trace_event*)* @trace_bprint_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_bprint_raw(%struct.trace_iterator* %0, i32 %1, %struct.trace_event* %2) #0 {
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_event*, align 8
  %7 = alloca %struct.bprint_entry*, align 8
  %8 = alloca %struct.trace_seq*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.trace_event* %2, %struct.trace_event** %6, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 1
  store %struct.trace_seq* %10, %struct.trace_seq** %8, align 8
  %11 = load %struct.bprint_entry*, %struct.bprint_entry** %7, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_assign_type(%struct.bprint_entry* %11, i32 %14)
  %16 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %17 = load %struct.bprint_entry*, %struct.bprint_entry** %7, align 8
  %18 = getelementptr inbounds %struct.bprint_entry, %struct.bprint_entry* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trace_seq_printf(%struct.trace_seq* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %22 = load %struct.bprint_entry*, %struct.bprint_entry** %7, align 8
  %23 = getelementptr inbounds %struct.bprint_entry, %struct.bprint_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bprint_entry*, %struct.bprint_entry** %7, align 8
  %26 = getelementptr inbounds %struct.bprint_entry, %struct.bprint_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @trace_seq_bprintf(%struct.trace_seq* %21, i32 %24, i32 %27)
  %29 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %30 = call i32 @trace_handle_return(%struct.trace_seq* %29)
  ret i32 %30
}

declare dso_local i32 @trace_assign_type(%struct.bprint_entry*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32) #1

declare dso_local i32 @trace_seq_bprintf(%struct.trace_seq*, i32, i32) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
