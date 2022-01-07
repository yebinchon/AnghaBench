; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_find_anchor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_find_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_sb_info = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@UDF_FLAG_VARCONV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.kernel_lb_addr*)* @udf_find_anchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_find_anchor(%struct.super_block* %0, %struct.kernel_lb_addr* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.kernel_lb_addr*, align 8
  %5 = alloca %struct.udf_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.kernel_lb_addr* %1, %struct.kernel_lb_addr** %4, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %8)
  store %struct.udf_sb_info* %9, %struct.udf_sb_info** %5, align 8
  %10 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %4, align 8
  %15 = call i32 @udf_scan_anchors(%struct.super_block* %13, i32* %6, %struct.kernel_lb_addr* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = load i32, i32* @UDF_FLAG_VARCONV, align 4
  %24 = call i32 @UDF_SET_FLAG(%struct.super_block* %22, i32 %23)
  %25 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @udf_variable_to_fixed(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %4, align 8
  %31 = call i32 @udf_scan_anchors(%struct.super_block* %29, i32* %6, %struct.kernel_lb_addr* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %51

37:                                               ; preds = %21
  %38 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %39 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.super_block*, %struct.super_block** %3, align 8
  %42 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %4, align 8
  %43 = call i32 @udf_scan_anchors(%struct.super_block* %41, i32* %6, %struct.kernel_lb_addr* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.super_block*, %struct.super_block** %3, align 8
  %48 = load i32, i32* @UDF_FLAG_VARCONV, align 4
  %49 = call i32 @UDF_CLEAR_FLAG(%struct.super_block* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %37
  br label %51

51:                                               ; preds = %50, %36, %20
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.udf_sb_info*, %struct.udf_sb_info** %5, align 8
  %57 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_scan_anchors(%struct.super_block*, i32*, %struct.kernel_lb_addr*) #1

declare dso_local i32 @UDF_SET_FLAG(%struct.super_block*, i32) #1

declare dso_local i32 @udf_variable_to_fixed(i32) #1

declare dso_local i32 @UDF_CLEAR_FLAG(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
