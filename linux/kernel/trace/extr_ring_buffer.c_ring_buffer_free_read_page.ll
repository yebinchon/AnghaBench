; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_free_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_free_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.ring_buffer_per_cpu** }
%struct.ring_buffer_per_cpu = type { i32, %struct.buffer_data_page* }
%struct.buffer_data_page = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ring_buffer_free_read_page(%struct.ring_buffer* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ring_buffer_per_cpu*, align 8
  %8 = alloca %struct.buffer_data_page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %11, i32 0, i32 0
  %13 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %13, i64 %15
  %17 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %16, align 8
  store %struct.ring_buffer_per_cpu* %17, %struct.ring_buffer_per_cpu** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.buffer_data_page*
  store %struct.buffer_data_page* %19, %struct.buffer_data_page** %8, align 8
  %20 = load %struct.buffer_data_page*, %struct.buffer_data_page** %8, align 8
  %21 = call %struct.page* @virt_to_page(%struct.buffer_data_page* %20)
  store %struct.page* %21, %struct.page** %9, align 8
  %22 = load %struct.page*, %struct.page** %9, align 8
  %23 = call i32 @page_ref_count(%struct.page* %22)
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %46

26:                                               ; preds = %3
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @local_irq_save(i64 %27)
  %29 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %30 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %29, i32 0, i32 0
  %31 = call i32 @arch_spin_lock(i32* %30)
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %33 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %32, i32 0, i32 1
  %34 = load %struct.buffer_data_page*, %struct.buffer_data_page** %33, align 8
  %35 = icmp ne %struct.buffer_data_page* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load %struct.buffer_data_page*, %struct.buffer_data_page** %8, align 8
  %38 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %39 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %38, i32 0, i32 1
  store %struct.buffer_data_page* %37, %struct.buffer_data_page** %39, align 8
  store %struct.buffer_data_page* null, %struct.buffer_data_page** %8, align 8
  br label %40

40:                                               ; preds = %36, %26
  %41 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %42 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %41, i32 0, i32 0
  %43 = call i32 @arch_spin_unlock(i32* %42)
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  br label %46

46:                                               ; preds = %40, %25
  %47 = load %struct.buffer_data_page*, %struct.buffer_data_page** %8, align 8
  %48 = ptrtoint %struct.buffer_data_page* %47 to i64
  %49 = call i32 @free_page(i64 %48)
  ret void
}

declare dso_local %struct.page* @virt_to_page(%struct.buffer_data_page*) #1

declare dso_local i32 @page_ref_count(%struct.page*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
