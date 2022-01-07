; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__free_cpu_buf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__free_cpu_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_buffer = type { i64, i64 }
%struct.perf_cpu_buf = type { i64, %struct.perf_cpu_buf*, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"failed to munmap cpu_buf #%d\0A\00", align 1
@PERF_EVENT_IOC_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_buffer*, %struct.perf_cpu_buf*)* @perf_buffer__free_cpu_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_buffer__free_cpu_buf(%struct.perf_buffer* %0, %struct.perf_cpu_buf* %1) #0 {
  %3 = alloca %struct.perf_buffer*, align 8
  %4 = alloca %struct.perf_cpu_buf*, align 8
  store %struct.perf_buffer* %0, %struct.perf_buffer** %3, align 8
  store %struct.perf_cpu_buf* %1, %struct.perf_cpu_buf** %4, align 8
  %5 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %4, align 8
  %6 = icmp ne %struct.perf_cpu_buf* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %53

8:                                                ; preds = %2
  %9 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %4, align 8
  %10 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %4, align 8
  %15 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.perf_buffer*, %struct.perf_buffer** %3, align 8
  %18 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.perf_buffer*, %struct.perf_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i64 @munmap(i64 %16, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %4, align 8
  %28 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pr_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %13, %8
  %32 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %4, align 8
  %33 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %4, align 8
  %38 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @PERF_EVENT_IOC_DISABLE, align 4
  %41 = call i32 @ioctl(i64 %39, i32 %40, i32 0)
  %42 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %4, align 8
  %43 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @close(i64 %44)
  br label %46

46:                                               ; preds = %36, %31
  %47 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %4, align 8
  %48 = getelementptr inbounds %struct.perf_cpu_buf, %struct.perf_cpu_buf* %47, i32 0, i32 1
  %49 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %48, align 8
  %50 = call i32 @free(%struct.perf_cpu_buf* %49)
  %51 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %4, align 8
  %52 = call i32 @free(%struct.perf_cpu_buf* %51)
  br label %53

53:                                               ; preds = %46, %7
  ret void
}

declare dso_local i64 @munmap(i64, i64) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @ioctl(i64, i32, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @free(%struct.perf_cpu_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
