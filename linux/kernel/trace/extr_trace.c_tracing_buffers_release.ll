; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_buffers_release.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_buffers_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ftrace_buffer_info* }
%struct.ftrace_buffer_info = type { i64, i32, %struct.trace_iterator }
%struct.trace_iterator = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@trace_types_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_buffers_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_buffers_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ftrace_buffer_info*, align 8
  %6 = alloca %struct.trace_iterator*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %8, align 8
  store %struct.ftrace_buffer_info* %9, %struct.ftrace_buffer_info** %5, align 8
  %10 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %5, align 8
  %11 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %10, i32 0, i32 2
  store %struct.trace_iterator* %11, %struct.trace_iterator** %6, align 8
  %12 = call i32 @mutex_lock(i32* @trace_types_lock)
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %22 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @__trace_array_put(%struct.TYPE_6__* %23)
  %25 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %5, align 8
  %26 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %31 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %5, align 8
  %36 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %5, align 8
  %39 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ring_buffer_free_read_page(i32 %34, i32 %37, i64 %40)
  br label %42

42:                                               ; preds = %29, %2
  %43 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %5, align 8
  %44 = call i32 @kfree(%struct.ftrace_buffer_info* %43)
  %45 = call i32 @mutex_unlock(i32* @trace_types_lock)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__trace_array_put(%struct.TYPE_6__*) #1

declare dso_local i32 @ring_buffer_free_read_page(i32, i32, i64) #1

declare dso_local i32 @kfree(%struct.ftrace_buffer_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
