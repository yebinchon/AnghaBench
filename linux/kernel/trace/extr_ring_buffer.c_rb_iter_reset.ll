; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_iter_reset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_rb_iter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_iter = type { %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_4__*, %struct.ring_buffer_per_cpu* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ring_buffer_per_cpu = type { i32, i32, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_iter*)* @rb_iter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_iter_reset(%struct.ring_buffer_iter* %0) #0 {
  %2 = alloca %struct.ring_buffer_iter*, align 8
  %3 = alloca %struct.ring_buffer_per_cpu*, align 8
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %2, align 8
  %4 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %5 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %4, i32 0, i32 5
  %6 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  store %struct.ring_buffer_per_cpu* %6, %struct.ring_buffer_per_cpu** %3, align 8
  %7 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %8 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %11 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %10, i32 0, i32 0
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %11, align 8
  %12 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %13 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %18 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %20 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %23 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %22, i32 0, i32 4
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %25 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %28 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %30 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %35 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %38 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %49

39:                                               ; preds = %1
  %40 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %41 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %48 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %39, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
