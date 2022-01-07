; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_enable_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_enable_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i64, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WCD_CLK_MCLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Error enabling MCLK, clk_type: %d\0A\00", align 1
@WCD9335_ANA_CLK_TOP = common dso_local global i32 0, align 4
@WCD9335_ANA_CLK_EXT_CLKBUF_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_ANA_CLK_EXT_CLKBUF_ENABLE = common dso_local global i32 0, align 4
@WCD9335_ANA_CLK_MCLK_SRC_MASK = common dso_local global i32 0, align 4
@WCD9335_ANA_CLK_MCLK_SRC_EXTERNAL = common dso_local global i32 0, align 4
@WCD9335_ANA_CLK_MCLK_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_ANA_CLK_MCLK_ENABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_CLK_RST_CTRL_FS_CNT_CONTROL = common dso_local global i32 0, align 4
@WCD9335_CDC_CLK_RST_CTRL_FS_CNT_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_CLK_RST_CTRL_FS_CNT_ENABLE = common dso_local global i32 0, align 4
@WCD9335_CDC_CLK_RST_CTRL_MCLK_CONTROL = common dso_local global i32 0, align 4
@WCD9335_CDC_CLK_RST_CTRL_MCLK_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_CDC_CLK_RST_CTRL_MCLK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcd9335_codec*)* @wcd9335_enable_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_enable_mclk(%struct.wcd9335_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcd9335_codec*, align 8
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %3, align 8
  %4 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %5 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sle i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %90

11:                                               ; preds = %1
  %12 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %13 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %18 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WCD_CLK_MCLK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %24 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %29 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WCD_CLK_MCLK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27, %16
  %34 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %35 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %38 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %90

43:                                               ; preds = %27, %22
  %44 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %45 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %86

49:                                               ; preds = %43
  %50 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %51 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @WCD9335_ANA_CLK_TOP, align 4
  %54 = load i32, i32* @WCD9335_ANA_CLK_EXT_CLKBUF_EN_MASK, align 4
  %55 = load i32, i32* @WCD9335_ANA_CLK_EXT_CLKBUF_ENABLE, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %58 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @WCD9335_ANA_CLK_TOP, align 4
  %61 = load i32, i32* @WCD9335_ANA_CLK_MCLK_SRC_MASK, align 4
  %62 = load i32, i32* @WCD9335_ANA_CLK_MCLK_SRC_EXTERNAL, align 4
  %63 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %65 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @WCD9335_ANA_CLK_TOP, align 4
  %68 = load i32, i32* @WCD9335_ANA_CLK_MCLK_EN_MASK, align 4
  %69 = load i32, i32* @WCD9335_ANA_CLK_MCLK_ENABLE, align 4
  %70 = call i32 @regmap_update_bits(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %72 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WCD9335_CDC_CLK_RST_CTRL_FS_CNT_CONTROL, align 4
  %75 = load i32, i32* @WCD9335_CDC_CLK_RST_CTRL_FS_CNT_EN_MASK, align 4
  %76 = load i32, i32* @WCD9335_CDC_CLK_RST_CTRL_FS_CNT_ENABLE, align 4
  %77 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %79 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @WCD9335_CDC_CLK_RST_CTRL_MCLK_CONTROL, align 4
  %82 = load i32, i32* @WCD9335_CDC_CLK_RST_CTRL_MCLK_EN_MASK, align 4
  %83 = load i32, i32* @WCD9335_CDC_CLK_RST_CTRL_MCLK_ENABLE, align 4
  %84 = call i32 @regmap_update_bits(i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = call i32 @usleep_range(i32 10, i32 15)
  br label %86

86:                                               ; preds = %49, %43
  %87 = load i64, i64* @WCD_CLK_MCLK, align 8
  %88 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %89 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %33, %8
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
