; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_mclk_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_mclk_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, %struct.mt2701_afe_private* }
%struct.mt2701_afe_private = type { i32*, %struct.mt2701_i2s_path* }
%struct.mt2701_i2s_path = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MT2701_PLL_DOMAIN_0_RATE = common dso_local global i32 0, align 4
@MT2701_TOP_AUD_MCLK_SRC0 = common dso_local global i64 0, align 8
@MT2701_PLL_DOMAIN_1_RATE = common dso_local global i32 0, align 4
@MT2701_TOP_AUD_MCLK_SRC1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to set mclk source\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to set mclk divider %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt2701_mclk_configuration(%struct.mtk_base_afe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_base_afe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt2701_afe_private*, align 8
  %7 = alloca %struct.mt2701_i2s_path*, align 8
  %8 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %9, i32 0, i32 1
  %11 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %10, align 8
  store %struct.mt2701_afe_private* %11, %struct.mt2701_afe_private** %6, align 8
  %12 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %6, align 8
  %13 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %12, i32 0, i32 1
  %14 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %14, i64 %16
  store %struct.mt2701_i2s_path* %17, %struct.mt2701_i2s_path** %7, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @MT2701_PLL_DOMAIN_0_RATE, align 4
  %21 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %7, align 8
  %22 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %2
  %27 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %7, align 8
  %28 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %6, align 8
  %31 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @MT2701_TOP_AUD_MCLK_SRC0, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_set_parent(i32 %29, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %56

37:                                               ; preds = %2
  %38 = load i32, i32* @MT2701_PLL_DOMAIN_1_RATE, align 4
  %39 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %7, align 8
  %40 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = srem i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %37
  %45 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %7, align 8
  %46 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %6, align 8
  %49 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @MT2701_TOP_AUD_MCLK_SRC1, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_set_parent(i32 %47, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %44, %37
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %61 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %83

65:                                               ; preds = %56
  %66 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %7, align 8
  %67 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %7, align 8
  %70 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clk_set_rate(i32 %68, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %4, align 8
  %77 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %75, %59
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
