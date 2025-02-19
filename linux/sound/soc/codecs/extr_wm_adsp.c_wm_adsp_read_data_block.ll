; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_read_data_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_read_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wm_adsp_region*, i32)* }
%struct.wm_adsp_region = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*, i32, i32, i32, i32*)* @wm_adsp_read_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp_read_data_block(%struct.wm_adsp* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm_adsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.wm_adsp_region*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.wm_adsp*, %struct.wm_adsp** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp* %16, i32 %17)
  store %struct.wm_adsp_region* %18, %struct.wm_adsp_region** %12, align 8
  %19 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %12, align 8
  %20 = icmp ne %struct.wm_adsp_region* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %68

24:                                               ; preds = %5
  %25 = load %struct.wm_adsp*, %struct.wm_adsp** %7, align 8
  %26 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.wm_adsp_region*, i32)*, i32 (%struct.wm_adsp_region*, i32)** %28, align 8
  %30 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 %29(%struct.wm_adsp_region* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.wm_adsp*, %struct.wm_adsp** %7, align 8
  %34 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @regmap_raw_read(i32 %35, i32 %36, i32* %37, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %6, align 4
  br label %68

47:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %13, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = and i32 %58, 16777215
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %13, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %48

67:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %45, %21
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp*, i32) #1

declare dso_local i32 @regmap_raw_read(i32, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
