; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_out_pga_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_out_pga_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32* }

@WM8904_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8904_DCS_ENA_CHAN_0 = common dso_local global i32 0, align 4
@WM8904_DCS_ENA_CHAN_1 = common dso_local global i32 0, align 4
@WM8904_DC_SERVO_8 = common dso_local global i32 0, align 4
@WM8904_DC_SERVO_9 = common dso_local global i32 0, align 4
@WM8904_POWER_MANAGEMENT_3 = common dso_local global i32 0, align 4
@WM8904_DCS_ENA_CHAN_2 = common dso_local global i32 0, align 4
@WM8904_DCS_ENA_CHAN_3 = common dso_local global i32 0, align 4
@WM8904_DC_SERVO_6 = common dso_local global i32 0, align 4
@WM8904_DC_SERVO_7 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Invalid reg %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8904_HPL_PGA_ENA = common dso_local global i32 0, align 4
@WM8904_HPR_PGA_ENA = common dso_local global i32 0, align 4
@WM8904_HPL_ENA = common dso_local global i32 0, align 4
@WM8904_HPR_ENA = common dso_local global i32 0, align 4
@WM8904_HPL_ENA_DLY = common dso_local global i32 0, align 4
@WM8904_HPR_ENA_DLY = common dso_local global i32 0, align 4
@WM8904_DC_SERVO_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Restoring DC servo state\0A\00", align 1
@WM8904_DC_SERVO_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Calibrating DC servo\0A\00", align 1
@WM8904_DCS_TRIG_STARTUP_0_SHIFT = common dso_local global i32 0, align 4
@WM8904_DCS_CAL_COMPLETE_SHIFT = common dso_local global i32 0, align 4
@WM8904_DC_SERVO_READBACK_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"DC servo timed out\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"DC servo ready\0A\00", align 1
@WM8904_HPL_ENA_OUTP = common dso_local global i32 0, align 4
@WM8904_HPR_ENA_OUTP = common dso_local global i32 0, align 4
@WM8904_HPL_RMV_SHORT = common dso_local global i32 0, align 4
@WM8904_HPR_RMV_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @out_pga_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @out_pga_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8904_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %21)
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %8, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %24 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.wm8904_priv* %24, %struct.wm8904_priv** %9, align 8
  %25 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %43 [
    i32 129, label %29
    i32 128, label %36
  ]

29:                                               ; preds = %3
  %30 = load i32, i32* @WM8904_POWER_MANAGEMENT_2, align 4
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* @WM8904_DCS_ENA_CHAN_0, align 4
  %32 = load i32, i32* @WM8904_DCS_ENA_CHAN_1, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @WM8904_DC_SERVO_8, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* @WM8904_DC_SERVO_9, align 4
  store i32 %35, i32* %15, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %48

36:                                               ; preds = %3
  %37 = load i32, i32* @WM8904_POWER_MANAGEMENT_3, align 4
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* @WM8904_DCS_ENA_CHAN_2, align 4
  %39 = load i32, i32* @WM8904_DCS_ENA_CHAN_3, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @WM8904_DC_SERVO_6, align 4
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* @WM8904_DC_SERVO_7, align 4
  store i32 %42, i32* %15, align 4
  store i32 2, i32* %13, align 4
  store i32 3, i32* %14, align 4
  br label %48

43:                                               ; preds = %3
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %250

48:                                               ; preds = %36, %29
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %249 [
    i32 130, label %50
    i32 132, label %187
    i32 131, label %197
    i32 133, label %204
  ]

50:                                               ; preds = %48
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @WM8904_HPL_PGA_ENA, align 4
  %54 = load i32, i32* @WM8904_HPR_PGA_ENA, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @WM8904_HPL_PGA_ENA, align 4
  %57 = load i32, i32* @WM8904_HPR_PGA_ENA, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @WM8904_HPL_ENA, align 4
  %63 = load i32, i32* @WM8904_HPR_ENA, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @WM8904_HPL_ENA, align 4
  %66 = load i32, i32* @WM8904_HPR_ENA, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %64, i32 %67)
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @WM8904_HPL_ENA_DLY, align 4
  %72 = load i32, i32* @WM8904_HPR_ENA_DLY, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @WM8904_HPL_ENA_DLY, align 4
  %75 = load i32, i32* @WM8904_HPR_ENA_DLY, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %69, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %79 = load i32, i32* @WM8904_DC_SERVO_0, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %84 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %50
  %92 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %93 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %91, %50
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %102 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_dbg(i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %108 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %105, i32 %106, i32 %113)
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %118 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %115, i32 %116, i32 %123)
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %126 = load i32, i32* @WM8904_DC_SERVO_1, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %125, i32 %126, i32 %127)
  store i32 20, i32* %17, align 4
  br label %140

129:                                              ; preds = %91
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %131 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dev_dbg(i32 %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %135 = load i32, i32* @WM8904_DC_SERVO_1, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @WM8904_DCS_TRIG_STARTUP_0_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %134, i32 %135, i32 %138)
  store i32 500, i32* %17, align 4
  br label %140

140:                                              ; preds = %129, %100
  %141 = load i32, i32* @WM8904_DCS_CAL_COMPLETE_SHIFT, align 4
  %142 = load i32, i32* %12, align 4
  %143 = shl i32 %142, %141
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %157, %140
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %146 = load i32, i32* @WM8904_DC_SERVO_READBACK_0, align 4
  %147 = call i8* @snd_soc_component_read32(%struct.snd_soc_component* %145, i32 %146)
  %148 = ptrtoint i8* %147 to i32
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* %12, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %161

155:                                              ; preds = %144
  %156 = call i32 @msleep(i32 1)
  br label %157

157:                                              ; preds = %155
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %17, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %144, label %161

161:                                              ; preds = %157, %154
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %12, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %169 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dev_warn(i32 %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %177

172:                                              ; preds = %161
  %173 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %174 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @dev_dbg(i32 %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @WM8904_HPL_ENA_OUTP, align 4
  %181 = load i32, i32* @WM8904_HPR_ENA_OUTP, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @WM8904_HPL_ENA_OUTP, align 4
  %184 = load i32, i32* @WM8904_HPR_ENA_OUTP, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %178, i32 %179, i32 %182, i32 %185)
  br label %249

187:                                              ; preds = %48
  %188 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @WM8904_HPL_RMV_SHORT, align 4
  %191 = load i32, i32* @WM8904_HPR_RMV_SHORT, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @WM8904_HPL_RMV_SHORT, align 4
  %194 = load i32, i32* @WM8904_HPR_RMV_SHORT, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %188, i32 %189, i32 %192, i32 %195)
  br label %249

197:                                              ; preds = %48
  %198 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @WM8904_HPL_RMV_SHORT, align 4
  %201 = load i32, i32* @WM8904_HPR_RMV_SHORT, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %198, i32 %199, i32 %202, i32 0)
  br label %249

204:                                              ; preds = %48
  %205 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %206 = load i32, i32* %15, align 4
  %207 = call i8* @snd_soc_component_read32(%struct.snd_soc_component* %205, i32 %206)
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %210 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  store i32 %208, i32* %214, align 4
  %215 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %216 = load i32, i32* %16, align 4
  %217 = call i8* @snd_soc_component_read32(%struct.snd_soc_component* %215, i32 %216)
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.wm8904_priv*, %struct.wm8904_priv** %9, align 8
  %220 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %218, i32* %224, align 4
  %225 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %226 = load i32, i32* @WM8904_DC_SERVO_0, align 4
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %225, i32 %226, i32 %227, i32 0)
  %229 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @WM8904_HPL_ENA, align 4
  %232 = load i32, i32* @WM8904_HPR_ENA, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @WM8904_HPL_ENA_DLY, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @WM8904_HPR_ENA_DLY, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @WM8904_HPL_ENA_OUTP, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @WM8904_HPR_ENA_OUTP, align 4
  %241 = or i32 %239, %240
  %242 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %229, i32 %230, i32 %241, i32 0)
  %243 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* @WM8904_HPL_PGA_ENA, align 4
  %246 = load i32, i32* @WM8904_HPR_PGA_ENA, align 4
  %247 = or i32 %245, %246
  %248 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %243, i32 %244, i32 %247, i32 0)
  br label %249

249:                                              ; preds = %48, %204, %197, %187, %177
  store i32 0, i32* %4, align 4
  br label %250

250:                                              ; preds = %249, %43
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i8* @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
