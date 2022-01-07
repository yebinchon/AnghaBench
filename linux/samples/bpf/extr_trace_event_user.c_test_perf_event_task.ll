; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_trace_event_user.c_test_perf_event_task.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_trace_event_user.c_test_perf_event_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"sys_perf_event_open failed\0A\00", align 1
@PERF_EVENT_IOC_SET_BPF = common dso_local global i32 0, align 4
@prog_fd = common dso_local global i32* null, align 8
@PERF_EVENT_IOC_ENABLE = common dso_local global i32 0, align 4
@PERF_EVENT_IOC_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_attr*)* @test_perf_event_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_perf_event_task(%struct.perf_event_attr* %0) #0 {
  %2 = alloca %struct.perf_event_attr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %8 = call i32 @sys_perf_event_open(%struct.perf_event_attr* %7, i32 0, i32 -1, i32 -1, i32 0)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @int_exit(i32 0)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PERF_EVENT_IOC_SET_BPF, align 4
  %17 = load i32*, i32** @prog_fd, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 (i32, i32, ...) @ioctl(i32 %15, i32 %16, i32 %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PERF_EVENT_IOC_ENABLE, align 4
  %26 = call i64 (i32, i32, ...) @ioctl(i32 %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = call i64 (...) @generate_load()
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %35

33:                                               ; preds = %14
  %34 = call i32 (...) @print_stacks()
  br label %35

35:                                               ; preds = %33, %32
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PERF_EVENT_IOC_DISABLE, align 4
  %38 = call i64 (i32, i32, ...) @ioctl(i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 @int_exit(i32 0)
  br label %45

45:                                               ; preds = %43, %35
  ret void
}

declare dso_local i32 @sys_perf_event_open(%struct.perf_event_attr*, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @int_exit(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i64 @generate_load(...) #1

declare dso_local i32 @print_stacks(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
