; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_perf_output_put_handle.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_perf_output_put_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i64, %struct.ring_buffer* }
%struct.ring_buffer = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_output_handle*)* @perf_output_put_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_output_put_handle(%struct.perf_output_handle* %0) #0 {
  %2 = alloca %struct.perf_output_handle*, align 8
  %3 = alloca %struct.ring_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %2, align 8
  %6 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %7 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %6, i32 0, i32 1
  %8 = load %struct.ring_buffer*, %struct.ring_buffer** %7, align 8
  store %struct.ring_buffer* %8, %struct.ring_buffer** %3, align 8
  %9 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @READ_ONCE(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub i32 %19, 1
  %21 = call i32 @WRITE_ONCE(i32 %18, i32 %20)
  br label %68

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %51, %22
  %24 = call i32 (...) @barrier()
  %25 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %25, i32 0, i32 2
  %27 = call i64 @local_read(i32* %26)
  store i64 %27, i64* %4, align 8
  %28 = call i32 (...) @smp_wmb()
  %29 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %30 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %4, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @WRITE_ONCE(i32 %33, i32 %35)
  %37 = call i32 (...) @barrier()
  %38 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WRITE_ONCE(i32 %40, i32 0)
  %42 = call i32 (...) @barrier()
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %45 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %44, i32 0, i32 2
  %46 = call i64 @local_read(i32* %45)
  %47 = icmp ne i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %23
  %52 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %53 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @WRITE_ONCE(i32 %54, i32 1)
  br label %23

56:                                               ; preds = %23
  %57 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %58 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %61 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %60, i32 0, i32 0
  %62 = call i64 @local_read(i32* %61)
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %66 = call i32 @perf_output_wakeup(%struct.perf_output_handle* %65)
  br label %67

67:                                               ; preds = %64, %56
  br label %68

68:                                               ; preds = %67, %15
  %69 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @local_read(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @perf_output_wakeup(%struct.perf_output_handle*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
