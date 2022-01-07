; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_buffers_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_buffers_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.trace_array* }
%struct.trace_array = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.ftrace_buffer_info* }
%struct.ftrace_buffer_info = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, %struct.TYPE_4__*, i32, %struct.trace_array* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@trace_types_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_buffers_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_buffers_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.ftrace_buffer_info*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  store %struct.trace_array* %11, %struct.trace_array** %6, align 8
  %12 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %13 = call i32 @tracing_check_open_get_tr(%struct.trace_array* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %74

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ftrace_buffer_info* @kzalloc(i32 48, i32 %19)
  store %struct.ftrace_buffer_info* %20, %struct.ftrace_buffer_info** %7, align 8
  %21 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %22 = icmp ne %struct.ftrace_buffer_info* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %25 = call i32 @trace_array_put(%struct.trace_array* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %74

28:                                               ; preds = %18
  %29 = call i32 @mutex_lock(i32* @trace_types_lock)
  %30 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %31 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %32 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store %struct.trace_array* %30, %struct.trace_array** %33, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i32 @tracing_get_cpu(%struct.inode* %34)
  %36 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %37 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %40 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %43 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %44, align 8
  %45 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %46 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %45, i32 0, i32 1
  %47 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %48 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %51 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %53 = getelementptr inbounds %struct.ftrace_buffer_info, %struct.ftrace_buffer_info* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  %54 = load %struct.ftrace_buffer_info*, %struct.ftrace_buffer_info** %7, align 8
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  store %struct.ftrace_buffer_info* %54, %struct.ftrace_buffer_info** %56, align 8
  %57 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %58 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = load %struct.file*, %struct.file** %5, align 8
  %66 = call i32 @nonseekable_open(%struct.inode* %64, %struct.file* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %28
  %70 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %71 = call i32 @trace_array_put(%struct.trace_array* %70)
  br label %72

72:                                               ; preds = %69, %28
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %23, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @tracing_check_open_get_tr(%struct.trace_array*) #1

declare dso_local %struct.ftrace_buffer_info* @kzalloc(i32, i32) #1

declare dso_local i32 @trace_array_put(%struct.trace_array*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tracing_get_cpu(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
