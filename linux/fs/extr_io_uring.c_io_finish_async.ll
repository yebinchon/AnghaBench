; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_finish_async.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_finish_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ring_ctx*)* @io_finish_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_finish_async(%struct.io_ring_ctx* %0) #0 {
  %2 = alloca %struct.io_ring_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %2, align 8
  %4 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %5 = call i32 @io_sq_thread_stop(%struct.io_ring_ctx* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %38, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  %11 = call i32 @ARRAY_SIZE(i32** %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %6
  %14 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @destroy_workqueue(i32* %29)
  %31 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %22, %13
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %6

41:                                               ; preds = %6
  ret void
}

declare dso_local i32 @io_sq_thread_stop(%struct.io_ring_ctx*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
