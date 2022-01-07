; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_dsp_start_vss.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8958-dsp2.c_wm8958_dsp_start_vss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i64, i64, i64, i64*, i64*, i64*, i64*, i64, %struct.wm8994* }
%struct.wm8994 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wm8958_vss_hpf_cfg*, i64, %struct.wm8958_vss_cfg*, i64, %struct.wm8958_mbc_cfg*, i64 }
%struct.wm8958_vss_hpf_cfg = type { i32* }
%struct.wm8958_vss_cfg = type { i32* }
%struct.wm8958_mbc_cfg = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"MBC+VSS\00", align 1
@WM8958_DSP2_PROGRAM = common dso_local global i32 0, align 4
@WM8958_DSP2_ENA = common dso_local global i32 0, align 4
@WM8958_DSP2_EXECCONTROL = common dso_local global i32 0, align 4
@WM8958_DSP2_RUNR = common dso_local global i32 0, align 4
@WM8958_DSP2_CONFIG = common dso_local global i32 0, align 4
@WM8958_MBC_SEL_MASK = common dso_local global i32 0, align 4
@WM8958_MBC_ENA = common dso_local global i32 0, align 4
@WM8958_MBC_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wm8958_dsp_start_vss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8958_dsp_start_vss(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8994_priv*, align 8
  %6 = alloca %struct.wm8994*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wm8958_mbc_cfg*, align 8
  %10 = alloca %struct.wm8958_vss_cfg*, align 8
  %11 = alloca %struct.wm8958_vss_hpf_cfg*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.wm8994_priv* %13, %struct.wm8994_priv** %5, align 8
  %14 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %15 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %14, i32 0, i32 8
  %16 = load %struct.wm8994*, %struct.wm8994** %15, align 8
  store %struct.wm8994* %16, %struct.wm8994** %6, align 8
  %17 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %18 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %24 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @wm8958_dsp2_fw(%struct.snd_soc_component* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %25, i32 0)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = load i32, i32* @WM8958_DSP2_PROGRAM, align 4
  %30 = load i32, i32* @WM8958_DSP2_ENA, align 4
  %31 = load i32, i32* @WM8958_DSP2_ENA, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %34 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %27
  %39 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %40 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load %struct.wm8958_mbc_cfg*, %struct.wm8958_mbc_cfg** %41, align 8
  %43 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %44 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.wm8958_mbc_cfg, %struct.wm8958_mbc_cfg* %42, i64 %45
  store %struct.wm8958_mbc_cfg* %46, %struct.wm8958_mbc_cfg** %9, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %66, %38
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.wm8958_mbc_cfg*, %struct.wm8958_mbc_cfg** %9, align 8
  %50 = getelementptr inbounds %struct.wm8958_mbc_cfg, %struct.wm8958_mbc_cfg* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ARRAY_SIZE(i32* %51)
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 10240
  %58 = load %struct.wm8958_mbc_cfg*, %struct.wm8958_mbc_cfg** %9, align 8
  %59 = getelementptr inbounds %struct.wm8958_mbc_cfg, %struct.wm8958_mbc_cfg* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 %57, i32 %64)
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %47

69:                                               ; preds = %47
  br label %70

70:                                               ; preds = %69, %27
  %71 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %72 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %70
  %77 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %78 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load %struct.wm8958_vss_cfg*, %struct.wm8958_vss_cfg** %79, align 8
  %81 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %82 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.wm8958_vss_cfg, %struct.wm8958_vss_cfg* %80, i64 %83
  store %struct.wm8958_vss_cfg* %84, %struct.wm8958_vss_cfg** %10, align 8
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %104, %76
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.wm8958_vss_cfg*, %struct.wm8958_vss_cfg** %10, align 8
  %88 = getelementptr inbounds %struct.wm8958_vss_cfg, %struct.wm8958_vss_cfg* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @ARRAY_SIZE(i32* %89)
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %85
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 9728
  %96 = load %struct.wm8958_vss_cfg*, %struct.wm8958_vss_cfg** %10, align 8
  %97 = getelementptr inbounds %struct.wm8958_vss_cfg, %struct.wm8958_vss_cfg* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %93, i32 %95, i32 %102)
  br label %104

104:                                              ; preds = %92
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %85

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107, %70
  %109 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %110 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %108
  %115 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %116 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load %struct.wm8958_vss_hpf_cfg*, %struct.wm8958_vss_hpf_cfg** %117, align 8
  %119 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %120 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.wm8958_vss_hpf_cfg, %struct.wm8958_vss_hpf_cfg* %118, i64 %121
  store %struct.wm8958_vss_hpf_cfg* %122, %struct.wm8958_vss_hpf_cfg** %11, align 8
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %142, %114
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.wm8958_vss_hpf_cfg*, %struct.wm8958_vss_hpf_cfg** %11, align 8
  %126 = getelementptr inbounds %struct.wm8958_vss_hpf_cfg, %struct.wm8958_vss_hpf_cfg* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @ARRAY_SIZE(i32* %127)
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %123
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 9216
  %134 = load %struct.wm8958_vss_hpf_cfg*, %struct.wm8958_vss_hpf_cfg** %11, align 8
  %135 = getelementptr inbounds %struct.wm8958_vss_hpf_cfg, %struct.wm8958_vss_hpf_cfg* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %131, i32 %133, i32 %140)
  br label %142

142:                                              ; preds = %130
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %123

145:                                              ; preds = %123
  br label %146

146:                                              ; preds = %145, %108
  %147 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %148 = load i32, i32* @WM8958_DSP2_EXECCONTROL, align 4
  %149 = load i32, i32* @WM8958_DSP2_RUNR, align 4
  %150 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %147, i32 %148, i32 %149)
  store i32 0, i32* %8, align 4
  %151 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %152 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %151, i32 0, i32 6
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %146
  %160 = load i32, i32* %8, align 4
  %161 = or i32 %160, 8
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %159, %146
  %163 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %164 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %163, i32 0, i32 5
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %162
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, 4
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %171, %162
  %175 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %176 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %175, i32 0, i32 4
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %174
  %184 = load i32, i32* %8, align 4
  %185 = or i32 %184, 2
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %183, %174
  %187 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %188 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %187, i32 0, i32 3
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %186
  %196 = load i32, i32* %8, align 4
  %197 = or i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %195, %186
  %199 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %199, i32 8705, i32 %200)
  %202 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %203 = load i32, i32* @WM8958_DSP2_CONFIG, align 4
  %204 = load i32, i32* @WM8958_MBC_SEL_MASK, align 4
  %205 = load i32, i32* @WM8958_MBC_ENA, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* @WM8958_MBC_SEL_SHIFT, align 4
  %209 = shl i32 %207, %208
  %210 = load i32, i32* @WM8958_MBC_ENA, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %202, i32 %203, i32 %206, i32 %211)
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8958_dsp2_fw(%struct.snd_soc_component*, i8*, i64, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
