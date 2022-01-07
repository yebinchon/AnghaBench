; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_create_new_subsystem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_create_new_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_subsystem = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@event_subsystems = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_subsystem* (i8*)* @create_new_subsystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_subsystem* @create_new_subsystem(i8* %0) #0 {
  %2 = alloca %struct.event_subsystem*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.event_subsystem*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.event_subsystem* @kmalloc(i32 24, i32 %5)
  store %struct.event_subsystem* %6, %struct.event_subsystem** %4, align 8
  %7 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  %8 = icmp ne %struct.event_subsystem* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.event_subsystem* null, %struct.event_subsystem** %2, align 8
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  %12 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @kstrdup_const(i8* %13, i32 %14)
  %16 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  %17 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  %19 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %40

23:                                               ; preds = %10
  %24 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  %25 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kzalloc(i32 4, i32 %26)
  %28 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  %29 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  %30 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  %31 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %40

35:                                               ; preds = %23
  %36 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  %37 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %36, i32 0, i32 2
  %38 = call i32 @list_add(i32* %37, i32* @event_subsystems)
  %39 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  store %struct.event_subsystem* %39, %struct.event_subsystem** %2, align 8
  br label %47

40:                                               ; preds = %34, %22
  %41 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  %42 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kfree_const(i32 %43)
  %45 = load %struct.event_subsystem*, %struct.event_subsystem** %4, align 8
  %46 = call i32 @kfree(%struct.event_subsystem* %45)
  store %struct.event_subsystem* null, %struct.event_subsystem** %2, align 8
  br label %47

47:                                               ; preds = %40, %35, %9
  %48 = load %struct.event_subsystem*, %struct.event_subsystem** %2, align 8
  ret %struct.event_subsystem* %48
}

declare dso_local %struct.event_subsystem* @kmalloc(i32, i32) #1

declare dso_local i32 @kstrdup_const(i8*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @kfree(%struct.event_subsystem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
