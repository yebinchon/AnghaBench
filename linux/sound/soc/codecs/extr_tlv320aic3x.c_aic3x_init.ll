; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.aic3x_priv = type { i32, i32 }

@AIC3X_PAGE_SELECT = common dso_local global i32 0, align 4
@PAGE0_SELECT = common dso_local global i32 0, align 4
@AIC3X_RESET = common dso_local global i32 0, align 4
@SOFT_RESET = common dso_local global i32 0, align 4
@LDAC_VOL = common dso_local global i32 0, align 4
@DEFAULT_VOL = common dso_local global i32 0, align 4
@MUTE_ON = common dso_local global i32 0, align 4
@RDAC_VOL = common dso_local global i32 0, align 4
@DACL1_2_HPLOUT_VOL = common dso_local global i32 0, align 4
@ROUTE_ON = common dso_local global i32 0, align 4
@DACR1_2_HPROUT_VOL = common dso_local global i32 0, align 4
@DACL1_2_HPLCOM_VOL = common dso_local global i32 0, align 4
@DACR1_2_HPRCOM_VOL = common dso_local global i32 0, align 4
@DACL1_2_LLOPM_VOL = common dso_local global i32 0, align 4
@DACR1_2_RLOPM_VOL = common dso_local global i32 0, align 4
@LLOPM_CTRL = common dso_local global i32 0, align 4
@UNMUTE = common dso_local global i32 0, align 4
@RLOPM_CTRL = common dso_local global i32 0, align 4
@HPLOUT_CTRL = common dso_local global i32 0, align 4
@HPROUT_CTRL = common dso_local global i32 0, align 4
@HPLCOM_CTRL = common dso_local global i32 0, align 4
@HPRCOM_CTRL = common dso_local global i32 0, align 4
@LADC_VOL = common dso_local global i32 0, align 4
@DEFAULT_GAIN = common dso_local global i32 0, align 4
@RADC_VOL = common dso_local global i32 0, align 4
@LINE1L_2_LADC_CTRL = common dso_local global i32 0, align 4
@LINE1R_2_RADC_CTRL = common dso_local global i32 0, align 4
@PGAL_2_HPLOUT_VOL = common dso_local global i32 0, align 4
@PGAR_2_HPROUT_VOL = common dso_local global i32 0, align 4
@PGAL_2_HPLCOM_VOL = common dso_local global i32 0, align 4
@PGAR_2_HPRCOM_VOL = common dso_local global i32 0, align 4
@PGAL_2_LLOPM_VOL = common dso_local global i32 0, align 4
@PGAR_2_RLOPM_VOL = common dso_local global i32 0, align 4
@AIC3X_MODEL_3104 = common dso_local global i32 0, align 4
@LINE2L_2_HPLOUT_VOL = common dso_local global i32 0, align 4
@LINE2R_2_HPROUT_VOL = common dso_local global i32 0, align 4
@LINE2L_2_HPLCOM_VOL = common dso_local global i32 0, align 4
@LINE2R_2_HPRCOM_VOL = common dso_local global i32 0, align 4
@LINE2L_2_LLOPM_VOL = common dso_local global i32 0, align 4
@LINE2R_2_RLOPM_VOL = common dso_local global i32 0, align 4
@CLASSD_CTRL = common dso_local global i32 0, align 4
@HPOUT_SC = common dso_local global i32 0, align 4
@HPOUT_SC_OCMV_MASK = common dso_local global i32 0, align 4
@HPOUT_SC_OCMV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @aic3x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_init(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.aic3x_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.aic3x_priv* %5, %struct.aic3x_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load i32, i32* @AIC3X_PAGE_SELECT, align 4
  %8 = load i32, i32* @PAGE0_SELECT, align 4
  %9 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %6, i32 %7, i32 %8)
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = load i32, i32* @AIC3X_RESET, align 4
  %12 = load i32, i32* @SOFT_RESET, align 4
  %13 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %10, i32 %11, i32 %12)
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %15 = load i32, i32* @LDAC_VOL, align 4
  %16 = load i32, i32* @DEFAULT_VOL, align 4
  %17 = load i32, i32* @MUTE_ON, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %14, i32 %15, i32 %18)
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %21 = load i32, i32* @RDAC_VOL, align 4
  %22 = load i32, i32* @DEFAULT_VOL, align 4
  %23 = load i32, i32* @MUTE_ON, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @DACL1_2_HPLOUT_VOL, align 4
  %28 = load i32, i32* @DEFAULT_VOL, align 4
  %29 = load i32, i32* @ROUTE_ON, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %26, i32 %27, i32 %30)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %33 = load i32, i32* @DACR1_2_HPROUT_VOL, align 4
  %34 = load i32, i32* @DEFAULT_VOL, align 4
  %35 = load i32, i32* @ROUTE_ON, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %32, i32 %33, i32 %36)
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %39 = load i32, i32* @DACL1_2_HPLCOM_VOL, align 4
  %40 = load i32, i32* @DEFAULT_VOL, align 4
  %41 = load i32, i32* @ROUTE_ON, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %45 = load i32, i32* @DACR1_2_HPRCOM_VOL, align 4
  %46 = load i32, i32* @DEFAULT_VOL, align 4
  %47 = load i32, i32* @ROUTE_ON, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %44, i32 %45, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %51 = load i32, i32* @DACL1_2_LLOPM_VOL, align 4
  %52 = load i32, i32* @DEFAULT_VOL, align 4
  %53 = load i32, i32* @ROUTE_ON, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %50, i32 %51, i32 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %57 = load i32, i32* @DACR1_2_RLOPM_VOL, align 4
  %58 = load i32, i32* @DEFAULT_VOL, align 4
  %59 = load i32, i32* @ROUTE_ON, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %56, i32 %57, i32 %60)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %63 = load i32, i32* @LLOPM_CTRL, align 4
  %64 = load i32, i32* @UNMUTE, align 4
  %65 = load i32, i32* @UNMUTE, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %68 = load i32, i32* @RLOPM_CTRL, align 4
  %69 = load i32, i32* @UNMUTE, align 4
  %70 = load i32, i32* @UNMUTE, align 4
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %73 = load i32, i32* @HPLOUT_CTRL, align 4
  %74 = load i32, i32* @UNMUTE, align 4
  %75 = load i32, i32* @UNMUTE, align 4
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %78 = load i32, i32* @HPROUT_CTRL, align 4
  %79 = load i32, i32* @UNMUTE, align 4
  %80 = load i32, i32* @UNMUTE, align 4
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %83 = load i32, i32* @HPLCOM_CTRL, align 4
  %84 = load i32, i32* @UNMUTE, align 4
  %85 = load i32, i32* @UNMUTE, align 4
  %86 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %88 = load i32, i32* @HPRCOM_CTRL, align 4
  %89 = load i32, i32* @UNMUTE, align 4
  %90 = load i32, i32* @UNMUTE, align 4
  %91 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %93 = load i32, i32* @LADC_VOL, align 4
  %94 = load i32, i32* @DEFAULT_GAIN, align 4
  %95 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %92, i32 %93, i32 %94)
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %97 = load i32, i32* @RADC_VOL, align 4
  %98 = load i32, i32* @DEFAULT_GAIN, align 4
  %99 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %96, i32 %97, i32 %98)
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %101 = load i32, i32* @LINE1L_2_LADC_CTRL, align 4
  %102 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %100, i32 %101, i32 0)
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %104 = load i32, i32* @LINE1R_2_RADC_CTRL, align 4
  %105 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %103, i32 %104, i32 0)
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %107 = load i32, i32* @PGAL_2_HPLOUT_VOL, align 4
  %108 = load i32, i32* @DEFAULT_VOL, align 4
  %109 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %106, i32 %107, i32 %108)
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %111 = load i32, i32* @PGAR_2_HPROUT_VOL, align 4
  %112 = load i32, i32* @DEFAULT_VOL, align 4
  %113 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %110, i32 %111, i32 %112)
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %115 = load i32, i32* @PGAL_2_HPLCOM_VOL, align 4
  %116 = load i32, i32* @DEFAULT_VOL, align 4
  %117 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %114, i32 %115, i32 %116)
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %119 = load i32, i32* @PGAR_2_HPRCOM_VOL, align 4
  %120 = load i32, i32* @DEFAULT_VOL, align 4
  %121 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %118, i32 %119, i32 %120)
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %123 = load i32, i32* @PGAL_2_LLOPM_VOL, align 4
  %124 = load i32, i32* @DEFAULT_VOL, align 4
  %125 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %122, i32 %123, i32 %124)
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %127 = load i32, i32* @PGAR_2_RLOPM_VOL, align 4
  %128 = load i32, i32* @DEFAULT_VOL, align 4
  %129 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %126, i32 %127, i32 %128)
  %130 = load %struct.aic3x_priv*, %struct.aic3x_priv** %3, align 8
  %131 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @AIC3X_MODEL_3104, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %160

135:                                              ; preds = %1
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %137 = load i32, i32* @LINE2L_2_HPLOUT_VOL, align 4
  %138 = load i32, i32* @DEFAULT_VOL, align 4
  %139 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %136, i32 %137, i32 %138)
  %140 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %141 = load i32, i32* @LINE2R_2_HPROUT_VOL, align 4
  %142 = load i32, i32* @DEFAULT_VOL, align 4
  %143 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %140, i32 %141, i32 %142)
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %145 = load i32, i32* @LINE2L_2_HPLCOM_VOL, align 4
  %146 = load i32, i32* @DEFAULT_VOL, align 4
  %147 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %144, i32 %145, i32 %146)
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %149 = load i32, i32* @LINE2R_2_HPRCOM_VOL, align 4
  %150 = load i32, i32* @DEFAULT_VOL, align 4
  %151 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %148, i32 %149, i32 %150)
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %153 = load i32, i32* @LINE2L_2_LLOPM_VOL, align 4
  %154 = load i32, i32* @DEFAULT_VOL, align 4
  %155 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %152, i32 %153, i32 %154)
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %157 = load i32, i32* @LINE2R_2_RLOPM_VOL, align 4
  %158 = load i32, i32* @DEFAULT_VOL, align 4
  %159 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %135, %1
  %161 = load %struct.aic3x_priv*, %struct.aic3x_priv** %3, align 8
  %162 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  switch i32 %163, label %171 [
    i32 128, label %164
    i32 129, label %164
    i32 130, label %167
  ]

164:                                              ; preds = %160, %160
  %165 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %166 = call i32 @aic3x_mono_init(%struct.snd_soc_component* %165)
  br label %171

167:                                              ; preds = %160
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %169 = load i32, i32* @CLASSD_CTRL, align 4
  %170 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %168, i32 %169, i32 0)
  br label %171

171:                                              ; preds = %160, %167, %164
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %173 = load i32, i32* @HPOUT_SC, align 4
  %174 = load i32, i32* @HPOUT_SC_OCMV_MASK, align 4
  %175 = load %struct.aic3x_priv*, %struct.aic3x_priv** %3, align 8
  %176 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @HPOUT_SC_OCMV_SHIFT, align 4
  %179 = shl i32 %177, %178
  %180 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %172, i32 %173, i32 %174, i32 %179)
  ret i32 0
}

declare dso_local %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @aic3x_mono_init(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
