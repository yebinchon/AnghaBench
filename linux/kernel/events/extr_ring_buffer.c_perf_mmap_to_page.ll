; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_perf_mmap_to_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_perf_mmap_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.ring_buffer = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @perf_mmap_to_page(%struct.ring_buffer* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  %20 = icmp ugt i64 %12, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store %struct.page* null, %struct.page** %3, align 8
  br label %51

22:                                               ; preds = %11
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  %34 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @array_index_nospec(i64 %33, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.page* @virt_to_page(i32 %44)
  store %struct.page* %45, %struct.page** %3, align 8
  br label %51

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call %struct.page* @__perf_mmap_to_page(%struct.ring_buffer* %48, i64 %49)
  store %struct.page* %50, %struct.page** %3, align 8
  br label %51

51:                                               ; preds = %47, %28, %21
  %52 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %52
}

declare dso_local i32 @array_index_nospec(i64, i64) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local %struct.page* @__perf_mmap_to_page(%struct.ring_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
