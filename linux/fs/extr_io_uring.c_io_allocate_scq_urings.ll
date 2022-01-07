; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_allocate_scq_urings.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_allocate_scq_urings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ring_ctx = type { i8*, i64, i64, i64, i64, i32*, %struct.io_rings* }
%struct.io_rings = type { i64, i64, i64, i64 }
%struct.io_uring_params = type { i64, i64 }

@SIZE_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.io_uring_params*)* @io_allocate_scq_urings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_allocate_scq_urings(%struct.io_ring_ctx* %0, %struct.io_uring_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_ring_ctx*, align 8
  %5 = alloca %struct.io_uring_params*, align 8
  %6 = alloca %struct.io_rings*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %4, align 8
  store %struct.io_uring_params* %1, %struct.io_uring_params** %5, align 8
  %9 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %10 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %13 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @rings_size(i64 %11, i64 %14, i64* %8)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @SIZE_MAX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EOVERFLOW, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %107

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = call i8* @io_mem_alloc(i64 %23)
  %25 = bitcast i8* %24 to %struct.io_rings*
  store %struct.io_rings* %25, %struct.io_rings** %6, align 8
  %26 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %27 = icmp ne %struct.io_rings* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %107

31:                                               ; preds = %22
  %32 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %33 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %33, i32 0, i32 6
  store %struct.io_rings* %32, %struct.io_rings** %34, align 8
  %35 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %36 = bitcast %struct.io_rings* %35 to i8*
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %40, i32 0, i32 5
  store i32* %39, i32** %41, align 8
  %42 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %43 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, 1
  %46 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %47 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %49 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  %52 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %53 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %55 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %58 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %60 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %63 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %65 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %67, i32 0, i32 4
  store i64 %66, i64* %68, align 8
  %69 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %70 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %75 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.io_rings*, %struct.io_rings** %6, align 8
  %80 = getelementptr inbounds %struct.io_rings, %struct.io_rings* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %85 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @array_size(i32 4, i64 %86)
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @SIZE_MAX, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %31
  %92 = load i32, i32* @EOVERFLOW, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %107

94:                                               ; preds = %31
  %95 = load i64, i64* %7, align 8
  %96 = call i8* @io_mem_alloc(i64 %95)
  %97 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %100 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %94
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %107

106:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %103, %91, %28, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @rings_size(i64, i64, i64*) #1

declare dso_local i8* @io_mem_alloc(i64) #1

declare dso_local i64 @array_size(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
