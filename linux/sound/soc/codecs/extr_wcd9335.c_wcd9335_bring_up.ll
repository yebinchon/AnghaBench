; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_bring_up.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_bring_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@WCD9335_CHIP_TIER_CTRL_EFUSE_VAL_OUT0 = common dso_local global i32 0, align 4
@WCD9335_CHIP_TIER_CTRL_CHIP_ID_BYTE0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"WCD9335 CODEC version detection fail!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WCD9335 CODEC version is v2.0\0A\00", align 1
@WCD9335_VERSION_2_0 = common dso_local global i32 0, align 4
@WCD9335_CODEC_RPM_RST_CTL = common dso_local global i32 0, align 4
@WCD9335_SIDO_SIDO_TEST_2 = common dso_local global i32 0, align 4
@WCD9335_SIDO_SIDO_CCL_8 = common dso_local global i32 0, align 4
@WCD9335_BIAS_VBG_FINE_ADJ = common dso_local global i32 0, align 4
@WCD9335_CODEC_RPM_PWR_CDC_DIG_HM_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"WCD9335 CODEC version not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcd9335_codec*)* @wcd9335_bring_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_bring_up(%struct.wcd9335_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcd9335_codec*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %3, align 8
  %7 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %8 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %7, i32 0, i32 2
  %9 = load %struct.regmap*, %struct.regmap** %8, align 8
  store %struct.regmap* %9, %struct.regmap** %4, align 8
  %10 = load %struct.regmap*, %struct.regmap** %4, align 8
  %11 = load i32, i32* @WCD9335_CHIP_TIER_CTRL_EFUSE_VAL_OUT0, align 4
  %12 = call i32 @regmap_read(%struct.regmap* %10, i32 %11, i32* %5)
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = load i32, i32* @WCD9335_CHIP_TIER_CTRL_CHIP_ID_BYTE0, align 4
  %15 = call i32 @regmap_read(%struct.regmap* %13, i32 %14, i32* %6)
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18, %1
  %22 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %23 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %71

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %33 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_info(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @WCD9335_VERSION_2_0, align 4
  %37 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %38 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.regmap*, %struct.regmap** %4, align 8
  %40 = load i32, i32* @WCD9335_CODEC_RPM_RST_CTL, align 4
  %41 = call i32 @regmap_write(%struct.regmap* %39, i32 %40, i32 1)
  %42 = load %struct.regmap*, %struct.regmap** %4, align 8
  %43 = load i32, i32* @WCD9335_SIDO_SIDO_TEST_2, align 4
  %44 = call i32 @regmap_write(%struct.regmap* %42, i32 %43, i32 0)
  %45 = load %struct.regmap*, %struct.regmap** %4, align 8
  %46 = load i32, i32* @WCD9335_SIDO_SIDO_CCL_8, align 4
  %47 = call i32 @regmap_write(%struct.regmap* %45, i32 %46, i32 111)
  %48 = load %struct.regmap*, %struct.regmap** %4, align 8
  %49 = load i32, i32* @WCD9335_BIAS_VBG_FINE_ADJ, align 4
  %50 = call i32 @regmap_write(%struct.regmap* %48, i32 %49, i32 101)
  %51 = load %struct.regmap*, %struct.regmap** %4, align 8
  %52 = load i32, i32* @WCD9335_CODEC_RPM_PWR_CDC_DIG_HM_CTL, align 4
  %53 = call i32 @regmap_write(%struct.regmap* %51, i32 %52, i32 5)
  %54 = load %struct.regmap*, %struct.regmap** %4, align 8
  %55 = load i32, i32* @WCD9335_CODEC_RPM_PWR_CDC_DIG_HM_CTL, align 4
  %56 = call i32 @regmap_write(%struct.regmap* %54, i32 %55, i32 7)
  %57 = load %struct.regmap*, %struct.regmap** %4, align 8
  %58 = load i32, i32* @WCD9335_CODEC_RPM_PWR_CDC_DIG_HM_CTL, align 4
  %59 = call i32 @regmap_write(%struct.regmap* %57, i32 %58, i32 3)
  %60 = load %struct.regmap*, %struct.regmap** %4, align 8
  %61 = load i32, i32* @WCD9335_CODEC_RPM_RST_CTL, align 4
  %62 = call i32 @regmap_write(%struct.regmap* %60, i32 %61, i32 3)
  br label %70

63:                                               ; preds = %28
  %64 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %65 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %63, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
