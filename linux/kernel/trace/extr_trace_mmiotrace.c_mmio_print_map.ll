; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_print_map.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_print_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq, %struct.trace_entry* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.trace_mmiotrace_map = type { %struct.mmiotrace_map }
%struct.mmiotrace_map = type { i32, i32, i32, i32, i64 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MAP %u.%06lu %d 0x%llx 0x%lx 0x%lx 0x%lx %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"UNMAP %u.%06lu %d 0x%lx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"map what?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @mmio_print_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_print_map(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.trace_entry*, align 8
  %4 = alloca %struct.trace_mmiotrace_map*, align 8
  %5 = alloca %struct.mmiotrace_map*, align 8
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 2
  %12 = load %struct.trace_entry*, %struct.trace_entry** %11, align 8
  store %struct.trace_entry* %12, %struct.trace_entry** %3, align 8
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 1
  store %struct.trace_seq* %14, %struct.trace_seq** %6, align 8
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ns2usecs(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @USEC_PER_SEC, align 4
  %21 = call i64 @do_div(i64 %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.trace_mmiotrace_map*, %struct.trace_mmiotrace_map** %4, align 8
  %25 = load %struct.trace_entry*, %struct.trace_entry** %3, align 8
  %26 = call i32 @trace_assign_type(%struct.trace_mmiotrace_map* %24, %struct.trace_entry* %25)
  %27 = load %struct.trace_mmiotrace_map*, %struct.trace_mmiotrace_map** %4, align 8
  %28 = getelementptr inbounds %struct.trace_mmiotrace_map, %struct.trace_mmiotrace_map* %27, i32 0, i32 0
  store %struct.mmiotrace_map* %28, %struct.mmiotrace_map** %5, align 8
  %29 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %5, align 8
  %30 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %57 [
    i32 129, label %32
    i32 128, label %49
  ]

32:                                               ; preds = %1
  %33 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %5, align 8
  %37 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %5, align 8
  %40 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %5, align 8
  %43 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %5, align 8
  %46 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.trace_seq*, i8*, i32, i64, i32, i64, i32, ...) @trace_seq_printf(%struct.trace_seq* %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %35, i32 %38, i64 %41, i32 %44, i32 %47, i64 0, i32 0)
  br label %60

49:                                               ; preds = %1
  %50 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %5, align 8
  %54 = getelementptr inbounds %struct.mmiotrace_map, %struct.mmiotrace_map* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.trace_seq*, i8*, i32, i64, i32, i64, i32, ...) @trace_seq_printf(%struct.trace_seq* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %52, i32 %55, i64 0, i32 0)
  br label %60

57:                                               ; preds = %1
  %58 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %59 = call i32 @trace_seq_puts(%struct.trace_seq* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %49, %32
  %61 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %62 = call i32 @trace_handle_return(%struct.trace_seq* %61)
  ret i32 %62
}

declare dso_local i64 @ns2usecs(i32) #1

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @trace_assign_type(%struct.trace_mmiotrace_map*, %struct.trace_entry*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, i64, i32, i64, i32, ...) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
