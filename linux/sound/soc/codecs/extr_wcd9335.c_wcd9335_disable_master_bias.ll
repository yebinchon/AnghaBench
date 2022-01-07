; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_disable_master_bias.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_disable_master_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_EN_MASK = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_DISABLE = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_PRECHRG_CTL_MODE = common dso_local global i32 0, align 4
@WCD9335_ANA_BIAS_PRECHRG_CTL_MODE_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcd9335_codec*)* @wcd9335_disable_master_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_disable_master_bias(%struct.wcd9335_codec* %0) #0 {
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
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %13 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %17 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %11
  %21 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %22 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WCD9335_ANA_BIAS, align 4
  %25 = load i32, i32* @WCD9335_ANA_BIAS_EN_MASK, align 4
  %26 = load i32, i32* @WCD9335_ANA_BIAS_DISABLE, align 4
  %27 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %29 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @WCD9335_ANA_BIAS, align 4
  %32 = load i32, i32* @WCD9335_ANA_BIAS_PRECHRG_CTL_MODE, align 4
  %33 = load i32, i32* @WCD9335_ANA_BIAS_PRECHRG_CTL_MODE_MANUAL, align 4
  %34 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %20, %11
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
