; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_nr_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_nr_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ring_buffer_nr_dirty_pages(%struct.ring_buffer* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i64 @local_read(i32* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i64 @local_read(i32* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  %33 = icmp ugt i64 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON_ONCE(i32 %34)
  store i64 0, i64* %3, align 8
  br label %40

36:                                               ; preds = %2
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @local_read(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
