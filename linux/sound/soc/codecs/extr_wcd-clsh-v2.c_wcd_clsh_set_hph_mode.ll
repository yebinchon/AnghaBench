; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd-clsh-v2.c_wcd_clsh_set_hph_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd-clsh-v2.c_wcd_clsh_set_hph_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_50MA = common dso_local global i32 0, align 4
@WCD9XXX_CLASSH_CTRL_VCL_VREF_FILT_R_0KOHM = common dso_local global i32 0, align 4
@WCD9XXX_CLASSH_CTRL_VCL_VREF_FILT_R_50KOHM = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_HPH_PWR_LEVEL_NORMAL = common dso_local global i32 0, align 4
@DAC_GAIN_0DB = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_HPH_PWR_LEVEL_UHQA = common dso_local global i32 0, align 4
@DAC_GAIN_M0P2DB = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_HPH_PWR_LEVEL_LP = common dso_local global i32 0, align 4
@WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_30MA = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_HPH = common dso_local global i32 0, align 4
@WCD9XXX_A_ANA_HPH_PWR_LEVEL_MASK = common dso_local global i32 0, align 4
@WCD9XXX_CLASSH_CTRL_VCL_2 = common dso_local global i32 0, align 4
@WCD9XXX_CLASSH_CTRL_VCL_2_VREF_FILT_1_MASK = common dso_local global i32 0, align 4
@WCD9XXX_HPH_REFBUFF_UHQA_CTL = common dso_local global i32 0, align 4
@WCD9XXX_HPH_REFBUFF_UHQA_GAIN_MASK = common dso_local global i32 0, align 4
@WCD9XXX_CLASSH_CTRL_CCL_1 = common dso_local global i32 0, align 4
@WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wcd_clsh_set_hph_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd_clsh_set_hph_mode(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_50MA, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @WCD9XXX_CLASSH_CTRL_VCL_VREF_FILT_R_0KOHM, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %28 [
    i32 128, label %12
    i32 131, label %17
    i32 130, label %21
    i32 129, label %25
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @WCD9XXX_CLASSH_CTRL_VCL_VREF_FILT_R_50KOHM, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @WCD9XXX_A_ANA_HPH_PWR_LEVEL_NORMAL, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @DAC_GAIN_0DB, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_50MA, align 4
  store i32 %16, i32* %8, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load i32, i32* @WCD9XXX_A_ANA_HPH_PWR_LEVEL_NORMAL, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @DAC_GAIN_0DB, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_50MA, align 4
  store i32 %20, i32* %8, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @WCD9XXX_A_ANA_HPH_PWR_LEVEL_UHQA, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @DAC_GAIN_M0P2DB, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_50MA, align 4
  store i32 %24, i32* %8, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @WCD9XXX_A_ANA_HPH_PWR_LEVEL_LP, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_30MA, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %2, %25, %21, %17, %12
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = load i32, i32* @WCD9XXX_A_ANA_HPH, align 4
  %31 = load i32, i32* @WCD9XXX_A_ANA_HPH_PWR_LEVEL_MASK, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = load i32, i32* @WCD9XXX_CLASSH_CTRL_VCL_2, align 4
  %36 = load i32, i32* @WCD9XXX_CLASSH_CTRL_VCL_2_VREF_FILT_1_MASK, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 129
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %43 = load i32, i32* @WCD9XXX_HPH_REFBUFF_UHQA_CTL, align 4
  %44 = load i32, i32* @WCD9XXX_HPH_REFBUFF_UHQA_GAIN_MASK, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %28
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @WCD9XXX_CLASSH_CTRL_CCL_1, align 4
  %50 = load i32, i32* @WCD9XXX_CLASSH_CTRL_CCL_1_DELTA_IPEAK_MASK, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %48, i32 %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
