; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mtk_hp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mtk_hp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6358_priv = type { i32, i32* }

@MT6358_AUDDEC_ANA_CON4 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON2 = common dso_local global i32 0, align 4
@MT6358_ZCD_CON2 = common dso_local global i32 0, align 4
@DL_GAIN_N_40DB_REG = common dso_local global i32 0, align 4
@MT6358_AUDNCP_CLKDIV_CON1 = common dso_local global i32 0, align 4
@MT6358_AUDNCP_CLKDIV_CON2 = common dso_local global i32 0, align 4
@MT6358_AUDNCP_CLKDIV_CON0 = common dso_local global i32 0, align 4
@MT6358_AUDNCP_CLKDIV_CON4 = common dso_local global i32 0, align 4
@MT6358_AUDNCP_CLKDIV_CON3 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON14 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON15 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON0 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON12 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON11 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON1 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON9 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON10 = common dso_local global i32 0, align 4
@DL_GAIN_N_10DB = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_HPOUTL = common dso_local global i64 0, align 8
@MT6358_AUDDEC_ANA_CON13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt6358_priv*)* @mtk_hp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hp_enable(%struct.mt6358_priv* %0) #0 {
  %2 = alloca %struct.mt6358_priv*, align 8
  store %struct.mt6358_priv* %0, %struct.mt6358_priv** %2, align 8
  %3 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %4 = call i32 @hp_pull_down(%struct.mt6358_priv* %3, i32 1)
  %5 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MT6358_AUDDEC_ANA_CON4, align 4
  %9 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 64, i32 64)
  %10 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MT6358_AUDDEC_ANA_CON2, align 4
  %14 = call i32 @regmap_write(i32 %12, i32 %13, i32 16384)
  %15 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MT6358_ZCD_CON2, align 4
  %19 = load i32, i32* @DL_GAIN_N_40DB_REG, align 4
  %20 = call i32 @regmap_write(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %22 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON1, align 4
  %25 = call i32 @regmap_write(i32 %23, i32 %24, i32 1)
  %26 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %27 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON2, align 4
  %30 = call i32 @regmap_write(i32 %28, i32 %29, i32 44)
  %31 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %32 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON0, align 4
  %35 = call i32 @regmap_write(i32 %33, i32 %34, i32 1)
  %36 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %37 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON4, align 4
  %40 = call i32 @regmap_write(i32 %38, i32 %39, i32 3)
  %41 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %42 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON3, align 4
  %45 = call i32 @regmap_write(i32 %43, i32 %44, i32 0)
  %46 = call i32 @usleep_range(i32 250, i32 270)
  %47 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %48 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MT6358_AUDDEC_ANA_CON14, align 4
  %51 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 4181, i32 4181)
  %52 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %53 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MT6358_AUDDEC_ANA_CON15, align 4
  %56 = call i32 @regmap_write(i32 %54, i32 %55, i32 1)
  %57 = call i32 @usleep_range(i32 100, i32 120)
  %58 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %59 = call i32 @hp_zcd_disable(%struct.mt6358_priv* %58)
  %60 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %61 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %64 = call i32 @regmap_write(i32 %62, i32 %63, i32 12288)
  %65 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %66 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MT6358_AUDDEC_ANA_CON12, align 4
  %69 = call i32 @regmap_write(i32 %67, i32 %68, i32 85)
  %70 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %71 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MT6358_AUDDEC_ANA_CON11, align 4
  %74 = call i32 @regmap_write(i32 %72, i32 %73, i32 18688)
  %75 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %76 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MT6358_AUDDEC_ANA_CON12, align 4
  %79 = call i32 @regmap_write(i32 %77, i32 %78, i32 85)
  %80 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %81 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MT6358_AUDDEC_ANA_CON2, align 4
  %84 = call i32 @regmap_write(i32 %82, i32 %83, i32 16435)
  %85 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %86 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %89 = call i32 @regmap_write(i32 %87, i32 %88, i32 12)
  %90 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %91 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %94 = call i32 @regmap_write(i32 %92, i32 %93, i32 60)
  %95 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %96 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %99 = call i32 @regmap_write(i32 %97, i32 %98, i32 3072)
  %100 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %101 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %104 = call i32 @regmap_write(i32 %102, i32 %103, i32 12480)
  %105 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %106 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %109 = call i32 @regmap_write(i32 %107, i32 %108, i32 12528)
  %110 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %111 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %114 = call i32 @regmap_write(i32 %112, i32 %113, i32 252)
  %115 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %116 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %119 = call i32 @regmap_write(i32 %117, i32 %118, i32 3584)
  %120 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %121 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %124 = call i32 @regmap_write(i32 %122, i32 %123, i32 512)
  %125 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %126 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @MT6358_AUDDEC_ANA_CON10, align 4
  %129 = call i32 @regmap_write(i32 %127, i32 %128, i32 0)
  %130 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %131 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %134 = call i32 @regmap_write(i32 %132, i32 %133, i32 255)
  %135 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %136 = call i32 @hp_main_output_ramp(%struct.mt6358_priv* %135, i32 1)
  %137 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %138 = call i32 @hp_aux_feedback_loop_gain_ramp(%struct.mt6358_priv* %137, i32 1)
  %139 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %140 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %143 = call i32 @regmap_write(i32 %141, i32 %142, i32 16335)
  %144 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %145 = load i32, i32* @DL_GAIN_N_10DB, align 4
  %146 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %147 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @AUDIO_ANALOG_VOLUME_HPOUTL, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @headset_volume_ramp(%struct.mt6358_priv* %144, i32 %145, i32 %151)
  %153 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %154 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %157 = call i32 @regmap_write(i32 %155, i32 %156, i32 16323)
  %158 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %159 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %162 = call i32 @regmap_write(i32 %160, i32 %161, i32 16131)
  %163 = call i32 @usleep_range(i32 100, i32 120)
  %164 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %165 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @MT6358_AUDDEC_ANA_CON13, align 4
  %168 = call i32 @regmap_update_bits(i32 %166, i32 %167, i32 1, i32 1)
  %169 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %170 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %173 = call i32 @regmap_write(i32 %171, i32 %172, i32 12543)
  %174 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %175 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %178 = call i32 @regmap_write(i32 %176, i32 %177, i32 61953)
  %179 = call i32 @usleep_range(i32 100, i32 120)
  %180 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %181 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %184 = call i32 @regmap_write(i32 %182, i32 %183, i32 13055)
  %185 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %186 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %189 = call i32 @regmap_write(i32 %187, i32 %188, i32 15103)
  %190 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %191 = call i32 @hp_pull_down(%struct.mt6358_priv* %190, i32 0)
  ret i32 0
}

declare dso_local i32 @hp_pull_down(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hp_zcd_disable(%struct.mt6358_priv*) #1

declare dso_local i32 @hp_main_output_ramp(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @hp_aux_feedback_loop_gain_ramp(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @headset_volume_ramp(%struct.mt6358_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
