; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_enable_master_bias.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_enable_master_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i32, i32 }

@WCD9335_ANA_BIAS = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_ENABLE = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_PRECHRG_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_PRECHRG_ENABLE = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_PRECHRG_DISABLE = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_PRECHRG_CTL_MODE = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_PRECHRG_CTL_MODE_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcd9335_codec*)* @wcd9335_enable_master_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_enable_master_bias(%struct.wcd9335_codec* %0) #0 {
  %2 = alloca %struct.wcd9335_codec*, align 8
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %2, align 8
  %3 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %2, align 8
  %4 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %2, align 8
  %8 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %2, align 8
  %13 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WCD9335_ANA_BIAS, align 4
  %16 = load i32, i32* @WCD9335_ANA_BIAS_EN_MASK, align 4
  %17 = load i32, i32* @WCD9335_ANA_BIAS_ENABLE, align 4
  %18 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %2, align 8
  %20 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WCD9335_ANA_BIAS, align 4
  %23 = load i32, i32* @WCD9335_ANA_BIAS_PRECHRG_EN_MASK, align 4
  %24 = load i32, i32* @WCD9335_ANA_BIAS_PRECHRG_ENABLE, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = call i32 @usleep_range(i32 1000, i32 1100)
  %27 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %2, align 8
  %28 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WCD9335_ANA_BIAS, align 4
  %31 = load i32, i32* @WCD9335_ANA_BIAS_PRECHRG_EN_MASK, align 4
  %32 = load i32, i32* @WCD9335_ANA_BIAS_PRECHRG_DISABLE, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %2, align 8
  %35 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @WCD9335_ANA_BIAS, align 4
  %38 = load i32, i32* @WCD9335_ANA_BIAS_PRECHRG_CTL_MODE, align 4
  %39 = load i32, i32* @WCD9335_ANA_BIAS_PRECHRG_CTL_MODE_MANUAL, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %11, %1
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
