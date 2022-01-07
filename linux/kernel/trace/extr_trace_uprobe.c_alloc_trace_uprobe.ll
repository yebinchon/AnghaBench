; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_alloc_trace_uprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_alloc_trace_uprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_uprobe = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@trace_uprobe_ops = common dso_local global i32 0, align 4
@uprobe_dispatcher = common dso_local global i32 0, align 4
@uretprobe_dispatcher = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trace_uprobe* (i8*, i8*, i32, i32)* @alloc_trace_uprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trace_uprobe* @alloc_trace_uprobe(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.trace_uprobe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.trace_uprobe*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @SIZEOF_TRACE_UPROBE(i32 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.trace_uprobe* @kzalloc(i32 %13, i32 %14)
  store %struct.trace_uprobe* %15, %struct.trace_uprobe** %10, align 8
  %16 = load %struct.trace_uprobe*, %struct.trace_uprobe** %10, align 8
  %17 = icmp ne %struct.trace_uprobe* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.trace_uprobe* @ERR_PTR(i32 %20)
  store %struct.trace_uprobe* %21, %struct.trace_uprobe** %5, align 8
  br label %56

22:                                               ; preds = %4
  %23 = load %struct.trace_uprobe*, %struct.trace_uprobe** %10, align 8
  %24 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %23, i32 0, i32 3
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @trace_probe_init(i32* %24, i8* %25, i8* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %51

31:                                               ; preds = %22
  %32 = load %struct.trace_uprobe*, %struct.trace_uprobe** %10, align 8
  %33 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %32, i32 0, i32 2
  %34 = call i32 @dyn_event_init(i32* %33, i32* @trace_uprobe_ops)
  %35 = load i32, i32* @uprobe_dispatcher, align 4
  %36 = load %struct.trace_uprobe*, %struct.trace_uprobe** %10, align 8
  %37 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i32, i32* @uretprobe_dispatcher, align 4
  %43 = load %struct.trace_uprobe*, %struct.trace_uprobe** %10, align 8
  %44 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %31
  %47 = load %struct.trace_uprobe*, %struct.trace_uprobe** %10, align 8
  %48 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %47, i32 0, i32 0
  %49 = call i32 @init_trace_uprobe_filter(i32* %48)
  %50 = load %struct.trace_uprobe*, %struct.trace_uprobe** %10, align 8
  store %struct.trace_uprobe* %50, %struct.trace_uprobe** %5, align 8
  br label %56

51:                                               ; preds = %30
  %52 = load %struct.trace_uprobe*, %struct.trace_uprobe** %10, align 8
  %53 = call i32 @kfree(%struct.trace_uprobe* %52)
  %54 = load i32, i32* %11, align 4
  %55 = call %struct.trace_uprobe* @ERR_PTR(i32 %54)
  store %struct.trace_uprobe* %55, %struct.trace_uprobe** %5, align 8
  br label %56

56:                                               ; preds = %51, %46, %18
  %57 = load %struct.trace_uprobe*, %struct.trace_uprobe** %5, align 8
  ret %struct.trace_uprobe* %57
}

declare dso_local %struct.trace_uprobe* @kzalloc(i32, i32) #1

declare dso_local i32 @SIZEOF_TRACE_UPROBE(i32) #1

declare dso_local %struct.trace_uprobe* @ERR_PTR(i32) #1

declare dso_local i32 @trace_probe_init(i32*, i8*, i8*) #1

declare dso_local i32 @dyn_event_init(i32*, i32*) #1

declare dso_local i32 @init_trace_uprobe_filter(i32*) #1

declare dso_local i32 @kfree(%struct.trace_uprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
