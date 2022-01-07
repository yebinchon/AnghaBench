; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_sb_alloc_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_sb_alloc_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_bitmap = type { i32 }
%struct.super_block = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udf_bitmap* (%struct.super_block*, i32)* @udf_sb_alloc_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udf_bitmap* @udf_sb_alloc_bitmap(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.udf_bitmap*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.udf_bitmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @udf_compute_nr_groups(%struct.super_block* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = add i64 4, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.udf_bitmap* @kzalloc(i32 %21, i32 %22)
  store %struct.udf_bitmap* %23, %struct.udf_bitmap** %6, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.udf_bitmap* @vzalloc(i32 %25)
  store %struct.udf_bitmap* %26, %struct.udf_bitmap** %6, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.udf_bitmap*, %struct.udf_bitmap** %6, align 8
  %29 = icmp ne %struct.udf_bitmap* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store %struct.udf_bitmap* null, %struct.udf_bitmap** %3, align 8
  br label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.udf_bitmap*, %struct.udf_bitmap** %6, align 8
  %34 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.udf_bitmap*, %struct.udf_bitmap** %6, align 8
  store %struct.udf_bitmap* %35, %struct.udf_bitmap** %3, align 8
  br label %36

36:                                               ; preds = %31, %30
  %37 = load %struct.udf_bitmap*, %struct.udf_bitmap** %3, align 8
  ret %struct.udf_bitmap* %37
}

declare dso_local i32 @udf_compute_nr_groups(%struct.super_block*, i32) #1

declare dso_local %struct.udf_bitmap* @kzalloc(i32, i32) #1

declare dso_local %struct.udf_bitmap* @vzalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
