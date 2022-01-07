; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_create_event_toplevel_files.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_create_event_toplevel_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"set_event\00", align 1
@ftrace_set_event_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Could not create tracefs 'set_event' entry\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Could not create tracefs 'events' directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@ftrace_tr_enable_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Could not create tracefs 'enable' entry\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"set_event_pid\00", align 1
@ftrace_set_event_pid_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"Could not create tracefs 'set_event_pid' entry\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"header_page\00", align 1
@ring_buffer_print_page_header = common dso_local global %struct.trace_array* null, align 8
@ftrace_show_header_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"Could not create tracefs 'header_page' entry\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"header_event\00", align 1
@ring_buffer_print_entry_header = common dso_local global %struct.trace_array* null, align 8
@.str.11 = private unnamed_addr constant [47 x i8] c"Could not create tracefs 'header_event' entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.trace_array*)* @create_event_toplevel_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_event_toplevel_files(%struct.dentry* %0, %struct.trace_array* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.trace_array* %1, %struct.trace_array** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %10 = call %struct.dentry* @tracefs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 420, %struct.dentry* %8, %struct.trace_array* %9, i32* @ftrace_set_event_fops)
  store %struct.dentry* %10, %struct.dentry** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %7, align 8
  %12 = icmp ne %struct.dentry* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = call %struct.dentry* @tracefs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %18)
  store %struct.dentry* %19, %struct.dentry** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = icmp ne %struct.dentry* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %17
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %29 = call %struct.dentry* @trace_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 420, %struct.dentry* %27, %struct.trace_array* %28, i32* @ftrace_tr_enable_fops)
  store %struct.dentry* %29, %struct.dentry** %7, align 8
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = icmp ne %struct.dentry* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %64

36:                                               ; preds = %26
  %37 = load %struct.dentry*, %struct.dentry** %4, align 8
  %38 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %39 = call %struct.dentry* @tracefs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 420, %struct.dentry* %37, %struct.trace_array* %38, i32* @ftrace_set_event_pid_fops)
  store %struct.dentry* %39, %struct.dentry** %7, align 8
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = icmp ne %struct.dentry* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = load %struct.trace_array*, %struct.trace_array** @ring_buffer_print_page_header, align 8
  %47 = call %struct.dentry* @trace_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 292, %struct.dentry* %45, %struct.trace_array* %46, i32* @ftrace_show_header_fops)
  store %struct.dentry* %47, %struct.dentry** %7, align 8
  %48 = load %struct.dentry*, %struct.dentry** %7, align 8
  %49 = icmp ne %struct.dentry* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = load %struct.trace_array*, %struct.trace_array** @ring_buffer_print_entry_header, align 8
  %55 = call %struct.dentry* @trace_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 292, %struct.dentry* %53, %struct.trace_array* %54, i32* @ftrace_show_header_fops)
  store %struct.dentry* %55, %struct.dentry** %7, align 8
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = icmp ne %struct.dentry* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %63 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %62, i32 0, i32 0
  store %struct.dentry* %61, %struct.dentry** %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %32, %22, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.dentry* @tracefs_create_file(i8*, i32, %struct.dentry*, %struct.trace_array*, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.dentry* @tracefs_create_dir(i8*, %struct.dentry*) #1

declare dso_local %struct.dentry* @trace_create_file(i8*, i32, %struct.dentry*, %struct.trace_array*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
