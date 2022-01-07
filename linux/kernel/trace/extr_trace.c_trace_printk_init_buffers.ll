; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_printk_init_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_printk_init_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@buffers_allocated = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"**********************************************************\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"**   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"**                                                      **\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"** trace_printk() being used. Allocating extra memory.  **\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"** This means that this is a DEBUG kernel and it is     **\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"** unsafe for production use.                           **\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"** If you see this message and you are not debugging    **\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"** the kernel, report this immediately to your vendor!  **\0A\00", align 1
@global_trace = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_printk_init_buffers() #0 {
  %1 = load i32, i32* @buffers_allocated, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %28

4:                                                ; preds = %0
  %5 = call i64 (...) @alloc_percpu_trace_buffer()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %28

8:                                                ; preds = %4
  %9 = call i32 @pr_warn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (...) @tracing_update_buffers()
  store i32 1, i32* @buffers_allocated, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global_trace, i32 0, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = call i32 (...) @tracing_start_cmdline_record()
  br label %28

28:                                               ; preds = %3, %7, %26, %8
  ret void
}

declare dso_local i64 @alloc_percpu_trace_buffer(...) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @tracing_update_buffers(...) #1

declare dso_local i32 @tracing_start_cmdline_record(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
