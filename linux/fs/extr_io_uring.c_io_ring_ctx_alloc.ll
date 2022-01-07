; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_ring_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_ring_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.io_uring_params = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@io_ring_ctx_ref_free = common dso_local global i32 0, align 4
@PERCPU_REF_ALLOW_REINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.io_ring_ctx* (%struct.io_uring_params*)* @io_ring_ctx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.io_ring_ctx* @io_ring_ctx_alloc(%struct.io_uring_params* %0) #0 {
  %2 = alloca %struct.io_ring_ctx*, align 8
  %3 = alloca %struct.io_uring_params*, align 8
  %4 = alloca %struct.io_ring_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.io_uring_params* %0, %struct.io_uring_params** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.io_ring_ctx* @kzalloc(i32 64, i32 %6)
  store %struct.io_ring_ctx* %7, %struct.io_ring_ctx** %4, align 8
  %8 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %9 = icmp ne %struct.io_ring_ctx* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.io_ring_ctx* null, %struct.io_ring_ctx** %2, align 8
  br label %95

11:                                               ; preds = %1
  %12 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %12, i32 0, i32 12
  %14 = load i32, i32* @io_ring_ctx_ref_free, align 4
  %15 = load i32, i32* @PERCPU_REF_ALLOW_REINIT, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64 @percpu_ref_init(i32* %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %21 = call i32 @kfree(%struct.io_ring_ctx* %20)
  store %struct.io_ring_ctx* null, %struct.io_ring_ctx** %2, align 8
  br label %95

22:                                               ; preds = %11
  %23 = load %struct.io_uring_params*, %struct.io_uring_params** %3, align 8
  %24 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 4
  %28 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %28, i32 0, i32 10
  %30 = call i32 @init_waitqueue_head(i32* %29)
  %31 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %31, i32 0, i32 9
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %34, i32 0, i32 8
  %36 = call i32 @init_completion(i32* %35)
  %37 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %37, i32 0, i32 7
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %40, i32 0, i32 6
  %42 = call i32 @init_waitqueue_head(i32* %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %75, %22
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %47)
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %43
  %51 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %51, i32 0, i32 5
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @atomic_set(i32* %73, i32 0)
  br label %75

75:                                               ; preds = %50
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %43

78:                                               ; preds = %43
  %79 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %79, i32 0, i32 4
  %81 = call i32 @spin_lock_init(i32* %80)
  %82 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %82, i32 0, i32 3
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  %85 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %85, i32 0, i32 2
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %88, i32 0, i32 1
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %92 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %91, i32 0, i32 0
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  store %struct.io_ring_ctx* %94, %struct.io_ring_ctx** %2, align 8
  br label %95

95:                                               ; preds = %78, %19, %10
  %96 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %2, align 8
  ret %struct.io_ring_ctx* %96
}

declare dso_local %struct.io_ring_ctx* @kzalloc(i32, i32) #1

declare dso_local i64 @percpu_ref_init(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.io_ring_ctx*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
