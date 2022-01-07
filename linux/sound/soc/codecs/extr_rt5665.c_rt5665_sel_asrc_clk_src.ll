; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_sel_asrc_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_sel_asrc_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT5665_DA_STEREO1_FILTER = common dso_local global i32 0, align 4
@RT5665_DA_STO1_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5665_DA_STO1_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_DA_STEREO2_FILTER = common dso_local global i32 0, align 4
@RT5665_DA_STO2_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5665_DA_STO2_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_DA_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5665_DA_MONOL_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5665_DA_MONOL_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_DA_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5665_DA_MONOR_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5665_DA_MONOR_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_AD_STEREO1_FILTER = common dso_local global i32 0, align 4
@RT5665_AD_STO1_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5665_AD_STO1_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_AD_STEREO2_FILTER = common dso_local global i32 0, align 4
@RT5665_AD_STO2_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5665_AD_STO2_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_AD_MONO_L_FILTER = common dso_local global i32 0, align 4
@RT5665_AD_MONOL_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5665_AD_MONOL_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_AD_MONO_R_FILTER = common dso_local global i32 0, align 4
@RT5665_AD_MONOR_CLK_SEL_MASK = common dso_local global i32 0, align 4
@RT5665_AD_MONOR_CLK_SEL_SFT = common dso_local global i32 0, align 4
@RT5665_ASRC_2 = common dso_local global i32 0, align 4
@RT5665_ASRC_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5665_sel_asrc_clk_src(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
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
  switch i32 %12, label %14 [
    i32 131, label %13
    i32 134, label %13
    i32 133, label %13
    i32 132, label %13
    i32 130, label %13
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  br label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %172

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RT5665_DA_STEREO1_FILTER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i32, i32* @RT5665_DA_STO1_CLK_SEL_MASK, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @RT5665_DA_STO1_CLK_SEL_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RT5665_DA_STO1_CLK_SEL_SFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %22, %17
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @RT5665_DA_STEREO2_FILTER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* @RT5665_DA_STO2_CLK_SEL_MASK, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @RT5665_DA_STO2_CLK_SEL_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @RT5665_DA_STO2_CLK_SEL_SFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %39, %34
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @RT5665_DA_MONO_L_FILTER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i32, i32* @RT5665_DA_MONOL_CLK_SEL_MASK, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @RT5665_DA_MONOL_CLK_SEL_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @RT5665_DA_MONOL_CLK_SEL_SFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %63, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %56, %51
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @RT5665_DA_MONO_R_FILTER, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load i32, i32* @RT5665_DA_MONOR_CLK_SEL_MASK, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @RT5665_DA_MONOR_CLK_SEL_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @RT5665_DA_MONOR_CLK_SEL_SFT, align 4
  %83 = shl i32 %81, %82
  %84 = or i32 %80, %83
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %73, %68
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @RT5665_AD_STEREO1_FILTER, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load i32, i32* @RT5665_AD_STO1_CLK_SEL_MASK, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @RT5665_AD_STO1_CLK_SEL_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @RT5665_AD_STO1_CLK_SEL_SFT, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %97, %100
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %90, %85
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @RT5665_AD_STEREO2_FILTER, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load i32, i32* @RT5665_AD_STO2_CLK_SEL_MASK, align 4
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @RT5665_AD_STO2_CLK_SEL_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @RT5665_AD_STO2_CLK_SEL_SFT, align 4
  %117 = shl i32 %115, %116
  %118 = or i32 %114, %117
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %107, %102
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @RT5665_AD_MONO_L_FILTER, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load i32, i32* @RT5665_AD_MONOL_CLK_SEL_MASK, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @RT5665_AD_MONOL_CLK_SEL_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @RT5665_AD_MONOL_CLK_SEL_SFT, align 4
  %134 = shl i32 %132, %133
  %135 = or i32 %131, %134
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %124, %119
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @RT5665_AD_MONO_R_FILTER, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load i32, i32* @RT5665_AD_MONOR_CLK_SEL_MASK, align 4
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @RT5665_AD_MONOR_CLK_SEL_MASK, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @RT5665_AD_MONOR_CLK_SEL_SFT, align 4
  %151 = shl i32 %149, %150
  %152 = or i32 %148, %151
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %141, %136
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %158 = load i32, i32* @RT5665_ASRC_2, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %157, i32 %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %156, %153
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %167 = load i32, i32* @RT5665_ASRC_3, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %166, i32 %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %165, %162
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %171, %14
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
