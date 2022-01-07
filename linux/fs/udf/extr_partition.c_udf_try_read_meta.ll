; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_try_read_meta.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_partition.c_udf_try_read_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.udf_part_map = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.extent_position = type { i32 }
%struct.TYPE_6__ = type { %struct.udf_part_map* }

@EXT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i64, i32)* @udf_try_read_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_try_read_meta(%struct.inode* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.udf_part_map*, align 8
  %11 = alloca %struct.kernel_lb_addr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.extent_position, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %9, align 8
  %19 = bitcast %struct.extent_position* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @inode_bmap(%struct.inode* %20, i32 %21, %struct.extent_position* %14, %struct.kernel_lb_addr* %11, i32* %12, i32* %13)
  %23 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %24 = ashr i32 %23, 30
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -1, i32* %15, align 4
  br label %46

27:                                               ; preds = %4
  %28 = load %struct.super_block*, %struct.super_block** %9, align 8
  %29 = call %struct.TYPE_6__* @UDF_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.udf_part_map*, %struct.udf_part_map** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %31, i64 %32
  store %struct.udf_part_map* %33, %struct.udf_part_map** %10, align 8
  %34 = load %struct.super_block*, %struct.super_block** %9, align 8
  %35 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.udf_part_map*, %struct.udf_part_map** %10, align 8
  %38 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @udf_get_pblock(%struct.super_block* %34, i32 %36, i32 %41, i32 %44)
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %27, %26
  %47 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %14, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @brelse(i32 %48)
  %50 = load i32, i32* %15, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @inode_bmap(%struct.inode*, i32, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #2

declare dso_local %struct.TYPE_6__* @UDF_SB(%struct.super_block*) #2

declare dso_local i32 @udf_get_pblock(%struct.super_block*, i32, i32, i32) #2

declare dso_local i32 @brelse(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
