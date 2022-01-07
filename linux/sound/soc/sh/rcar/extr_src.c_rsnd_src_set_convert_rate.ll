; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_set_convert_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c_rsnd_src_set_convert_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }
%struct.snd_pcm_runtime = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"FSO/FSI ratio error\0A\00", align 1
@chan288888 = common dso_local global i32* null, align 8
@bsdsr_table_pattern1 = common dso_local global i32* null, align 8
@chan244888 = common dso_local global i32* null, align 8
@chan222222 = common dso_local global i32* null, align 8
@bsdsr_table_pattern2 = common dso_local global i32* null, align 8
@SRC_ROUTE_MODE0 = common dso_local global i32 0, align 4
@SRC_SRCIR = common dso_local global i32 0, align 4
@SRC_ADINR = common dso_local global i32 0, align 4
@SRC_IFSCR = common dso_local global i32 0, align 4
@SRC_IFSVR = common dso_local global i32 0, align 4
@SRC_SRCCR = common dso_local global i32 0, align 4
@SRC_BSDSR = common dso_local global i32 0, align 4
@SRC_BSISR = common dso_local global i32 0, align 4
@bsisr_table = common dso_local global i32* null, align 8
@SRC_I_BUSIF_MODE = common dso_local global i32 0, align 4
@SRC_O_BUSIF_MODE = common dso_local global i32 0, align 4
@SRC_BUSIF_DALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown BSDSR/BSDIR settings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_src_set_convert_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_src_set_convert_rate(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %4, align 8
  %26 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %27 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %26)
  store %struct.rsnd_priv* %27, %struct.rsnd_priv** %5, align 8
  %28 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %29 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %28)
  store %struct.device* %29, %struct.device** %6, align 8
  %30 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %31 = call %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream* %30)
  store %struct.snd_pcm_runtime* %31, %struct.snd_pcm_runtime** %7, align 8
  %32 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %33 = call i32 @rsnd_io_is_play(%struct.rsnd_dai_stream* %32)
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %35 = icmp ne %struct.snd_pcm_runtime* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  br label %251

37:                                               ; preds = %2
  %38 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %39 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %40 = call i32 @rsnd_src_get_in_rate(%struct.rsnd_priv* %38, %struct.rsnd_dai_stream* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %42 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %43 = call i32 @rsnd_src_get_out_rate(%struct.rsnd_priv* %41, %struct.rsnd_dai_stream* %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %45 = call i32 @rsnd_runtime_channel_original(%struct.rsnd_dai_stream* %44)
  store i32 %45, i32* %23, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 0, i32* %22, align 4
  br label %65

50:                                               ; preds = %37
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 100, %55
  %57 = load i32, i32* %11, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %22, align 4
  br label %64

59:                                               ; preds = %50
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 100, %60
  %62 = load i32, i32* %10, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %22, align 4
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i32, i32* %22, align 4
  %67 = icmp sgt i32 %66, 600
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %251

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %77 = call i32 @rsnd_src_sync_is_enabled(%struct.rsnd_mod* %76)
  %78 = or i32 %75, %77
  store i32 %78, i32* %9, align 4
  %79 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %80 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %81 = call i32 @rsnd_get_adinr_bit(%struct.rsnd_mod* %79, %struct.rsnd_dai_stream* %80)
  %82 = load i32, i32* %23, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %71
  store i32 1, i32* %12, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 4194304, %87
  store i32 %88, i32* %25, align 4
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @do_div(i32 %89, i32 %90)
  %92 = load i32, i32* %25, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %86, %71
  store i32 69904, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  store i32 1, i32* %16, align 4
  %97 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %98 = call i32 @rsnd_src_sync_is_enabled(%struct.rsnd_mod* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %101, 1
  store i32 %102, i32* %15, align 4
  %103 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %104 = call i32 @rsnd_io_is_play(%struct.rsnd_dai_stream* %103)
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 16777216, i32 33554432
  %108 = load i32, i32* %16, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %16, align 4
  br label %110

110:                                              ; preds = %100, %96
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %113 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %112)
  switch i32 %113, label %126 [
    i32 0, label %114
    i32 1, label %117
    i32 3, label %117
    i32 4, label %117
    i32 2, label %120
    i32 9, label %120
    i32 5, label %123
    i32 6, label %123
    i32 7, label %123
    i32 8, label %123
  ]

114:                                              ; preds = %111
  %115 = load i32*, i32** @chan288888, align 8
  store i32* %115, i32** %21, align 8
  %116 = load i32*, i32** @bsdsr_table_pattern1, align 8
  store i32* %116, i32** %20, align 8
  br label %127

117:                                              ; preds = %111, %111, %111
  %118 = load i32*, i32** @chan244888, align 8
  store i32* %118, i32** %21, align 8
  %119 = load i32*, i32** @bsdsr_table_pattern1, align 8
  store i32* %119, i32** %20, align 8
  br label %127

120:                                              ; preds = %111, %111
  %121 = load i32*, i32** @chan222222, align 8
  store i32* %121, i32** %21, align 8
  %122 = load i32*, i32** @bsdsr_table_pattern1, align 8
  store i32* %122, i32** %20, align 8
  br label %127

123:                                              ; preds = %111, %111, %111, %111
  %124 = load i32*, i32** @chan222222, align 8
  store i32* %124, i32** %21, align 8
  %125 = load i32*, i32** @bsdsr_table_pattern2, align 8
  store i32* %125, i32** %20, align 8
  br label %127

126:                                              ; preds = %111
  br label %248

127:                                              ; preds = %123, %120, %117, %114
  %128 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %129 = call i64 @rsnd_is_e3(%struct.rsnd_priv* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %133 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %132)
  switch i32 %133, label %136 [
    i32 0, label %134
    i32 4, label %134
  ]

134:                                              ; preds = %131, %131
  %135 = load i32*, i32** @chan222222, align 8
  store i32* %135, i32** %21, align 8
  br label %136

136:                                              ; preds = %134, %131
  br label %137

137:                                              ; preds = %136, %127
  store i32 0, i32* %24, align 4
  br label %138

138:                                              ; preds = %155, %137
  %139 = load i32, i32* %24, align 4
  %140 = load i32*, i32** @chan222222, align 8
  %141 = call i32 @ARRAY_SIZE(i32* %140)
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %138
  %144 = load i32*, i32** %21, align 8
  %145 = load i32, i32* %24, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %23, align 4
  %150 = shl i32 1, %149
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %158

154:                                              ; preds = %143
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %24, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %24, align 4
  br label %138

158:                                              ; preds = %153, %138
  %159 = load i32, i32* %23, align 4
  %160 = icmp sgt i32 %159, 8
  br i1 %160, label %166, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %24, align 4
  %163 = load i32*, i32** @chan222222, align 8
  %164 = call i32 @ARRAY_SIZE(i32* %163)
  %165 = icmp sge i32 %162, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %161, %158
  br label %248

167:                                              ; preds = %161
  %168 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %169 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %170 = call i32 @rsnd_get_busif_shift(%struct.rsnd_dai_stream* %168, %struct.rsnd_mod* %169)
  store i32 %170, i32* %19, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* %19, align 4
  br label %176

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175, %173
  %177 = phi i32 [ %174, %173 ], [ 0, %175 ]
  %178 = or i32 %177, 1
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %19, align 4
  br label %184

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i32 [ %182, %181 ], [ 0, %183 ]
  %186 = or i32 %185, 1
  store i32 %186, i32* %18, align 4
  %187 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %188 = load i32, i32* @SRC_ROUTE_MODE0, align 4
  %189 = load i32, i32* %16, align 4
  %190 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %187, i32 %188, i32 %189)
  %191 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %192 = load i32, i32* @SRC_SRCIR, align 4
  %193 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %191, i32 %192, i32 1)
  %194 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %195 = load i32, i32* @SRC_ADINR, align 4
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %194, i32 %195, i32 %196)
  %198 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %199 = load i32, i32* @SRC_IFSCR, align 4
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %198, i32 %199, i32 %200)
  %202 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %203 = load i32, i32* @SRC_IFSVR, align 4
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %202, i32 %203, i32 %204)
  %206 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %207 = load i32, i32* @SRC_SRCCR, align 4
  %208 = load i32, i32* %15, align 4
  %209 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %206, i32 %207, i32 %208)
  %210 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %211 = load i32, i32* @SRC_BSDSR, align 4
  %212 = load i32*, i32** %20, align 8
  %213 = load i32, i32* %24, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %210, i32 %211, i32 %216)
  %218 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %219 = load i32, i32* @SRC_BSISR, align 4
  %220 = load i32*, i32** @bsisr_table, align 8
  %221 = load i32, i32* %24, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %218, i32 %219, i32 %224)
  %226 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %227 = load i32, i32* @SRC_SRCIR, align 4
  %228 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %226, i32 %227, i32 0)
  %229 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %230 = load i32, i32* @SRC_I_BUSIF_MODE, align 4
  %231 = load i32, i32* %17, align 4
  %232 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %229, i32 %230, i32 %231)
  %233 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %234 = load i32, i32* @SRC_O_BUSIF_MODE, align 4
  %235 = load i32, i32* %18, align 4
  %236 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %233, i32 %234, i32 %235)
  %237 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %238 = load i32, i32* @SRC_BUSIF_DALIGN, align 4
  %239 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %240 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %241 = call i32 @rsnd_get_dalign(%struct.rsnd_mod* %239, %struct.rsnd_dai_stream* %240)
  %242 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %237, i32 %238, i32 %241)
  %243 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %244 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @rsnd_adg_set_src_timesel_gen2(%struct.rsnd_mod* %243, %struct.rsnd_dai_stream* %244, i32 %245, i32 %246)
  br label %251

248:                                              ; preds = %166, %126
  %249 = load %struct.device*, %struct.device** %6, align 8
  %250 = call i32 @dev_err(%struct.device* %249, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %184, %68, %36
  ret void
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_src_get_in_rate(%struct.rsnd_priv*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_src_get_out_rate(%struct.rsnd_priv*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_runtime_channel_original(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rsnd_src_sync_is_enabled(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_get_adinr_bit(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

declare dso_local i64 @rsnd_is_e3(%struct.rsnd_priv*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rsnd_get_busif_shift(%struct.rsnd_dai_stream*, %struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

declare dso_local i32 @rsnd_get_dalign(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_adg_set_src_timesel_gen2(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
