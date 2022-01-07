; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_resize_saved_cmdlines.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_resize_saved_cmdlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saved_cmdlines_buffer = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@trace_cmdline_lock = common dso_local global i32 0, align 4
@savedcmd = common dso_local global %struct.saved_cmdlines_buffer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tracing_resize_saved_cmdlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_resize_saved_cmdlines(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.saved_cmdlines_buffer*, align 8
  %5 = alloca %struct.saved_cmdlines_buffer*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.saved_cmdlines_buffer* @kmalloc(i32 4, i32 %6)
  store %struct.saved_cmdlines_buffer* %7, %struct.saved_cmdlines_buffer** %4, align 8
  %8 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %4, align 8
  %9 = icmp ne %struct.saved_cmdlines_buffer* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %4, align 8
  %16 = call i64 @allocate_cmdlines_buffer(i32 %14, %struct.saved_cmdlines_buffer* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %4, align 8
  %20 = call i32 @kfree(%struct.saved_cmdlines_buffer* %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %30

23:                                               ; preds = %13
  %24 = call i32 @arch_spin_lock(i32* @trace_cmdline_lock)
  %25 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** @savedcmd, align 8
  store %struct.saved_cmdlines_buffer* %25, %struct.saved_cmdlines_buffer** %5, align 8
  %26 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %4, align 8
  store %struct.saved_cmdlines_buffer* %26, %struct.saved_cmdlines_buffer** @savedcmd, align 8
  %27 = call i32 @arch_spin_unlock(i32* @trace_cmdline_lock)
  %28 = load %struct.saved_cmdlines_buffer*, %struct.saved_cmdlines_buffer** %5, align 8
  %29 = call i32 @free_saved_cmdlines_buffer(%struct.saved_cmdlines_buffer* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %23, %18, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.saved_cmdlines_buffer* @kmalloc(i32, i32) #1

declare dso_local i64 @allocate_cmdlines_buffer(i32, %struct.saved_cmdlines_buffer*) #1

declare dso_local i32 @kfree(%struct.saved_cmdlines_buffer*) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @free_saved_cmdlines_buffer(%struct.saved_cmdlines_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
