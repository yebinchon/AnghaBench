; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_alloc_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_alloc_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32 }
%struct.ring_buffer_per_cpu = type { i32, i32* }
%struct.buffer_data_page = type opaque
%struct.page = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ring_buffer_alloc_read_page(%struct.ring_buffer* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ring_buffer_per_cpu*, align 8
  %7 = alloca %struct.buffer_data_page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_data_page* null, %struct.buffer_data_page** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @cpumask_test_cpu(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i8* @ERR_PTR(i32 %18)
  store i8* %19, i8** %3, align 8
  br label %76

20:                                               ; preds = %2
  %21 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %21, i32 0, i32 0
  %23 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %23, i64 %25
  %27 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %26, align 8
  store %struct.ring_buffer_per_cpu* %27, %struct.ring_buffer_per_cpu** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @local_irq_save(i64 %28)
  %30 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %31 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %30, i32 0, i32 0
  %32 = call i32 @arch_spin_lock(i32* %31)
  %33 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %34 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %39 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to %struct.buffer_data_page*
  store %struct.buffer_data_page* %41, %struct.buffer_data_page** %7, align 8
  %42 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %43 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %20
  %45 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %46 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %45, i32 0, i32 0
  %47 = call i32 @arch_spin_unlock(i32* %46)
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @local_irq_restore(i64 %48)
  %50 = load %struct.buffer_data_page*, %struct.buffer_data_page** %7, align 8
  %51 = icmp ne %struct.buffer_data_page* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %70

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @cpu_to_node(i32 %54)
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = load i32, i32* @__GFP_NORETRY, align 4
  %58 = or i32 %56, %57
  %59 = call %struct.page* @alloc_pages_node(i32 %55, i32 %58, i32 0)
  store %struct.page* %59, %struct.page** %9, align 8
  %60 = load %struct.page*, %struct.page** %9, align 8
  %61 = icmp ne %struct.page* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i8* @ERR_PTR(i32 %64)
  store i8* %65, i8** %3, align 8
  br label %76

66:                                               ; preds = %53
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = call i8* @page_address(%struct.page* %67)
  %69 = bitcast i8* %68 to %struct.buffer_data_page*
  store %struct.buffer_data_page* %69, %struct.buffer_data_page** %7, align 8
  br label %70

70:                                               ; preds = %66, %52
  %71 = load %struct.buffer_data_page*, %struct.buffer_data_page** %7, align 8
  %72 = bitcast %struct.buffer_data_page* %71 to i8*
  %73 = call i32 @rb_init_page(i8* %72)
  %74 = load %struct.buffer_data_page*, %struct.buffer_data_page** %7, align 8
  %75 = bitcast %struct.buffer_data_page* %74 to i8*
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %70, %62, %16
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @rb_init_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
