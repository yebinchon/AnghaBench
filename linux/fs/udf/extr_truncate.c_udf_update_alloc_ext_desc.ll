; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_truncate.c_udf_update_alloc_ext_desc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_truncate.c_udf_update_alloc_ext_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.extent_position = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.udf_sb_info = type { i32 }
%struct.allocExtDesc = type { i32 }

@UDF_FLAG_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.extent_position*, i64)* @udf_update_alloc_ext_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_update_alloc_ext_desc(%struct.inode* %0, %struct.extent_position* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_position*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.udf_sb_info*, align 8
  %9 = alloca %struct.allocExtDesc*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.extent_position* %1, %struct.extent_position** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %14)
  store %struct.udf_sb_info* %15, %struct.udf_sb_info** %8, align 8
  %16 = load %struct.extent_position*, %struct.extent_position** %5, align 8
  %17 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %21, %struct.allocExtDesc** %9, align 8
  store i32 4, i32* %10, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @cpu_to_le32(i64 %22)
  %24 = load %struct.allocExtDesc*, %struct.allocExtDesc** %9, align 8
  %25 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.super_block*, %struct.super_block** %7, align 8
  %27 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %28 = call i32 @UDF_QUERY_FLAG(%struct.super_block* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.udf_sb_info*, %struct.udf_sb_info** %8, align 8
  %32 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 513
  br i1 %34, label %35, label %41

35:                                               ; preds = %30, %3
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.extent_position*, %struct.extent_position** %5, align 8
  %43 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @udf_update_tag(i64 %46, i32 %47)
  %49 = load %struct.extent_position*, %struct.extent_position** %5, align 8
  %50 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_2__* %51, %struct.inode* %52)
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local i32 @udf_update_tag(i64, i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.TYPE_2__*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
