; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_read_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_read_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_bitmap = type { %struct.buffer_head**, i32 }
%struct.buffer_head = type { i32 }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.udf_bitmap*, i32, i64)* @read_block_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_block_bitmap(%struct.super_block* %0, %struct.udf_bitmap* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.udf_bitmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kernel_lb_addr, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.udf_bitmap* %1, %struct.udf_bitmap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.udf_bitmap*, %struct.udf_bitmap** %6, align 8
  %13 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @udf_get_lb_pblock(%struct.super_block* %22, %struct.kernel_lb_addr* %11, i32 %23)
  %25 = call %struct.buffer_head* @udf_tread(%struct.super_block* %21, i32 %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %9, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %27 = icmp ne %struct.buffer_head* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %33 = load %struct.udf_bitmap*, %struct.udf_bitmap** %6, align 8
  %34 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %33, i32 0, i32 0
  %35 = load %struct.buffer_head**, %struct.buffer_head*** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %35, i64 %36
  store %struct.buffer_head* %32, %struct.buffer_head** %37, align 8
  %38 = load i32, i32* %10, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_2__* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @udf_tread(%struct.super_block*, i32) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.super_block*, %struct.kernel_lb_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
