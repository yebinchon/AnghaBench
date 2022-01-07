; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mtk_hp_spk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_mtk_hp_spk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6358_priv = type { i32*, i32 }

@MT6358_AUDDEC_ANA_CON4 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON2 = common dso_local global i32 0, align 4
@MT6358_ZCD_CON2 = common dso_local global i32 0, align 4
@DL_GAIN_N_10DB_REG = common dso_local global i32 0, align 4
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
@MT6358_AUDDEC_ANA_CON9 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON10 = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON1 = common dso_local global i32 0, align 4
@MT6358_ZCD_CON1 = common dso_local global i32 0, align 4
@DL_GAIN_N_40DB_REG = common dso_local global i32 0, align 4
@DL_GAIN_N_10DB = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_HPOUTL = common dso_local global i64 0, align 8
@MT6358_AUDDEC_ANA_CON7 = common dso_local global i32 0, align 4
@RG_AUDLOLGAIN_MASK_SFT = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_LINEOUTL = common dso_local global i64 0, align 8
@RG_AUDLOLGAIN_SFT = common dso_local global i32 0, align 4
@RG_AUDLORGAIN_MASK_SFT = common dso_local global i32 0, align 4
@AUDIO_ANALOG_VOLUME_LINEOUTR = common dso_local global i64 0, align 8
@RG_AUDLORGAIN_SFT = common dso_local global i32 0, align 4
@MT6358_AUDDEC_ANA_CON13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt6358_priv*)* @mtk_hp_spk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hp_spk_enable(%struct.mt6358_priv* %0) #0 {
  %2 = alloca %struct.mt6358_priv*, align 8
  store %struct.mt6358_priv* %0, %struct.mt6358_priv** %2, align 8
  %3 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %4 = call i32 @hp_pull_down(%struct.mt6358_priv* %3, i32 1)
  %5 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MT6358_AUDDEC_ANA_CON4, align 4
  %9 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 64, i32 64)
  %10 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MT6358_AUDDEC_ANA_CON2, align 4
  %14 = call i32 @regmap_write(i32 %12, i32 %13, i32 16384)
  %15 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MT6358_ZCD_CON2, align 4
  %19 = load i32, i32* @DL_GAIN_N_10DB_REG, align 4
  %20 = call i32 @regmap_write(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %22 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON1, align 4
  %25 = call i32 @regmap_write(i32 %23, i32 %24, i32 1)
  %26 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %27 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON2, align 4
  %30 = call i32 @regmap_write(i32 %28, i32 %29, i32 44)
  %31 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %32 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON0, align 4
  %35 = call i32 @regmap_write(i32 %33, i32 %34, i32 1)
  %36 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %37 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON4, align 4
  %40 = call i32 @regmap_write(i32 %38, i32 %39, i32 3)
  %41 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %42 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MT6358_AUDNCP_CLKDIV_CON3, align 4
  %45 = call i32 @regmap_write(i32 %43, i32 %44, i32 0)
  %46 = call i32 @usleep_range(i32 250, i32 270)
  %47 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %48 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MT6358_AUDDEC_ANA_CON14, align 4
  %51 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 4181, i32 4181)
  %52 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %53 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MT6358_AUDDEC_ANA_CON15, align 4
  %56 = call i32 @regmap_write(i32 %54, i32 %55, i32 1)
  %57 = call i32 @usleep_range(i32 100, i32 120)
  %58 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %59 = call i32 @hp_zcd_disable(%struct.mt6358_priv* %58)
  %60 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %61 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %64 = call i32 @regmap_write(i32 %62, i32 %63, i32 12288)
  %65 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %66 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MT6358_AUDDEC_ANA_CON12, align 4
  %69 = call i32 @regmap_write(i32 %67, i32 %68, i32 85)
  %70 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %71 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MT6358_AUDDEC_ANA_CON11, align 4
  %74 = call i32 @regmap_write(i32 %72, i32 %73, i32 18688)
  %75 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %76 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MT6358_AUDDEC_ANA_CON12, align 4
  %79 = call i32 @regmap_write(i32 %77, i32 %78, i32 85)
  %80 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %81 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MT6358_AUDDEC_ANA_CON2, align 4
  %84 = call i32 @regmap_write(i32 %82, i32 %83, i32 16435)
  %85 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %86 = call i32 @hp_pull_down(%struct.mt6358_priv* %85, i32 0)
  %87 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %88 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %91 = call i32 @regmap_write(i32 %89, i32 %90, i32 12480)
  %92 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %93 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %96 = call i32 @regmap_write(i32 %94, i32 %95, i32 12528)
  %97 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %98 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %101 = call i32 @regmap_write(i32 %99, i32 %100, i32 512)
  %102 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %103 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MT6358_AUDDEC_ANA_CON10, align 4
  %106 = call i32 @regmap_write(i32 %104, i32 %105, i32 0)
  %107 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %108 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @MT6358_AUDDEC_ANA_CON1, align 4
  %111 = call i32 @regmap_write(i32 %109, i32 %110, i32 3)
  %112 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %113 = call i32 @hp_main_output_ramp(%struct.mt6358_priv* %112, i32 1)
  %114 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %115 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MT6358_ZCD_CON1, align 4
  %118 = load i32, i32* @DL_GAIN_N_40DB_REG, align 4
  %119 = call i32 @regmap_write(i32 %116, i32 %117, i32 %118)
  %120 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %121 = load i32, i32* @DL_GAIN_N_10DB, align 4
  %122 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %123 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @AUDIO_ANALOG_VOLUME_HPOUTL, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @headset_volume_ramp(%struct.mt6358_priv* %120, i32 %121, i32 %127)
  %129 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %130 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @MT6358_AUDDEC_ANA_CON7, align 4
  %133 = call i32 @regmap_write(i32 %131, i32 %132, i32 272)
  %134 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %135 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @MT6358_AUDDEC_ANA_CON7, align 4
  %138 = call i32 @regmap_write(i32 %136, i32 %137, i32 274)
  %139 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %140 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MT6358_AUDDEC_ANA_CON7, align 4
  %143 = call i32 @regmap_write(i32 %141, i32 %142, i32 275)
  %144 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %145 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @MT6358_ZCD_CON1, align 4
  %148 = load i32, i32* @RG_AUDLOLGAIN_MASK_SFT, align 4
  %149 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %150 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @AUDIO_ANALOG_VOLUME_LINEOUTL, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @RG_AUDLOLGAIN_SFT, align 4
  %156 = shl i32 %154, %155
  %157 = call i32 @regmap_update_bits(i32 %146, i32 %147, i32 %148, i32 %156)
  %158 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %159 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @MT6358_ZCD_CON1, align 4
  %162 = load i32, i32* @RG_AUDLORGAIN_MASK_SFT, align 4
  %163 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %164 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @AUDIO_ANALOG_VOLUME_LINEOUTR, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @RG_AUDLORGAIN_SFT, align 4
  %170 = shl i32 %168, %169
  %171 = call i32 @regmap_update_bits(i32 %160, i32 %161, i32 %162, i32 %170)
  %172 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %173 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @MT6358_AUDDEC_ANA_CON13, align 4
  %176 = call i32 @regmap_update_bits(i32 %174, i32 %175, i32 1, i32 1)
  %177 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %178 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %181 = call i32 @regmap_write(i32 %179, i32 %180, i32 12537)
  %182 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %183 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @MT6358_AUDDEC_ANA_CON9, align 4
  %186 = call i32 @regmap_write(i32 %184, i32 %185, i32 513)
  %187 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %188 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @MT6358_AUDDEC_ANA_CON7, align 4
  %191 = call i32 @regmap_write(i32 %189, i32 %190, i32 283)
  %192 = load %struct.mt6358_priv*, %struct.mt6358_priv** %2, align 8
  %193 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @MT6358_AUDDEC_ANA_CON0, align 4
  %196 = call i32 @regmap_write(i32 %194, i32 %195, i32 13817)
  ret i32 0
}

declare dso_local i32 @hp_pull_down(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hp_zcd_disable(%struct.mt6358_priv*) #1

declare dso_local i32 @hp_main_output_ramp(%struct.mt6358_priv*, i32) #1

declare dso_local i32 @headset_volume_ramp(%struct.mt6358_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
