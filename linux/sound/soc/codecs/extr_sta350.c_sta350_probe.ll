; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta350.c_sta350_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sta350.c_sta350_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sta350_priv = type { i32*, i32, i32, %struct.sta350_platform_data* }
%struct.sta350_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to startup device\0A\00", align 1
@STA350_CONFA_TWAB = common dso_local global i32 0, align 4
@STA350_CONFA_TWRB = common dso_local global i32 0, align 4
@STA350_CONFA_FDRB = common dso_local global i32 0, align 4
@STA350_CONFA = common dso_local global i32 0, align 4
@STA350_CONFC = common dso_local global i32 0, align 4
@STA350_CONFC_OM_MASK = common dso_local global i32 0, align 4
@STA350_CONFC_OM_SHIFT = common dso_local global i32 0, align 4
@STA350_CONFC_CSZ_MASK = common dso_local global i32 0, align 4
@STA350_CONFC_CSZ_SHIFT = common dso_local global i32 0, align 4
@STA350_CONFC_OCRB = common dso_local global i32 0, align 4
@STA350_CONFE = common dso_local global i32 0, align 4
@STA350_CONFE_MPCV = common dso_local global i32 0, align 4
@STA350_CONFE_MPC = common dso_local global i32 0, align 4
@STA350_CONFE_AME = common dso_local global i32 0, align 4
@STA350_CONFE_PWMS = common dso_local global i32 0, align 4
@STA350_CONFE_DCCV = common dso_local global i32 0, align 4
@STA350_CONFF = common dso_local global i32 0, align 4
@STA350_CONFF_IDE = common dso_local global i32 0, align 4
@STA350_CONFF_OCFG_MASK = common dso_local global i32 0, align 4
@STA350_CONFF_OCFG_SHIFT = common dso_local global i32 0, align 4
@STA350_C1CFG = common dso_local global i32 0, align 4
@STA350_CxCFG_OM_MASK = common dso_local global i32 0, align 4
@STA350_CxCFG_OM_SHIFT = common dso_local global i32 0, align 4
@STA350_C2CFG = common dso_local global i32 0, align 4
@STA350_C3CFG = common dso_local global i32 0, align 4
@STA350_MISC1 = common dso_local global i32 0, align 4
@STA350_MISC1_CPWMEN = common dso_local global i32 0, align 4
@STA350_MISC1_BRIDGOFF = common dso_local global i32 0, align 4
@STA350_MISC1_NSHHPEN = common dso_local global i32 0, align 4
@STA350_MISC1_RPDNEN = common dso_local global i32 0, align 4
@STA350_MISC2 = common dso_local global i32 0, align 4
@STA350_MISC2_PNDLSL_MASK = common dso_local global i32 0, align 4
@STA350_MISC2_PNDLSL_SHIFT = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @sta350_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta350_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.sta350_priv*, align 8
  %5 = alloca %struct.sta350_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %10 = call %struct.sta350_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.sta350_priv* %10, %struct.sta350_priv** %4, align 8
  %11 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %12 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %11, i32 0, i32 3
  %13 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %12, align 8
  store %struct.sta350_platform_data* %13, %struct.sta350_platform_data** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %15 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %19 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @regulator_bulk_enable(i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %382

31:                                               ; preds = %1
  %32 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %33 = call i32 @sta350_startup_sequence(%struct.sta350_priv* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %382

42:                                               ; preds = %31
  %43 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %44 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %43, i32 0, i32 20
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @STA350_CONFA_TWAB, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %53 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %52, i32 0, i32 19
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @STA350_CONFA_TWRB, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %62 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %61, i32 0, i32 18
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @STA350_CONFA_FDRB, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %71 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @STA350_CONFA, align 4
  %74 = load i32, i32* @STA350_CONFA_TWAB, align 4
  %75 = load i32, i32* @STA350_CONFA_TWRB, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @STA350_CONFA_FDRB, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %78, i32 %79)
  %81 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %82 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @STA350_CONFC, align 4
  %85 = load i32, i32* @STA350_CONFC_OM_MASK, align 4
  %86 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %87 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @STA350_CONFC_OM_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = call i32 @regmap_update_bits(i32 %83, i32 %84, i32 %85, i32 %90)
  %92 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %93 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @STA350_CONFC, align 4
  %96 = load i32, i32* @STA350_CONFC_CSZ_MASK, align 4
  %97 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %98 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @STA350_CONFC_CSZ_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %101)
  %103 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %104 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @STA350_CONFC, align 4
  %107 = load i32, i32* @STA350_CONFC_OCRB, align 4
  %108 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %109 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %108, i32 0, i32 17
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %69
  %113 = load i32, i32* @STA350_CONFC_OCRB, align 4
  br label %115

114:                                              ; preds = %69
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  %117 = call i32 @regmap_update_bits(i32 %105, i32 %106, i32 %107, i32 %116)
  %118 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %119 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @STA350_CONFE, align 4
  %122 = load i32, i32* @STA350_CONFE_MPCV, align 4
  %123 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %124 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %123, i32 0, i32 16
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %115
  %128 = load i32, i32* @STA350_CONFE_MPCV, align 4
  br label %130

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  %132 = call i32 @regmap_update_bits(i32 %120, i32 %121, i32 %122, i32 %131)
  %133 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %134 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @STA350_CONFE, align 4
  %137 = load i32, i32* @STA350_CONFE_MPC, align 4
  %138 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %139 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %138, i32 0, i32 15
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %130
  %143 = load i32, i32* @STA350_CONFE_MPC, align 4
  br label %145

144:                                              ; preds = %130
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  %147 = call i32 @regmap_update_bits(i32 %135, i32 %136, i32 %137, i32 %146)
  %148 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %149 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @STA350_CONFE, align 4
  %152 = load i32, i32* @STA350_CONFE_AME, align 4
  %153 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %154 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %153, i32 0, i32 14
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = load i32, i32* @STA350_CONFE_AME, align 4
  br label %160

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %157
  %161 = phi i32 [ %158, %157 ], [ 0, %159 ]
  %162 = call i32 @regmap_update_bits(i32 %150, i32 %151, i32 %152, i32 %161)
  %163 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %164 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @STA350_CONFE, align 4
  %167 = load i32, i32* @STA350_CONFE_PWMS, align 4
  %168 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %169 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %168, i32 0, i32 13
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %160
  %173 = load i32, i32* @STA350_CONFE_PWMS, align 4
  br label %175

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174, %172
  %176 = phi i32 [ %173, %172 ], [ 0, %174 ]
  %177 = call i32 @regmap_update_bits(i32 %165, i32 %166, i32 %167, i32 %176)
  %178 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %179 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @STA350_CONFE, align 4
  %182 = load i32, i32* @STA350_CONFE_DCCV, align 4
  %183 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %184 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %183, i32 0, i32 12
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %175
  %188 = load i32, i32* @STA350_CONFE_DCCV, align 4
  br label %190

189:                                              ; preds = %175
  br label %190

190:                                              ; preds = %189, %187
  %191 = phi i32 [ %188, %187 ], [ 0, %189 ]
  %192 = call i32 @regmap_update_bits(i32 %180, i32 %181, i32 %182, i32 %191)
  %193 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %194 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @STA350_CONFF, align 4
  %197 = load i32, i32* @STA350_CONFF_IDE, align 4
  %198 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %199 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %198, i32 0, i32 11
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %190
  %203 = load i32, i32* @STA350_CONFF_IDE, align 4
  br label %205

204:                                              ; preds = %190
  br label %205

205:                                              ; preds = %204, %202
  %206 = phi i32 [ %203, %202 ], [ 0, %204 ]
  %207 = call i32 @regmap_update_bits(i32 %195, i32 %196, i32 %197, i32 %206)
  %208 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %209 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @STA350_CONFF, align 4
  %212 = load i32, i32* @STA350_CONFF_OCFG_MASK, align 4
  %213 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %214 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @STA350_CONFF_OCFG_SHIFT, align 4
  %217 = shl i32 %215, %216
  %218 = call i32 @regmap_update_bits(i32 %210, i32 %211, i32 %212, i32 %217)
  %219 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %220 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @STA350_C1CFG, align 4
  %223 = load i32, i32* @STA350_CxCFG_OM_MASK, align 4
  %224 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %225 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @STA350_CxCFG_OM_SHIFT, align 4
  %228 = shl i32 %226, %227
  %229 = call i32 @regmap_update_bits(i32 %221, i32 %222, i32 %223, i32 %228)
  %230 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %231 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @STA350_C2CFG, align 4
  %234 = load i32, i32* @STA350_CxCFG_OM_MASK, align 4
  %235 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %236 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @STA350_CxCFG_OM_SHIFT, align 4
  %239 = shl i32 %237, %238
  %240 = call i32 @regmap_update_bits(i32 %232, i32 %233, i32 %234, i32 %239)
  %241 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %242 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @STA350_C3CFG, align 4
  %245 = load i32, i32* @STA350_CxCFG_OM_MASK, align 4
  %246 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %247 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @STA350_CxCFG_OM_SHIFT, align 4
  %250 = shl i32 %248, %249
  %251 = call i32 @regmap_update_bits(i32 %243, i32 %244, i32 %245, i32 %250)
  %252 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %253 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @STA350_MISC1, align 4
  %256 = load i32, i32* @STA350_MISC1_CPWMEN, align 4
  %257 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %258 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %257, i32 0, i32 10
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %205
  %262 = load i32, i32* @STA350_MISC1_CPWMEN, align 4
  br label %264

263:                                              ; preds = %205
  br label %264

264:                                              ; preds = %263, %261
  %265 = phi i32 [ %262, %261 ], [ 0, %263 ]
  %266 = call i32 @regmap_update_bits(i32 %254, i32 %255, i32 %256, i32 %265)
  %267 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %268 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @STA350_MISC1, align 4
  %271 = load i32, i32* @STA350_MISC1_BRIDGOFF, align 4
  %272 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %273 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %272, i32 0, i32 9
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %264
  %277 = load i32, i32* @STA350_MISC1_BRIDGOFF, align 4
  br label %279

278:                                              ; preds = %264
  br label %279

279:                                              ; preds = %278, %276
  %280 = phi i32 [ %277, %276 ], [ 0, %278 ]
  %281 = call i32 @regmap_update_bits(i32 %269, i32 %270, i32 %271, i32 %280)
  %282 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %283 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @STA350_MISC1, align 4
  %286 = load i32, i32* @STA350_MISC1_NSHHPEN, align 4
  %287 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %288 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %287, i32 0, i32 8
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %279
  %292 = load i32, i32* @STA350_MISC1_NSHHPEN, align 4
  br label %294

293:                                              ; preds = %279
  br label %294

294:                                              ; preds = %293, %291
  %295 = phi i32 [ %292, %291 ], [ 0, %293 ]
  %296 = call i32 @regmap_update_bits(i32 %284, i32 %285, i32 %286, i32 %295)
  %297 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %298 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @STA350_MISC1, align 4
  %301 = load i32, i32* @STA350_MISC1_RPDNEN, align 4
  %302 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %303 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %302, i32 0, i32 7
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %294
  %307 = load i32, i32* @STA350_MISC1_RPDNEN, align 4
  br label %309

308:                                              ; preds = %294
  br label %309

309:                                              ; preds = %308, %306
  %310 = phi i32 [ %307, %306 ], [ 0, %308 ]
  %311 = call i32 @regmap_update_bits(i32 %299, i32 %300, i32 %301, i32 %310)
  %312 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %313 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @STA350_MISC2, align 4
  %316 = load i32, i32* @STA350_MISC2_PNDLSL_MASK, align 4
  %317 = load %struct.sta350_platform_data*, %struct.sta350_platform_data** %5, align 8
  %318 = getelementptr inbounds %struct.sta350_platform_data, %struct.sta350_platform_data* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @STA350_MISC2_PNDLSL_SHIFT, align 4
  %321 = shl i32 %319, %320
  %322 = call i32 @regmap_update_bits(i32 %314, i32 %315, i32 %316, i32 %321)
  store i32 4, i32* %6, align 4
  br label %323

323:                                              ; preds = %333, %309
  %324 = load i32, i32* %6, align 4
  %325 = icmp sle i32 %324, 49
  br i1 %325, label %326, label %336

326:                                              ; preds = %323
  %327 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %328 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 4194304, i32* %332, align 4
  br label %333

333:                                              ; preds = %326
  %334 = load i32, i32* %6, align 4
  %335 = add nsw i32 %334, 5
  store i32 %335, i32* %6, align 4
  br label %323

336:                                              ; preds = %323
  store i32 50, i32* %6, align 4
  br label %337

337:                                              ; preds = %347, %336
  %338 = load i32, i32* %6, align 4
  %339 = icmp sle i32 %338, 54
  br i1 %339, label %340, label %350

340:                                              ; preds = %337
  %341 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %342 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 8388607, i32* %346, align 4
  br label %347

347:                                              ; preds = %340
  %348 = load i32, i32* %6, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %6, align 4
  br label %337

350:                                              ; preds = %337
  %351 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %352 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 55
  store i32 5938679, i32* %354, align 4
  %355 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %356 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 56
  store i32 8388607, i32* %358, align 4
  %359 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %360 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 59
  store i32 8388607, i32* %362, align 4
  %363 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %364 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %363, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 60
  store i32 4194304, i32* %366, align 4
  %367 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %368 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 61
  store i32 4194304, i32* %370, align 4
  %371 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %372 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %373 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %371, i32 %372)
  %374 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %375 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @ARRAY_SIZE(i32 %376)
  %378 = load %struct.sta350_priv*, %struct.sta350_priv** %4, align 8
  %379 = getelementptr inbounds %struct.sta350_priv, %struct.sta350_priv* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @regulator_bulk_disable(i32 %377, i32 %380)
  store i32 0, i32* %2, align 4
  br label %382

382:                                              ; preds = %350, %36, %24
  %383 = load i32, i32* %2, align 4
  ret i32 %383
}

declare dso_local %struct.sta350_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @sta350_startup_sequence(%struct.sta350_priv*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
