; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_parse_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_parse_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_dir = type { i64, %struct.orangefs_dir_part* }
%struct.orangefs_dir_part = type { %struct.orangefs_dir_part*, i64 }
%struct.orangefs_kernel_op_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@PART_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orangefs_dir*, %struct.orangefs_kernel_op_s*)* @parse_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_readdir(%struct.orangefs_dir* %0, %struct.orangefs_kernel_op_s* %1) #0 {
  %3 = alloca %struct.orangefs_dir*, align 8
  %4 = alloca %struct.orangefs_kernel_op_s*, align 8
  %5 = alloca %struct.orangefs_dir_part*, align 8
  %6 = alloca %struct.orangefs_dir_part*, align 8
  %7 = alloca i64, align 8
  store %struct.orangefs_dir* %0, %struct.orangefs_dir** %3, align 8
  store %struct.orangefs_kernel_op_s* %1, %struct.orangefs_kernel_op_s** %4, align 8
  store i64 1, i64* %7, align 8
  %8 = load %struct.orangefs_dir*, %struct.orangefs_dir** %3, align 8
  %9 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %8, i32 0, i32 1
  %10 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %9, align 8
  store %struct.orangefs_dir_part* %10, %struct.orangefs_dir_part** %5, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %5, align 8
  %13 = icmp ne %struct.orangefs_dir_part* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %7, align 8
  %17 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %5, align 8
  %18 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %17, i32 0, i32 0
  %19 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %18, align 8
  %20 = icmp ne %struct.orangefs_dir_part* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %5, align 8
  %23 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %22, i32 0, i32 0
  %24 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %23, align 8
  store %struct.orangefs_dir_part* %24, %struct.orangefs_dir_part** %5, align 8
  br label %26

25:                                               ; preds = %14
  br label %27

26:                                               ; preds = %21
  br label %11

27:                                               ; preds = %25, %11
  %28 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %29 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.orangefs_dir_part*
  store %struct.orangefs_dir_part* %33, %struct.orangefs_dir_part** %6, align 8
  %34 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %6, align 8
  %35 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %34, i32 0, i32 0
  store %struct.orangefs_dir_part* null, %struct.orangefs_dir_part** %35, align 8
  %36 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %4, align 8
  %37 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, 4
  %41 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %6, align 8
  %42 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.orangefs_dir*, %struct.orangefs_dir** %3, align 8
  %44 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %43, i32 0, i32 1
  %45 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %44, align 8
  %46 = icmp ne %struct.orangefs_dir_part* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %27
  %48 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %6, align 8
  %49 = load %struct.orangefs_dir*, %struct.orangefs_dir** %3, align 8
  %50 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %49, i32 0, i32 1
  store %struct.orangefs_dir_part* %48, %struct.orangefs_dir_part** %50, align 8
  br label %55

51:                                               ; preds = %27
  %52 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %6, align 8
  %53 = load %struct.orangefs_dir_part*, %struct.orangefs_dir_part** %5, align 8
  %54 = getelementptr inbounds %struct.orangefs_dir_part, %struct.orangefs_dir_part* %53, i32 0, i32 0
  store %struct.orangefs_dir_part* %52, %struct.orangefs_dir_part** %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @PART_SHIFT, align 8
  %60 = shl i64 %58, %59
  %61 = load %struct.orangefs_dir*, %struct.orangefs_dir** %3, align 8
  %62 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
