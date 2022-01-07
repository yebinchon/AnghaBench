; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_find_vat_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_find_vat_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sb_info = type { %struct.inode*, %struct.udf_part_map* }
%struct.inode = type { i32 }
%struct.udf_part_map = type { i64 }
%struct.kernel_lb_addr = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32, i32, i64)* @udf_find_vat_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_find_vat_block(%struct.super_block* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.udf_sb_info*, align 8
  %10 = alloca %struct.udf_part_map*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.kernel_lb_addr, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %14)
  store %struct.udf_sb_info* %15, %struct.udf_sb_info** %9, align 8
  %16 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %17 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %16, i32 0, i32 1
  %18 = load %struct.udf_part_map*, %struct.udf_part_map** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %18, i64 %20
  store %struct.udf_part_map* %21, %struct.udf_part_map** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %55, %4
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.udf_part_map*, %struct.udf_part_map** %10, align 8
  %28 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %8, align 8
  %34 = sub nsw i64 %33, 3
  %35 = icmp sge i64 %32, %34
  br label %36

36:                                               ; preds = %31, %25
  %37 = phi i1 [ false, %25 ], [ %35, %31 ]
  br i1 %37, label %38, label %58

38:                                               ; preds = %36
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.udf_part_map*, %struct.udf_part_map** %10, align 8
  %41 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = call %struct.inode* @udf_iget_special(%struct.super_block* %45, %struct.kernel_lb_addr* %12)
  store %struct.inode* %46, %struct.inode** %13, align 8
  %47 = load %struct.inode*, %struct.inode** %13, align 8
  %48 = call i32 @IS_ERR(%struct.inode* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %38
  %51 = load %struct.inode*, %struct.inode** %13, align 8
  %52 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %53 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %52, i32 0, i32 0
  store %struct.inode* %51, %struct.inode** %53, align 8
  br label %58

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %11, align 8
  br label %25

58:                                               ; preds = %50, %36
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @udf_iget_special(%struct.super_block*, %struct.kernel_lb_addr*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
