; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_free_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.kernel_lb_addr = type { i64 }
%struct.udf_part_map = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.udf_part_map* }

@UDF_PART_FLAG_UNALLOC_BITMAP = common dso_local global i32 0, align 4
@UDF_PART_FLAG_UNALLOC_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_free_blocks(%struct.super_block* %0, %struct.inode* %1, %struct.kernel_lb_addr* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.kernel_lb_addr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.udf_part_map*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %14 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.TYPE_4__* @UDF_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %19, i64 %20
  store %struct.udf_part_map* %21, %struct.udf_part_map** %12, align 8
  %22 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %23 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UDF_PART_FLAG_UNALLOC_BITMAP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %5
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %31 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @udf_bitmap_free_blocks(%struct.super_block* %29, i32 %33, %struct.kernel_lb_addr* %34, i64 %35, i64 %36)
  br label %56

38:                                               ; preds = %5
  %39 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %40 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UDF_PART_FLAG_UNALLOC_TABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = load %struct.udf_part_map*, %struct.udf_part_map** %12, align 8
  %48 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @udf_table_free_blocks(%struct.super_block* %46, i32 %50, %struct.kernel_lb_addr* %51, i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %45, %38
  br label %56

56:                                               ; preds = %55, %28
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = icmp ne %struct.inode* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.super_block*, %struct.super_block** %6, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %62, %65
  %67 = call i32 @inode_sub_bytes(%struct.inode* %60, i32 %66)
  br label %68

68:                                               ; preds = %59, %56
  ret void
}

declare dso_local %struct.TYPE_4__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_bitmap_free_blocks(%struct.super_block*, i32, %struct.kernel_lb_addr*, i64, i64) #1

declare dso_local i32 @udf_table_free_blocks(%struct.super_block*, i32, %struct.kernel_lb_addr*, i64, i64) #1

declare dso_local i32 @inode_sub_bytes(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
