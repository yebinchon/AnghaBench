; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_ring_ctx_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_ring_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ring_ctx*)* @io_ring_ctx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_ring_ctx_free(%struct.io_ring_ctx* %0) #0 {
  %2 = alloca %struct.io_ring_ctx*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %2, align 8
  %3 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %4 = call i32 @io_finish_async(%struct.io_ring_ctx* %3)
  %5 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %5, i32 0, i32 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @mmdrop(i64 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %16 = call i32 @io_iopoll_reap_events(%struct.io_ring_ctx* %15)
  %17 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %18 = call i32 @io_sqe_buffer_unregister(%struct.io_ring_ctx* %17)
  %19 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %20 = call i32 @io_sqe_files_unregister(%struct.io_ring_ctx* %19)
  %21 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %22 = call i32 @io_eventfd_unregister(%struct.io_ring_ctx* %21)
  %23 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @io_mem_free(i32 %25)
  %27 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @io_mem_free(i32 %29)
  %31 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %31, i32 0, i32 4
  %33 = call i32 @percpu_ref_exit(i32* %32)
  %34 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %14
  %39 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ring_pages(i32 %44, i32 %47)
  %49 = call i32 @io_unaccount_mem(i32 %41, i32 %48)
  br label %50

50:                                               ; preds = %38, %14
  %51 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @free_uid(i32 %53)
  %55 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %56 = call i32 @kfree(%struct.io_ring_ctx* %55)
  ret void
}

declare dso_local i32 @io_finish_async(%struct.io_ring_ctx*) #1

declare dso_local i32 @mmdrop(i64) #1

declare dso_local i32 @io_iopoll_reap_events(%struct.io_ring_ctx*) #1

declare dso_local i32 @io_sqe_buffer_unregister(%struct.io_ring_ctx*) #1

declare dso_local i32 @io_sqe_files_unregister(%struct.io_ring_ctx*) #1

declare dso_local i32 @io_eventfd_unregister(%struct.io_ring_ctx*) #1

declare dso_local i32 @io_mem_free(i32) #1

declare dso_local i32 @percpu_ref_exit(i32*) #1

declare dso_local i32 @io_unaccount_mem(i32, i32) #1

declare dso_local i32 @ring_pages(i32, i32) #1

declare dso_local i32 @free_uid(i32) #1

declare dso_local i32 @kfree(%struct.io_ring_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
