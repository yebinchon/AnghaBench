; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_sq_thread_stop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_sq_thread_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ring_ctx*)* @io_sq_thread_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_sq_thread_stop(%struct.io_ring_ctx* %0) #0 {
  %2 = alloca %struct.io_ring_ctx*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %2, align 8
  %3 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %8, i32 0, i32 1
  %10 = call i32 @wait_for_completion(i32* %9)
  %11 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kthread_park(i32* %13)
  %15 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kthread_stop(i32* %17)
  %19 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kthread_park(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
