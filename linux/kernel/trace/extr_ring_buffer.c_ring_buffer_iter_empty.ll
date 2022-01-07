; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_iter_empty.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_iter_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_iter = type { i32, %struct.buffer_page*, %struct.ring_buffer_per_cpu* }
%struct.buffer_page = type { i32 }
%struct.ring_buffer_per_cpu = type { %struct.buffer_page*, %struct.buffer_page*, %struct.buffer_page* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ring_buffer_iter_empty(%struct.ring_buffer_iter* %0) #0 {
  %2 = alloca %struct.ring_buffer_iter*, align 8
  %3 = alloca %struct.ring_buffer_per_cpu*, align 8
  %4 = alloca %struct.buffer_page*, align 8
  %5 = alloca %struct.buffer_page*, align 8
  %6 = alloca %struct.buffer_page*, align 8
  %7 = alloca i32, align 4
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %2, align 8
  %8 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %9 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %8, i32 0, i32 2
  %10 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %9, align 8
  store %struct.ring_buffer_per_cpu* %10, %struct.ring_buffer_per_cpu** %3, align 8
  %11 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %12 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %11, i32 0, i32 0
  %13 = load %struct.buffer_page*, %struct.buffer_page** %12, align 8
  store %struct.buffer_page* %13, %struct.buffer_page** %4, align 8
  %14 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %15 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %14, i32 0, i32 2
  %16 = load %struct.buffer_page*, %struct.buffer_page** %15, align 8
  store %struct.buffer_page* %16, %struct.buffer_page** %5, align 8
  %17 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %18 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %17, i32 0, i32 1
  %19 = load %struct.buffer_page*, %struct.buffer_page** %18, align 8
  store %struct.buffer_page* %19, %struct.buffer_page** %6, align 8
  %20 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %21 = call i32 @rb_page_commit(%struct.buffer_page* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %23 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %22, i32 0, i32 1
  %24 = load %struct.buffer_page*, %struct.buffer_page** %23, align 8
  %25 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %26 = icmp eq %struct.buffer_page* %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %29 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %60, label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %35 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %34, i32 0, i32 1
  %36 = load %struct.buffer_page*, %struct.buffer_page** %35, align 8
  %37 = load %struct.buffer_page*, %struct.buffer_page** %4, align 8
  %38 = icmp eq %struct.buffer_page* %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %41 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %42 = icmp eq %struct.buffer_page* %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %45 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %51 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %54 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %53, i32 0, i32 0
  %55 = load %struct.buffer_page*, %struct.buffer_page** %54, align 8
  %56 = call i32 @rb_page_commit(%struct.buffer_page* %55)
  %57 = icmp eq i32 %52, %56
  br label %58

58:                                               ; preds = %49, %43, %39, %33
  %59 = phi i1 [ false, %43 ], [ false, %39 ], [ false, %33 ], [ %57, %49 ]
  br label %60

60:                                               ; preds = %58, %27
  %61 = phi i1 [ true, %27 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  ret i32 %62
}

declare dso_local i32 @rb_page_commit(%struct.buffer_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
