; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_sel_asrc_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_sel_asrc_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@RT5670_CLK_SEL_SYS3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RT5670_DA_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5670_DA_STO_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5670_DA_STO_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5670_DA_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5670_DA_MONOL_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5670_DA_MONOL_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5670_DA_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5670_DA_MONOR_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5670_DA_MONOR_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5670_AD_STEREO_FILTER = common dso_local global i32 0, align 4
@RT5670_AD_STO1_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5670_AD_STO1_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5670_AD_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5670_AD_MONOL_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5670_AD_MONOL_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5670_AD_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5670_AD_MONOR_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5670_AD_MONOR_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5670_UP_RATE_FILTER = common dso_local global i32 0, align 4
@RT5670_UP_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5670_UP_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5670_DOWN_RATE_FILTER = common dso_local global i32 0, align 4
@RT5670_DOWN_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5670_DOWN_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5670_ASRC_2 = common dso_local global i32 0, align 4
@RT5670_ASRC_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5670_sel_asrc_clk_src(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RT5670_CLK_SEL_SYS3, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %173

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @RT5670_DA_STEREO_FILTER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* @RT5670_DA_STO_CLK_SEL_MASK, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @RT5670_DA_STO_CLK_SEL_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @RT5670_DA_STO_CLK_SEL_SFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %30, %33
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %23, %18
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @RT5670_DA_MONO_L_FILTER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i32, i32* @RT5670_DA_MONOL_CLK_SEL_MASK, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @RT5670_DA_MONOL_CLK_SEL_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @RT5670_DA_MONOL_CLK_SEL_SFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %40, %35
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @RT5670_DA_MONO_R_FILTER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load i32, i32* @RT5670_DA_MONOR_CLK_SEL_MASK, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @RT5670_DA_MONOR_CLK_SEL_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @RT5670_DA_MONOR_CLK_SEL_SFT, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %64, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %57, %52
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @RT5670_AD_STEREO_FILTER, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i32, i32* @RT5670_AD_STO1_CLK_SEL_MASK, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @RT5670_AD_STO1_CLK_SEL_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @RT5670_AD_STO1_CLK_SEL_SFT, align 4
  %84 = shl i32 %82, %83
  %85 = or i32 %81, %84
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %74, %69
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @RT5670_AD_MONO_L_FILTER, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i32, i32* @RT5670_AD_MONOL_CLK_SEL_MASK, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @RT5670_AD_MONOL_CLK_SEL_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @RT5670_AD_MONOL_CLK_SEL_SFT, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %91, %86
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @RT5670_AD_MONO_R_FILTER, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = load i32, i32* @RT5670_AD_MONOR_CLK_SEL_MASK, align 4
  %110 = load i32, i32* %10, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @RT5670_AD_MONOR_CLK_SEL_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @RT5670_AD_MONOR_CLK_SEL_SFT, align 4
  %118 = shl i32 %116, %117
  %119 = or i32 %115, %118
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %108, %103
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @RT5670_UP_RATE_FILTER, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = load i32, i32* @RT5670_UP_CLK_SEL_MASK, align 4
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @RT5670_UP_CLK_SEL_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @RT5670_UP_CLK_SEL_SFT, align 4
  %135 = shl i32 %133, %134
  %136 = or i32 %132, %135
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %125, %120
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @RT5670_DOWN_RATE_FILTER, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load i32, i32* @RT5670_DOWN_CLK_SEL_MASK, align 4
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @RT5670_DOWN_CLK_SEL_MASK, align 4
  %148 = xor i32 %147, -1
  %149 = and i32 %146, %148
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @RT5670_DOWN_CLK_SEL_SFT, align 4
  %152 = shl i32 %150, %151
  %153 = or i32 %149, %152
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %142, %137
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %159 = load i32, i32* @RT5670_ASRC_2, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %158, i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %157, %154
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %168 = load i32, i32* @RT5670_ASRC_3, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %167, i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %166, %163
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %172, %15
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
