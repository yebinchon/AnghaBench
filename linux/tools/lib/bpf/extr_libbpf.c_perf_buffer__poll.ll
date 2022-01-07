; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__poll.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_buffer = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.perf_cpu_buf* }
%struct.perf_cpu_buf = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"error while processing records: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_buffer__poll(%struct.perf_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_cpu_buf*, align 8
  store %struct.perf_buffer* %0, %struct.perf_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.perf_buffer*, %struct.perf_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.perf_buffer*, %struct.perf_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.perf_buffer*, %struct.perf_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @epoll_wait(i32 %12, %struct.TYPE_4__* %15, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %45, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load %struct.perf_buffer*, %struct.perf_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.perf_buffer, %struct.perf_buffer* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %33, align 8
  store %struct.perf_cpu_buf* %34, %struct.perf_cpu_buf** %9, align 8
  %35 = load %struct.perf_buffer*, %struct.perf_buffer** %4, align 8
  %36 = load %struct.perf_cpu_buf*, %struct.perf_cpu_buf** %9, align 8
  %37 = call i32 @perf_buffer__process_records(%struct.perf_buffer* %35, %struct.perf_cpu_buf* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %21

48:                                               ; preds = %21
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @errno, align 4
  %53 = sub nsw i32 0, %52
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %53, %51 ], [ %55, %54 ]
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %40
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @epoll_wait(i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @perf_buffer__process_records(%struct.perf_buffer*, %struct.perf_cpu_buf*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
