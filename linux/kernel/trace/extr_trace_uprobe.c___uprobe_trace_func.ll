; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c___uprobe_trace_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c___uprobe_trace_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_uprobe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct.uprobe_cpu_buffer = type { i32 }
%struct.trace_event_file = type { %struct.trace_event_call* }
%struct.trace_event_call = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uprobe_trace_entry_head = type { i64* }
%struct.ring_buffer_event = type { i32 }
%struct.ring_buffer = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_uprobe*, i64, %struct.pt_regs*, %struct.uprobe_cpu_buffer*, i32, %struct.trace_event_file*)* @__uprobe_trace_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__uprobe_trace_func(%struct.trace_uprobe* %0, i64 %1, %struct.pt_regs* %2, %struct.uprobe_cpu_buffer* %3, i32 %4, %struct.trace_event_file* %5) #0 {
  %7 = alloca %struct.trace_uprobe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pt_regs*, align 8
  %10 = alloca %struct.uprobe_cpu_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.trace_event_file*, align 8
  %13 = alloca %struct.uprobe_trace_entry_head*, align 8
  %14 = alloca %struct.ring_buffer_event*, align 8
  %15 = alloca %struct.ring_buffer*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.trace_event_call*, align 8
  store %struct.trace_uprobe* %0, %struct.trace_uprobe** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %9, align 8
  store %struct.uprobe_cpu_buffer* %3, %struct.uprobe_cpu_buffer** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.trace_event_file* %5, %struct.trace_event_file** %12, align 8
  %20 = load %struct.trace_uprobe*, %struct.trace_uprobe** %7, align 8
  %21 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %20, i32 0, i32 0
  %22 = call %struct.trace_event_call* @trace_probe_event_call(%struct.TYPE_4__* %21)
  store %struct.trace_event_call* %22, %struct.trace_event_call** %19, align 8
  %23 = load %struct.trace_event_call*, %struct.trace_event_call** %19, align 8
  %24 = load %struct.trace_event_file*, %struct.trace_event_file** %12, align 8
  %25 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %24, i32 0, i32 0
  %26 = load %struct.trace_event_call*, %struct.trace_event_call** %25, align 8
  %27 = icmp ne %struct.trace_event_call* %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.trace_uprobe*, %struct.trace_uprobe** %7, align 8
  %31 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = icmp sgt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON_ONCE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %6
  br label %117

42:                                               ; preds = %6
  %43 = load %struct.trace_event_file*, %struct.trace_event_file** %12, align 8
  %44 = call i64 @trace_trigger_soft_disabled(%struct.trace_event_file* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %117

47:                                               ; preds = %42
  %48 = load %struct.trace_uprobe*, %struct.trace_uprobe** %7, align 8
  %49 = call i64 @is_ret_probe(%struct.trace_uprobe* %48)
  %50 = call i32 @SIZEOF_TRACE_ENTRY(i64 %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load %struct.trace_uprobe*, %struct.trace_uprobe** %7, align 8
  %53 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %51, %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %17, align 4
  %59 = load %struct.trace_event_file*, %struct.trace_event_file** %12, align 8
  %60 = load %struct.trace_event_call*, %struct.trace_event_call** %19, align 8
  %61 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call %struct.ring_buffer_event* @trace_event_buffer_lock_reserve(%struct.ring_buffer** %15, %struct.trace_event_file* %59, i32 %63, i32 %64, i32 0, i32 0)
  store %struct.ring_buffer_event* %65, %struct.ring_buffer_event** %14, align 8
  %66 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %14, align 8
  %67 = icmp ne %struct.ring_buffer_event* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %47
  br label %117

69:                                               ; preds = %47
  %70 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %14, align 8
  %71 = call %struct.uprobe_trace_entry_head* @ring_buffer_event_data(%struct.ring_buffer_event* %70)
  store %struct.uprobe_trace_entry_head* %71, %struct.uprobe_trace_entry_head** %13, align 8
  %72 = load %struct.trace_uprobe*, %struct.trace_uprobe** %7, align 8
  %73 = call i64 @is_ret_probe(%struct.trace_uprobe* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.uprobe_trace_entry_head*, %struct.uprobe_trace_entry_head** %13, align 8
  %78 = getelementptr inbounds %struct.uprobe_trace_entry_head, %struct.uprobe_trace_entry_head* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  store i64 %76, i64* %80, align 8
  %81 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %82 = call i8* @instruction_pointer(%struct.pt_regs* %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.uprobe_trace_entry_head*, %struct.uprobe_trace_entry_head** %13, align 8
  %85 = getelementptr inbounds %struct.uprobe_trace_entry_head, %struct.uprobe_trace_entry_head* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  store i64 %83, i64* %87, align 8
  %88 = load %struct.uprobe_trace_entry_head*, %struct.uprobe_trace_entry_head** %13, align 8
  %89 = call i8* @DATAOF_TRACE_ENTRY(%struct.uprobe_trace_entry_head* %88, i32 1)
  store i8* %89, i8** %16, align 8
  br label %100

90:                                               ; preds = %69
  %91 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %92 = call i8* @instruction_pointer(%struct.pt_regs* %91)
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.uprobe_trace_entry_head*, %struct.uprobe_trace_entry_head** %13, align 8
  %95 = getelementptr inbounds %struct.uprobe_trace_entry_head, %struct.uprobe_trace_entry_head* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  store i64 %93, i64* %97, align 8
  %98 = load %struct.uprobe_trace_entry_head*, %struct.uprobe_trace_entry_head** %13, align 8
  %99 = call i8* @DATAOF_TRACE_ENTRY(%struct.uprobe_trace_entry_head* %98, i32 0)
  store i8* %99, i8** %16, align 8
  br label %100

100:                                              ; preds = %90, %75
  %101 = load i8*, i8** %16, align 8
  %102 = load %struct.uprobe_cpu_buffer*, %struct.uprobe_cpu_buffer** %10, align 8
  %103 = getelementptr inbounds %struct.uprobe_cpu_buffer, %struct.uprobe_cpu_buffer* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.trace_uprobe*, %struct.trace_uprobe** %7, align 8
  %106 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i32 @memcpy(i8* %101, i32 %104, i32 %110)
  %112 = load %struct.trace_event_file*, %struct.trace_event_file** %12, align 8
  %113 = load %struct.ring_buffer*, %struct.ring_buffer** %15, align 8
  %114 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %14, align 8
  %115 = load %struct.uprobe_trace_entry_head*, %struct.uprobe_trace_entry_head** %13, align 8
  %116 = call i32 @event_trigger_unlock_commit(%struct.trace_event_file* %112, %struct.ring_buffer* %113, %struct.ring_buffer_event* %114, %struct.uprobe_trace_entry_head* %115, i32 0, i32 0)
  br label %117

117:                                              ; preds = %100, %68, %46, %41
  ret void
}

declare dso_local %struct.trace_event_call* @trace_probe_event_call(%struct.TYPE_4__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @trace_trigger_soft_disabled(%struct.trace_event_file*) #1

declare dso_local i32 @SIZEOF_TRACE_ENTRY(i64) #1

declare dso_local i64 @is_ret_probe(%struct.trace_uprobe*) #1

declare dso_local %struct.ring_buffer_event* @trace_event_buffer_lock_reserve(%struct.ring_buffer**, %struct.trace_event_file*, i32, i32, i32, i32) #1

declare dso_local %struct.uprobe_trace_entry_head* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i8* @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i8* @DATAOF_TRACE_ENTRY(%struct.uprobe_trace_entry_head*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @event_trigger_unlock_commit(%struct.trace_event_file*, %struct.ring_buffer*, %struct.ring_buffer_event*, %struct.uprobe_trace_entry_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
