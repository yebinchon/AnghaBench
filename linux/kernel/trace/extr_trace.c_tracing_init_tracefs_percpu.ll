; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_init_tracefs_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_init_tracefs_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"cpu%ld\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not create tracefs '%s' entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"trace_pipe\00", align 1
@tracing_pipe_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@tracing_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"trace_pipe_raw\00", align 1
@tracing_buffers_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@tracing_stats_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"buffer_size_kb\00", align 1
@tracing_entries_fops = common dso_local global i32 0, align 4
@snapshot_fops = common dso_local global i32 0, align 4
@snapshot_raw_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*, i64)* @tracing_init_tracefs_percpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_init_tracefs_percpu(%struct.trace_array* %0, i64 %1) #0 {
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca [30 x i8], align 16
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.dentry* @tracing_dentry_percpu(%struct.trace_array* %8, i64 %9)
  store %struct.dentry* %10, %struct.dentry** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %47

14:                                               ; preds = %2
  %15 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @snprintf(i8* %15, i32 30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call %struct.dentry* @tracefs_create_dir(i8* %18, %struct.dentry* %19)
  store %struct.dentry* %20, %struct.dentry** %6, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = icmp ne %struct.dentry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %47

26:                                               ; preds = %14
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @trace_create_cpu_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %27, %struct.trace_array* %28, i64 %29, i32* @tracing_pipe_fops)
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @trace_create_cpu_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 420, %struct.dentry* %31, %struct.trace_array* %32, i64 %33, i32* @tracing_fops)
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @trace_create_cpu_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 292, %struct.dentry* %35, %struct.trace_array* %36, i64 %37, i32* @tracing_buffers_fops)
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @trace_create_cpu_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 292, %struct.dentry* %39, %struct.trace_array* %40, i64 %41, i32* @tracing_stats_fops)
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @trace_create_cpu_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 292, %struct.dentry* %43, %struct.trace_array* %44, i64 %45, i32* @tracing_entries_fops)
  br label %47

47:                                               ; preds = %26, %23, %13
  ret void
}

declare dso_local %struct.dentry* @tracing_dentry_percpu(%struct.trace_array*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local %struct.dentry* @tracefs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @trace_create_cpu_file(i8*, i32, %struct.dentry*, %struct.trace_array*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
