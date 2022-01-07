; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_query_supported_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_query_supported_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hdac_device = type { i32 }

@AC_PAR_PCM_RATE_BITS = common dso_local global i32 0, align 4
@rate_bits = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"rates == 0 (nid=0x%x, val=0x%x, ovrd=%i)\0A\00", align 1
@AC_WCAP_FORMAT_OVRD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AC_SUPFMT_PCM = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_8 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_U8 = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_16 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@AC_WCAP_DIGITAL = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_32 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_20 = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_24 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@AC_SUPFMT_AC3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"formats == 0 (nid=0x%x, val=0x%x, ovrd=%i, streams=0x%x)\0A\00", align 1
@AC_SUPFMT_FLOAT32 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_FLOAT_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_query_supported_pcm(%struct.hdac_device* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdac_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @get_wcaps(%struct.hdac_device* %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @query_pcm_param(%struct.hdac_device* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %71

27:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @AC_PAR_PCM_RATE_BITS, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_bits, align 8
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %38, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load i32, i32* %15, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %56 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @AC_WCAP_FORMAT_OVRD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %223

68:                                               ; preds = %51
  %69 = load i32, i32* %15, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %5
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %11, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %222

77:                                               ; preds = %74, %71
  store i32 0, i32* %16, align 4
  %78 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @query_stream_param(%struct.hdac_device* %78, i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %223

86:                                               ; preds = %77
  store i32 0, i32* %18, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @AC_SUPFMT_PCM, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %183

91:                                               ; preds = %86
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @AC_SUPPCM_BITS_8, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @SNDRV_PCM_FMTBIT_U8, align 4
  %98 = load i32, i32* %16, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %16, align 4
  store i32 8, i32* %18, align 4
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @AC_SUPPCM_BITS_16, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %107 = load i32, i32* %16, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %16, align 4
  store i32 16, i32* %18, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @AC_WCAP_DIGITAL, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %148

114:                                              ; preds = %109
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @AC_SUPPCM_BITS_32, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE, align 4
  %121 = load i32, i32* %16, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @AC_SUPPCM_BITS_20, align 4
  %126 = load i32, i32* @AC_SUPPCM_BITS_24, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %132 = load i32, i32* %16, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %130, %123
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @AC_SUPPCM_BITS_24, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 24, i32* %18, align 4
  br label %147

140:                                              ; preds = %134
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @AC_SUPPCM_BITS_20, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 20, i32* %18, align 4
  br label %146

146:                                              ; preds = %145, %140
  br label %147

147:                                              ; preds = %146, %139
  br label %182

148:                                              ; preds = %109
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @AC_SUPPCM_BITS_20, align 4
  %151 = load i32, i32* @AC_SUPPCM_BITS_24, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @AC_SUPPCM_BITS_32, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %149, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %181

157:                                              ; preds = %148
  %158 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %159 = load i32, i32* %16, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %16, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @AC_SUPPCM_BITS_32, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  store i32 32, i32* %18, align 4
  br label %180

166:                                              ; preds = %157
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @AC_SUPPCM_BITS_24, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 24, i32* %18, align 4
  br label %179

172:                                              ; preds = %166
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @AC_SUPPCM_BITS_20, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 20, i32* %18, align 4
  br label %178

178:                                              ; preds = %177, %172
  br label %179

179:                                              ; preds = %178, %171
  br label %180

180:                                              ; preds = %179, %165
  br label %181

181:                                              ; preds = %180, %148
  br label %182

182:                                              ; preds = %181, %147
  br label %183

183:                                              ; preds = %182, %86
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* @AC_SUPFMT_AC3, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i32, i32* @SNDRV_PCM_FMTBIT_U8, align 4
  %189 = load i32, i32* %16, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %16, align 4
  store i32 8, i32* %18, align 4
  br label %191

191:                                              ; preds = %187, %183
  %192 = load i32, i32* %16, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %209

194:                                              ; preds = %191
  %195 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %196 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %195, i32 0, i32 0
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* @AC_WCAP_FORMAT_OVRD, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 1, i32 0
  %205 = load i32, i32* %17, align 4
  %206 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_err(i32* %196, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %197, i32 %198, i32 %204, i32 %205)
  %207 = load i32, i32* @EIO, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %6, align 4
  br label %223

209:                                              ; preds = %191
  %210 = load i32*, i32** %10, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load i32, i32* %16, align 4
  %214 = load i32*, i32** %10, align 8
  store i32 %213, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %209
  %216 = load i32*, i32** %11, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* %18, align 4
  %220 = load i32*, i32** %11, align 8
  store i32 %219, i32* %220, align 4
  br label %221

221:                                              ; preds = %218, %215
  br label %222

222:                                              ; preds = %221, %74
  store i32 0, i32* %6, align 4
  br label %223

223:                                              ; preds = %222, %194, %83, %54
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local i32 @get_wcaps(%struct.hdac_device*, i32) #1

declare dso_local i32 @query_pcm_param(%struct.hdac_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @query_stream_param(%struct.hdac_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
