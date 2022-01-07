; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_read_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_read_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_iter = type { %struct.ring_buffer_per_cpu* }
%struct.ring_buffer_per_cpu = type { i32 }
%struct.ring_buffer = type { i32, %struct.ring_buffer_per_cpu**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_iter* @ring_buffer_read_prepare(%struct.ring_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ring_buffer_iter*, align 8
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ring_buffer_per_cpu*, align 8
  %9 = alloca %struct.ring_buffer_iter*, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @cpumask_test_cpu(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.ring_buffer_iter* null, %struct.ring_buffer_iter** %4, align 8
  br label %41

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.ring_buffer_iter* @kmalloc(i32 8, i32 %18)
  store %struct.ring_buffer_iter* %19, %struct.ring_buffer_iter** %9, align 8
  %20 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %9, align 8
  %21 = icmp ne %struct.ring_buffer_iter* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.ring_buffer_iter* null, %struct.ring_buffer_iter** %4, align 8
  br label %41

23:                                               ; preds = %17
  %24 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %24, i32 0, i32 1
  %26 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %26, i64 %28
  %30 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %29, align 8
  store %struct.ring_buffer_per_cpu* %30, %struct.ring_buffer_per_cpu** %8, align 8
  %31 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %32 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %9, align 8
  %33 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %32, i32 0, i32 0
  store %struct.ring_buffer_per_cpu* %31, %struct.ring_buffer_per_cpu** %33, align 8
  %34 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %34, i32 0, i32 0
  %36 = call i32 @atomic_inc(i32* %35)
  %37 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %38 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %37, i32 0, i32 0
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %9, align 8
  store %struct.ring_buffer_iter* %40, %struct.ring_buffer_iter** %4, align 8
  br label %41

41:                                               ; preds = %23, %22, %16
  %42 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  ret %struct.ring_buffer_iter* %42
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local %struct.ring_buffer_iter* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
