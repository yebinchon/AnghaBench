; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_iopoll_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c___io_iopoll_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, i32*, i64)* @__io_iopoll_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__io_iopoll_check(%struct.io_ring_ctx* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.io_ring_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %62, %3
  store i32 0, i32* %9, align 4
  %11 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @io_cqring_events(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %64

17:                                               ; preds = %10
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = and i32 %19, 7
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  br label %29

29:                                               ; preds = %22, %17
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  %40 = sub nsw i64 %36, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @io_iopoll_getevents(%struct.io_ring_ctx* %43, i32* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %64

50:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = call i32 (...) @need_resched()
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %58, %54, %51
  %63 = phi i1 [ false, %54 ], [ false, %51 ], [ %61, %58 ]
  br i1 %63, label %10, label %64

64:                                               ; preds = %62, %49, %16
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i64 @io_cqring_events(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @io_iopoll_getevents(%struct.io_ring_ctx*, i32*, i32) #1

declare dso_local i32 @need_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
