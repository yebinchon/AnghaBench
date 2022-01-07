; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_put_eq_enum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98095.c_max98095_put_eq_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { i32 }
%struct.max98095_priv = type { i32, i32*, %struct.max98095_cdata*, i32, %struct.max98095_pdata* }
%struct.max98095_cdata = type { i32, i32 }
%struct.max98095_pdata = type { i32, %struct.max98095_eq_cfg* }
%struct.max98095_eq_cfg = type { i32, i32, i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Selected %s/%dHz for %dHz sample rate\0A\00", align 1
@M98095_EQ1EN = common dso_local global i32 0, align 4
@M98095_EQ2EN = common dso_local global i32 0, align 4
@M98095_088_CFG_LEVEL = common dso_local global i32 0, align 4
@M98095_00F_HOST_CFG = common dso_local global i32 0, align 4
@M98095_SEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @max98095_put_eq_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98095_put_eq_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.max98095_priv*, align 8
  %8 = alloca %struct.max98095_pdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.max98095_cdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.max98095_eq_cfg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %6, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %22 = call %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.max98095_priv* %22, %struct.max98095_priv** %7, align 8
  %23 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %24 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %23, i32 0, i32 4
  %25 = load %struct.max98095_pdata*, %struct.max98095_pdata** %24, align 8
  store %struct.max98095_pdata* %25, %struct.max98095_pdata** %8, align 8
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @max98095_get_eq_channel(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %228

46:                                               ; preds = %2
  %47 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %48 = icmp ne %struct.max98095_pdata* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %51 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %46
  store i32 0, i32* %3, align 4
  br label %228

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %58 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp uge i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %228

64:                                               ; preds = %55
  %65 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %66 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %65, i32 0, i32 2
  %67 = load %struct.max98095_cdata*, %struct.max98095_cdata** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %67, i64 %69
  store %struct.max98095_cdata* %70, %struct.max98095_cdata** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.max98095_cdata*, %struct.max98095_cdata** %10, align 8
  %73 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.max98095_cdata*, %struct.max98095_cdata** %10, align 8
  %75 = getelementptr inbounds %struct.max98095_cdata, %struct.max98095_cdata* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %77 = load i32, i32* @INT_MAX, align 4
  store i32 %77, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %132, %64
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %81 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %135

84:                                               ; preds = %78
  %85 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %86 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %85, i32 0, i32 1
  %87 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %87, i64 %89
  %91 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %94 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @strcmp(i32 %92, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %84
  %103 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %104 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %103, i32 0, i32 1
  %105 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %104, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %105, i64 %107
  %109 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = sub nsw i64 %110, %112
  %114 = call i32 @abs(i64 %113)
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %102
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %14, align 4
  %119 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %120 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %119, i32 0, i32 1
  %121 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %121, i64 %123
  %125 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 %126, %128
  %130 = call i32 @abs(i64 %129)
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %117, %102, %84
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  br label %78

135:                                              ; preds = %78
  %136 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %137 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %140 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %139, i32 0, i32 1
  %141 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %141, i64 %143
  %145 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %148 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %147, i32 0, i32 1
  %149 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %149, i64 %151
  %153 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @dev_dbg(i32 %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %146, i64 %154, i32 %155)
  %157 = load %struct.max98095_pdata*, %struct.max98095_pdata** %8, align 8
  %158 = getelementptr inbounds %struct.max98095_pdata, %struct.max98095_pdata* %157, i32 0, i32 1
  %159 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %159, i64 %161
  store %struct.max98095_eq_cfg* %162, %struct.max98095_eq_cfg** %12, align 8
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %135
  %166 = load i32, i32* @M98095_EQ1EN, align 4
  br label %169

167:                                              ; preds = %135
  %168 = load i32, i32* @M98095_EQ2EN, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  store i32 %170, i32* %17, align 4
  %171 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %172 = load i32, i32* @M98095_088_CFG_LEVEL, align 4
  %173 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %171, i32 %172)
  store i32 %173, i32* %18, align 4
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %175 = load i32, i32* @M98095_088_CFG_LEVEL, align 4
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %174, i32 %175, i32 %176, i32 0)
  %178 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %179 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %178, i32 0, i32 0
  %180 = call i32 @mutex_lock(i32* %179)
  %181 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %182 = load i32, i32* @M98095_00F_HOST_CFG, align 4
  %183 = load i32, i32* @M98095_SEG, align 4
  %184 = load i32, i32* @M98095_SEG, align 4
  %185 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %181, i32 %182, i32 %183, i32 %184)
  %186 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %12, align 8
  %189 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @m98095_eq_band(%struct.snd_soc_component* %186, i32 %187, i32 0, i32 %190)
  %192 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %12, align 8
  %195 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @m98095_eq_band(%struct.snd_soc_component* %192, i32 %193, i32 1, i32 %196)
  %198 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %12, align 8
  %201 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @m98095_eq_band(%struct.snd_soc_component* %198, i32 %199, i32 2, i32 %202)
  %204 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %12, align 8
  %207 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @m98095_eq_band(%struct.snd_soc_component* %204, i32 %205, i32 3, i32 %208)
  %210 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load %struct.max98095_eq_cfg*, %struct.max98095_eq_cfg** %12, align 8
  %213 = getelementptr inbounds %struct.max98095_eq_cfg, %struct.max98095_eq_cfg* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @m98095_eq_band(%struct.snd_soc_component* %210, i32 %211, i32 4, i32 %214)
  %216 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %217 = load i32, i32* @M98095_00F_HOST_CFG, align 4
  %218 = load i32, i32* @M98095_SEG, align 4
  %219 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %216, i32 %217, i32 %218, i32 0)
  %220 = load %struct.max98095_priv*, %struct.max98095_priv** %7, align 8
  %221 = getelementptr inbounds %struct.max98095_priv, %struct.max98095_priv* %220, i32 0, i32 0
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %224 = load i32, i32* @M98095_088_CFG_LEVEL, align 4
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %18, align 4
  %227 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %223, i32 %224, i32 %225, i32 %226)
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %169, %61, %54, %43
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.max98095_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @max98095_get_eq_channel(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @m98095_eq_band(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
