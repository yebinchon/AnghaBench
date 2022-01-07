; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_sqe_buffer_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_sqe_buffer_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i32, %struct.io_mapped_ubuf*, i32, i64 }
%struct.io_mapped_ubuf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*)* @io_sqe_buffer_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_sqe_buffer_unregister(%struct.io_ring_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.io_ring_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.io_mapped_ubuf*, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %3, align 8
  %7 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %7, i32 0, i32 1
  %9 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %8, align 8
  %10 = icmp ne %struct.io_mapped_ubuf* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %79

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %67, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %15
  %22 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %22, i32 0, i32 1
  %24 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %24, i64 %26
  store %struct.io_mapped_ubuf* %27, %struct.io_mapped_ubuf** %6, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %44, %21
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %6, align 8
  %31 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %6, align 8
  %36 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @put_user_page(i32 %42)
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %6, align 8
  %57 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @io_unaccount_mem(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %6, align 8
  %62 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @kvfree(%struct.TYPE_2__* %63)
  %65 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %6, align 8
  %66 = getelementptr inbounds %struct.io_mapped_ubuf, %struct.io_mapped_ubuf* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %15

70:                                               ; preds = %15
  %71 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %71, i32 0, i32 1
  %73 = load %struct.io_mapped_ubuf*, %struct.io_mapped_ubuf** %72, align 8
  %74 = call i32 @kfree(%struct.io_mapped_ubuf* %73)
  %75 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %75, i32 0, i32 1
  store %struct.io_mapped_ubuf* null, %struct.io_mapped_ubuf** %76, align 8
  %77 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %70, %11
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @put_user_page(i32) #1

declare dso_local i32 @io_unaccount_mem(i32, i32) #1

declare dso_local i32 @kvfree(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.io_mapped_ubuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
