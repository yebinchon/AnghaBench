; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_hwlat_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_hwlat_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.trace_seq, %struct.trace_entry* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.trace_event = type { i32 }
%struct.hwlat_entry = type { i64, i64, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [50 x i8] c"#%-5u inner/outer(us): %4llu/%-5llu ts:%lld.%09ld\00", align 1
@CONFIG_GENERIC_SCHED_CLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c" nmi-total:%llu\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" nmi-count:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32, %struct.trace_event*)* @trace_hwlat_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_hwlat_print(%struct.trace_iterator* %0, i32 %1, %struct.trace_event* %2) #0 {
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_event*, align 8
  %7 = alloca %struct.trace_entry*, align 8
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca %struct.hwlat_entry*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.trace_event* %2, %struct.trace_event** %6, align 8
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 1
  %12 = load %struct.trace_entry*, %struct.trace_entry** %11, align 8
  store %struct.trace_entry* %12, %struct.trace_entry** %7, align 8
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 0
  store %struct.trace_seq* %14, %struct.trace_seq** %8, align 8
  %15 = load %struct.hwlat_entry*, %struct.hwlat_entry** %9, align 8
  %16 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %17 = call i32 @trace_assign_type(%struct.hwlat_entry* %15, %struct.trace_entry* %16)
  %18 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %19 = load %struct.hwlat_entry*, %struct.hwlat_entry** %9, align 8
  %20 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = load %struct.hwlat_entry*, %struct.hwlat_entry** %9, align 8
  %24 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hwlat_entry*, %struct.hwlat_entry** %9, align 8
  %27 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hwlat_entry*, %struct.hwlat_entry** %9, align 8
  %30 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hwlat_entry*, %struct.hwlat_entry** %9, align 8
  %34 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %18, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %25, i32 %28, i64 %32, i32 %36)
  %38 = load %struct.hwlat_entry*, %struct.hwlat_entry** %9, align 8
  %39 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %3
  %43 = load i32, i32* @CONFIG_GENERIC_SCHED_CLOCK, align 4
  %44 = call i32 @IS_ENABLED(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %48 = load %struct.hwlat_entry*, %struct.hwlat_entry** %9, align 8
  %49 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %54 = load %struct.hwlat_entry*, %struct.hwlat_entry** %9, align 8
  %55 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %52, %3
  %59 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %60 = call i32 @trace_seq_putc(%struct.trace_seq* %59, i8 signext 10)
  %61 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %62 = call i32 @trace_handle_return(%struct.trace_seq* %61)
  ret i32 %62
}

declare dso_local i32 @trace_assign_type(%struct.hwlat_entry*, %struct.trace_entry*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64, ...) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
