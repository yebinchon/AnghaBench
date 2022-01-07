; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_constrain_params_by_rules.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_constrain_params_by_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_hw_constraints }
%struct.snd_pcm_hw_constraints = type { i32, %struct.snd_pcm_hw_rule* }
%struct.snd_pcm_hw_rule = type { i32, i64*, i32, i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* }
%struct.snd_pcm_hw_params = type opaque
%struct.snd_pcm_hw_params.0 = type { i32, i32, i32 }
%struct.snd_mask = type { i32 }
%struct.snd_interval = type { i32 }

@SNDRV_PCM_HW_PARAM_LAST_INTERVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params.0*)* @constrain_params_by_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constrain_params_by_rules(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params.0*, align 8
  %6 = alloca %struct.snd_pcm_hw_constraints*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_pcm_hw_rule*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_mask, align 4
  %15 = alloca %struct.snd_interval, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params.0* %1, %struct.snd_pcm_hw_params.0** %5, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.snd_pcm_hw_constraints* %23, %struct.snd_pcm_hw_constraints** %6, align 8
  %24 = load i32, i32* @SNDRV_PCM_HW_PARAM_LAST_INTERVAL, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  store i32 0, i32* %18, align 4
  %29 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %6, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_hw_constraints, %struct.snd_pcm_hw_constraints* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kcalloc(i32 %31, i32 4, i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %258

39:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_LAST_INTERVAL, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load %struct.snd_pcm_hw_params.0*, %struct.snd_pcm_hw_params.0** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_hw_params.0, %struct.snd_pcm_hw_params.0* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %28, i64 %55
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %40

60:                                               ; preds = %40
  store i32 2, i32* %11, align 4
  br label %61

61:                                               ; preds = %252, %60
  store i32 0, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %246, %61
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %6, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_hw_constraints, %struct.snd_pcm_hw_constraints* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %249

68:                                               ; preds = %62
  %69 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %6, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_hw_constraints, %struct.snd_pcm_hw_constraints* %69, i32 0, i32 1
  %71 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %71, i64 %73
  store %struct.snd_pcm_hw_rule* %74, %struct.snd_pcm_hw_rule** %12, align 8
  %75 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %68
  %80 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.snd_pcm_hw_params.0*, %struct.snd_pcm_hw_params.0** %5, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_hw_params.0, %struct.snd_pcm_hw_params.0* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  br label %246

89:                                               ; preds = %79, %68
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %117, %89
  %91 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp uge i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %90
  %100 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %28, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ugt i32 %108, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %99
  br label %120

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %90

120:                                              ; preds = %115, %90
  %121 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %246

130:                                              ; preds = %120
  %131 = call i64 (...) @trace_hw_mask_param_enabled()
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @hw_is_mask(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %133
  %140 = load %struct.snd_pcm_hw_params.0*, %struct.snd_pcm_hw_params.0** %5, align 8
  %141 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %142 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params.0* %140, i32 %143)
  %145 = bitcast %struct.snd_mask* %14 to i8*
  %146 = bitcast %struct.snd_mask* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 %146, i64 4, i1 false)
  br label %147

147:                                              ; preds = %139, %133
  br label %148

148:                                              ; preds = %147, %130
  %149 = call i64 (...) @trace_hw_interval_param_enabled()
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %148
  %152 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %153 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @hw_is_interval(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load %struct.snd_pcm_hw_params.0*, %struct.snd_pcm_hw_params.0** %5, align 8
  %159 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %160 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params.0* %158, i32 %161)
  %163 = bitcast %struct.snd_interval* %15 to i8*
  %164 = bitcast %struct.snd_interval* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 %164, i64 4, i1 false)
  br label %165

165:                                              ; preds = %157, %151
  br label %166

166:                                              ; preds = %165, %148
  %167 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %168 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %167, i32 0, i32 3
  %169 = load i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)*, i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)** %168, align 8
  %170 = load %struct.snd_pcm_hw_params.0*, %struct.snd_pcm_hw_params.0** %5, align 8
  %171 = bitcast %struct.snd_pcm_hw_params.0* %170 to %struct.snd_pcm_hw_params*
  %172 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %173 = call i32 %169(%struct.snd_pcm_hw_params* %171, %struct.snd_pcm_hw_rule* %172)
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = load i32, i32* %17, align 4
  store i32 %177, i32* %18, align 4
  br label %254

178:                                              ; preds = %166
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %239

181:                                              ; preds = %178
  %182 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %183 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %239

186:                                              ; preds = %181
  %187 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %188 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @hw_is_mask(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %186
  %193 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %194 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %195 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = add i32 %197, 1
  %199 = load %struct.snd_pcm_hw_params.0*, %struct.snd_pcm_hw_params.0** %5, align 8
  %200 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %201 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params.0* %199, i32 %202)
  %204 = call i32 @trace_hw_mask_param(%struct.snd_pcm_substream* %193, i32 %196, i32 %198, %struct.snd_mask* %14, %struct.snd_mask* %203)
  br label %205

205:                                              ; preds = %192, %186
  %206 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %207 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @hw_is_interval(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %205
  %212 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %213 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %214 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = add i32 %216, 1
  %218 = load %struct.snd_pcm_hw_params.0*, %struct.snd_pcm_hw_params.0** %5, align 8
  %219 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %220 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params.0* %218, i32 %221)
  %223 = call i32 @trace_hw_interval_param(%struct.snd_pcm_substream* %212, i32 %215, i32 %217, %struct.snd_interval* %15, %struct.snd_interval* %222)
  br label %224

224:                                              ; preds = %211, %205
  %225 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %226 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = shl i32 1, %227
  %229 = load %struct.snd_pcm_hw_params.0*, %struct.snd_pcm_hw_params.0** %5, align 8
  %230 = getelementptr inbounds %struct.snd_pcm_hw_params.0, %struct.snd_pcm_hw_params.0* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %12, align 8
  %235 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %28, i64 %237
  store i32 %233, i32* %238, align 4
  store i32 1, i32* %16, align 4
  br label %239

239:                                              ; preds = %224, %181, %178
  %240 = load i32, i32* %11, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %11, align 4
  %242 = load i32*, i32** %8, align 8
  %243 = load i32, i32* %7, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %240, i32* %245, align 4
  br label %246

246:                                              ; preds = %239, %129, %88
  %247 = load i32, i32* %7, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %62

249:                                              ; preds = %62
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  br label %61

253:                                              ; preds = %249
  br label %254

254:                                              ; preds = %253, %176
  %255 = load i32*, i32** %8, align 8
  %256 = call i32 @kfree(i32* %255)
  %257 = load i32, i32* %18, align 4
  store i32 %257, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %258

258:                                              ; preds = %254, %36
  %259 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %259)
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kcalloc(i32, i32, i32) #2

declare dso_local i64 @trace_hw_mask_param_enabled(...) #2

declare dso_local i64 @hw_is_mask(i32) #2

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params.0*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @trace_hw_interval_param_enabled(...) #2

declare dso_local i64 @hw_is_interval(i32) #2

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params.0*, i32) #2

declare dso_local i32 @trace_hw_mask_param(%struct.snd_pcm_substream*, i32, i32, %struct.snd_mask*, %struct.snd_mask*) #2

declare dso_local i32 @trace_hw_interval_param(%struct.snd_pcm_substream*, i32, i32, %struct.snd_interval*, %struct.snd_interval*) #2

declare dso_local i32 @kfree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
