; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_do_extend_final_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_do_extend_final_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.extent_position = type { i32 }
%struct.kernel_long_ad = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.extent_position*, %struct.kernel_long_ad*, i64)* @udf_do_extend_final_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_do_extend_final_block(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_long_ad* %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.extent_position*, align 8
  %7 = alloca %struct.kernel_long_ad*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.extent_position* %1, %struct.extent_position** %6, align 8
  store %struct.kernel_long_ad* %2, %struct.kernel_long_ad** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %7, align 8
  %16 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.super_block*, %struct.super_block** %9, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %17, %21
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %14, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %7, align 8
  %27 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call %struct.TYPE_2__* @UDF_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %32
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load %struct.extent_position*, %struct.extent_position** %6, align 8
  %42 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %7, align 8
  %43 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %42, i32 0, i32 1
  %44 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %7, align 8
  %45 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @udf_write_aext(%struct.inode* %40, %struct.extent_position* %41, i32* %43, i32 %46, i32 1)
  ret void
}

declare dso_local %struct.TYPE_2__* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
