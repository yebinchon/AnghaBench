; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta32x.c_sta32x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sta32x_priv = type { i32*, i32, i32, %struct.sta32x_platform_data*, i32, i64, %struct.snd_soc_component* }
%struct.sta32x_platform_data = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to enable clock: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to startup device\0A\00", align 1
@STA32X_CONFA_TWAB = common dso_local global i32 0, align 4
@STA32X_CONFA_TWRB = common dso_local global i32 0, align 4
@STA32X_CONFA_FDRB = common dso_local global i32 0, align 4
@STA32X_CONFA = common dso_local global i32 0, align 4
@STA32X_CONFC = common dso_local global i32 0, align 4
@STA32X_CONFC_CSZ_MASK = common dso_local global i32 0, align 4
@STA32X_CONFC_CSZ_SHIFT = common dso_local global i32 0, align 4
@STA32X_CONFE = common dso_local global i32 0, align 4
@STA32X_CONFE_MPCV = common dso_local global i32 0, align 4
@STA32X_CONFE_MPC = common dso_local global i32 0, align 4
@STA32X_CONFE_AME = common dso_local global i32 0, align 4
@STA32X_CONFE_PWMS = common dso_local global i32 0, align 4
@STA32X_CONFF = common dso_local global i32 0, align 4
@STA32X_CONFF_IDE = common dso_local global i32 0, align 4
@STA32X_CONFF_OCFG_MASK = common dso_local global i32 0, align 4
@STA32X_CONFF_OCFG_SHIFT = common dso_local global i32 0, align 4
@STA32X_C1CFG = common dso_local global i32 0, align 4
@STA32X_CxCFG_OM_MASK = common dso_local global i32 0, align 4
@STA32X_CxCFG_OM_SHIFT = common dso_local global i32 0, align 4
@STA32X_C2CFG = common dso_local global i32 0, align 4
@STA32X_C3CFG = common dso_local global i32 0, align 4
@sta32x_watchdog = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @sta32x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta32x_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.sta32x_priv*, align 8
  %5 = alloca %struct.sta32x_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.sta32x_priv* %10, %struct.sta32x_priv** %4, align 8
  %11 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %12 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %11, i32 0, i32 3
  %13 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %12, align 8
  store %struct.sta32x_platform_data* %13, %struct.sta32x_platform_data** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %16 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %15, i32 0, i32 6
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %16, align 8
  %17 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %18 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %23 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @clk_prepare_enable(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %305

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %38 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %42 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @regulator_bulk_enable(i32 %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %305

54:                                               ; preds = %36
  %55 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %56 = call i32 @sta32x_startup_sequence(%struct.sta32x_priv* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %305

65:                                               ; preds = %54
  %66 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %67 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @STA32X_CONFA_TWAB, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %76 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @STA32X_CONFA_TWRB, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %85 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @STA32X_CONFA_FDRB, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %94 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @STA32X_CONFA, align 4
  %97 = load i32, i32* @STA32X_CONFA_TWAB, align 4
  %98 = load i32, i32* @STA32X_CONFA_TWRB, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @STA32X_CONFA_FDRB, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %101, i32 %102)
  %104 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %105 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @STA32X_CONFC, align 4
  %108 = load i32, i32* @STA32X_CONFC_CSZ_MASK, align 4
  %109 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %110 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @STA32X_CONFC_CSZ_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = call i32 @regmap_update_bits(i32 %106, i32 %107, i32 %108, i32 %113)
  %115 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %116 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @STA32X_CONFE, align 4
  %119 = load i32, i32* @STA32X_CONFE_MPCV, align 4
  %120 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %121 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %120, i32 0, i32 10
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %92
  %125 = load i32, i32* @STA32X_CONFE_MPCV, align 4
  br label %127

126:                                              ; preds = %92
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ]
  %129 = call i32 @regmap_update_bits(i32 %117, i32 %118, i32 %119, i32 %128)
  %130 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %131 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @STA32X_CONFE, align 4
  %134 = load i32, i32* @STA32X_CONFE_MPC, align 4
  %135 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %136 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %135, i32 0, i32 9
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = load i32, i32* @STA32X_CONFE_MPC, align 4
  br label %142

141:                                              ; preds = %127
  br label %142

142:                                              ; preds = %141, %139
  %143 = phi i32 [ %140, %139 ], [ 0, %141 ]
  %144 = call i32 @regmap_update_bits(i32 %132, i32 %133, i32 %134, i32 %143)
  %145 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %146 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @STA32X_CONFE, align 4
  %149 = load i32, i32* @STA32X_CONFE_AME, align 4
  %150 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %151 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %150, i32 0, i32 8
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %142
  %155 = load i32, i32* @STA32X_CONFE_AME, align 4
  br label %157

156:                                              ; preds = %142
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i32 [ %155, %154 ], [ 0, %156 ]
  %159 = call i32 @regmap_update_bits(i32 %147, i32 %148, i32 %149, i32 %158)
  %160 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %161 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @STA32X_CONFE, align 4
  %164 = load i32, i32* @STA32X_CONFE_PWMS, align 4
  %165 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %166 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %165, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %157
  %170 = load i32, i32* @STA32X_CONFE_PWMS, align 4
  br label %172

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171, %169
  %173 = phi i32 [ %170, %169 ], [ 0, %171 ]
  %174 = call i32 @regmap_update_bits(i32 %162, i32 %163, i32 %164, i32 %173)
  %175 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %176 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @STA32X_CONFF, align 4
  %179 = load i32, i32* @STA32X_CONFF_IDE, align 4
  %180 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %181 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %172
  %185 = load i32, i32* @STA32X_CONFF_IDE, align 4
  br label %187

186:                                              ; preds = %172
  br label %187

187:                                              ; preds = %186, %184
  %188 = phi i32 [ %185, %184 ], [ 0, %186 ]
  %189 = call i32 @regmap_update_bits(i32 %177, i32 %178, i32 %179, i32 %188)
  %190 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %191 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @STA32X_CONFF, align 4
  %194 = load i32, i32* @STA32X_CONFF_OCFG_MASK, align 4
  %195 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %196 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @STA32X_CONFF_OCFG_SHIFT, align 4
  %199 = shl i32 %197, %198
  %200 = call i32 @regmap_update_bits(i32 %192, i32 %193, i32 %194, i32 %199)
  %201 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %202 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @STA32X_C1CFG, align 4
  %205 = load i32, i32* @STA32X_CxCFG_OM_MASK, align 4
  %206 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %207 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @STA32X_CxCFG_OM_SHIFT, align 4
  %210 = shl i32 %208, %209
  %211 = call i32 @regmap_update_bits(i32 %203, i32 %204, i32 %205, i32 %210)
  %212 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %213 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @STA32X_C2CFG, align 4
  %216 = load i32, i32* @STA32X_CxCFG_OM_MASK, align 4
  %217 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %218 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @STA32X_CxCFG_OM_SHIFT, align 4
  %221 = shl i32 %219, %220
  %222 = call i32 @regmap_update_bits(i32 %214, i32 %215, i32 %216, i32 %221)
  %223 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %224 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @STA32X_C3CFG, align 4
  %227 = load i32, i32* @STA32X_CxCFG_OM_MASK, align 4
  %228 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %5, align 8
  %229 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @STA32X_CxCFG_OM_SHIFT, align 4
  %232 = shl i32 %230, %231
  %233 = call i32 @regmap_update_bits(i32 %225, i32 %226, i32 %227, i32 %232)
  store i32 4, i32* %6, align 4
  br label %234

234:                                              ; preds = %244, %187
  %235 = load i32, i32* %6, align 4
  %236 = icmp sle i32 %235, 49
  br i1 %236, label %237, label %247

237:                                              ; preds = %234
  %238 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %239 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 4194304, i32* %243, align 4
  br label %244

244:                                              ; preds = %237
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, 5
  store i32 %246, i32* %6, align 4
  br label %234

247:                                              ; preds = %234
  store i32 50, i32* %6, align 4
  br label %248

248:                                              ; preds = %258, %247
  %249 = load i32, i32* %6, align 4
  %250 = icmp sle i32 %249, 54
  br i1 %250, label %251, label %261

251:                                              ; preds = %248
  %252 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %253 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 8388607, i32* %257, align 4
  br label %258

258:                                              ; preds = %251
  %259 = load i32, i32* %6, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %6, align 4
  br label %248

261:                                              ; preds = %248
  %262 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %263 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 55
  store i32 5938679, i32* %265, align 4
  %266 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %267 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 56
  store i32 8388607, i32* %269, align 4
  %270 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %271 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 59
  store i32 8388607, i32* %273, align 4
  %274 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %275 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 60
  store i32 4194304, i32* %277, align 4
  %278 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %279 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 61
  store i32 4194304, i32* %281, align 4
  %282 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %283 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %282, i32 0, i32 3
  %284 = load %struct.sta32x_platform_data*, %struct.sta32x_platform_data** %283, align 8
  %285 = getelementptr inbounds %struct.sta32x_platform_data, %struct.sta32x_platform_data* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %261
  %289 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %290 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %289, i32 0, i32 2
  %291 = load i32, i32* @sta32x_watchdog, align 4
  %292 = call i32 @INIT_DELAYED_WORK(i32* %290, i32 %291)
  br label %293

293:                                              ; preds = %288, %261
  %294 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %295 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %296 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %294, i32 %295)
  %297 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %298 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @ARRAY_SIZE(i32 %299)
  %301 = load %struct.sta32x_priv*, %struct.sta32x_priv** %4, align 8
  %302 = getelementptr inbounds %struct.sta32x_priv, %struct.sta32x_priv* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @regulator_bulk_disable(i32 %300, i32 %303)
  store i32 0, i32* %2, align 4
  br label %305

305:                                              ; preds = %293, %59, %47, %28
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

declare dso_local %struct.sta32x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sta32x_startup_sequence(%struct.sta32x_priv*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
