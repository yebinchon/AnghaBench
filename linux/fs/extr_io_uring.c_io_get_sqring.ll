; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_get_sqring.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_get_sqring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32, i32, i32, i32, i32*, i32*, %struct.io_rings* }
%struct.io_rings = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sqe_submit = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.sqe_submit*)* @io_get_sqring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_get_sqring(%struct.io_ring_ctx* %0, %struct.sqe_submit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_ring_ctx*, align 8
  %5 = alloca %struct.sqe_submit*, align 8
  %6 = alloca %struct.io_rings*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %4, align 8
  store %struct.sqe_submit* %1, %struct.sqe_submit** %5, align 8
  %9 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %9, i32 0, i32 6
  %11 = load %struct.io_rings*, %struct.io_rings** %10, align 8
  store %struct.io_rings* %11, %struct.io_rings** %6, align 8
  %12 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %20 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @smp_load_acquire(i32* %21)
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @READ_ONCE(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %25
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.sqe_submit*, %struct.sqe_submit** %5, align 8
  %44 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load %struct.sqe_submit*, %struct.sqe_submit** %5, align 8
  %52 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sqe_submit*, %struct.sqe_submit** %5, align 8
  %57 = getelementptr inbounds %struct.sqe_submit, %struct.sqe_submit* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add i32 %60, 1
  store i32 %61, i32* %59, align 8
  store i32 1, i32* %3, align 4
  br label %78

62:                                               ; preds = %25
  %63 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %72 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %75 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @WRITE_ONCE(i32 %73, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %62, %41, %24
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @smp_load_acquire(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
