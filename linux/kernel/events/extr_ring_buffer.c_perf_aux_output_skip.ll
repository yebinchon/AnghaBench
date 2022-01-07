; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_perf_aux_output_skip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_perf_aux_output_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i64, i64, i64, %struct.ring_buffer* }
%struct.ring_buffer = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_aux_output_skip(%struct.perf_output_handle* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_output_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ring_buffer*, align 8
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %8 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %7, i32 0, i32 3
  %9 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  store %struct.ring_buffer* %9, %struct.ring_buffer** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %12 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @WRITE_ONCE(i32 %28, i64 %31)
  %33 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %34 = call i64 @rb_need_aux_wakeup(%struct.ring_buffer* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %18
  %37 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %38 = call i32 @perf_output_wakeup(%struct.perf_output_handle* %37)
  %39 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %47 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %36, %18
  %49 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %53 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %56 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, %54
  store i64 %58, i64* %56, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %48, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i64 @rb_need_aux_wakeup(%struct.ring_buffer*) #1

declare dso_local i32 @perf_output_wakeup(%struct.perf_output_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
