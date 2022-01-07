; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_trace_event_user.c_test_perf_event_all_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_trace_event_user.c_test_perf_event_all_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i64 }

@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"sys_perf_event_open failed\0A\00", align 1
@PERF_EVENT_IOC_SET_BPF = common dso_local global i32 0, align 4
@prog_fd = common dso_local global i32* null, align 8
@PERF_EVENT_IOC_ENABLE = common dso_local global i32 0, align 4
@PERF_EVENT_IOC_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_attr*)* @test_perf_event_all_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_perf_event_all_cpu(%struct.perf_event_attr* %0) #0 {
  %2 = alloca %struct.perf_event_attr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %2, align 8
  %7 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %8 = call i32 @sysconf(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i32* @malloc(i32 %12)
  store i32* %13, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %15 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %60, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sys_perf_event_open(%struct.perf_event_attr* %21, i32 -1, i32 %22, i32 -1, i32 0)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %69

36:                                               ; preds = %20
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PERF_EVENT_IOC_SET_BPF, align 4
  %43 = load i32*, i32** @prog_fd, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 (i32, i32, ...) @ioctl(i32 %41, i32 %42, i32 %45)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PERF_EVENT_IOC_ENABLE, align 4
  %56 = call i64 (i32, i32, ...) @ioctl(i32 %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %36
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %16

63:                                               ; preds = %16
  %64 = call i64 (...) @generate_load()
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %6, align 4
  br label %69

67:                                               ; preds = %63
  %68 = call i32 (...) @print_stacks()
  br label %69

69:                                               ; preds = %67, %66, %34
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %89, %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PERF_EVENT_IOC_DISABLE, align 4
  %82 = call i64 (i32, i32, ...) @ioctl(i32 %80, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @close(i32 %87)
  br label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %5, align 4
  br label %72

92:                                               ; preds = %72
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @free(i32* %93)
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @int_exit(i32 0)
  br label %99

99:                                               ; preds = %97, %92
  ret void
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @sys_perf_event_open(%struct.perf_event_attr*, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i64 @generate_load(...) #1

declare dso_local i32 @print_stacks(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @int_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
