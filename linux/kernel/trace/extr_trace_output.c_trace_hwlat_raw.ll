; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_hwlat_raw.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_hwlat_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.trace_event = type { i32 }
%struct.hwlat_entry = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"%llu %lld %lld %09ld %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i32, %struct.trace_event*)* @trace_hwlat_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_hwlat_raw(%struct.trace_iterator* %0, i32 %1, %struct.trace_event* %2) #0 {
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_event*, align 8
  %7 = alloca %struct.hwlat_entry*, align 8
  %8 = alloca %struct.trace_seq*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.trace_event* %2, %struct.trace_event** %6, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 1
  store %struct.trace_seq* %10, %struct.trace_seq** %8, align 8
  %11 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_assign_type(%struct.hwlat_entry* %11, i32 %14)
  %16 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %17 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %18 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %21 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %24 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %28 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hwlat_entry*, %struct.hwlat_entry** %7, align 8
  %32 = getelementptr inbounds %struct.hwlat_entry, %struct.hwlat_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @trace_seq_printf(%struct.trace_seq* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i64 %26, i32 %30, i32 %33)
  %35 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %36 = call i32 @trace_handle_return(%struct.trace_seq* %35)
  ret i32 %36
}

declare dso_local i32 @trace_assign_type(%struct.hwlat_entry*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
