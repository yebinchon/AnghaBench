; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_volume1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_put_volume1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { i32 }
%struct.snd_mixer_oss_slot = type { %struct.slot* }
%struct.slot = type { i32, i32* }

@SNDRV_MIXER_OSS_PRESENT_PVOLUME = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PVOLUME = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_CVOLUME = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_CVOLUME = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GVOLUME = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GVOLUME = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GLOBAL = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GLOBAL = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_PSWITCH = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PSWITCH = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_CSWITCH = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_CSWITCH = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GSWITCH = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GSWITCH = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_PROUTE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PROUTE = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_CROUTE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_CROUTE = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GROUTE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GROUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32)* @snd_mixer_oss_put_volume1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_put_volume1(%struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_slot* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_mixer_oss_file*, align 8
  %6 = alloca %struct.snd_mixer_oss_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.slot*, align 8
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %5, align 8
  store %struct.snd_mixer_oss_slot* %1, %struct.snd_mixer_oss_slot** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %11 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %10, i32 0, i32 0
  %12 = load %struct.slot*, %struct.slot** %11, align 8
  store %struct.slot* %12, %struct.slot** %9, align 8
  %13 = load %struct.slot*, %struct.slot** %9, align 8
  %14 = getelementptr inbounds %struct.slot, %struct.slot* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PVOLUME, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %4
  %20 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %21 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %22 = load %struct.slot*, %struct.slot** %9, align 8
  %23 = getelementptr inbounds %struct.slot, %struct.slot* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PVOLUME, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %20, %struct.snd_mixer_oss_slot* %21, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.slot*, %struct.slot** %9, align 8
  %32 = getelementptr inbounds %struct.slot, %struct.slot* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CVOLUME, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %19
  %38 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %39 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %40 = load %struct.slot*, %struct.slot** %9, align 8
  %41 = getelementptr inbounds %struct.slot, %struct.slot* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CVOLUME, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %38, %struct.snd_mixer_oss_slot* %39, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %37, %19
  br label %110

50:                                               ; preds = %4
  %51 = load %struct.slot*, %struct.slot** %9, align 8
  %52 = getelementptr inbounds %struct.slot, %struct.slot* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CVOLUME, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %59 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %60 = load %struct.slot*, %struct.slot** %9, align 8
  %61 = getelementptr inbounds %struct.slot, %struct.slot* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CVOLUME, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %58, %struct.snd_mixer_oss_slot* %59, i32 %65, i32 %66, i32 %67)
  br label %109

69:                                               ; preds = %50
  %70 = load %struct.slot*, %struct.slot** %9, align 8
  %71 = getelementptr inbounds %struct.slot, %struct.slot* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GVOLUME, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %78 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %79 = load %struct.slot*, %struct.slot** %9, align 8
  %80 = getelementptr inbounds %struct.slot, %struct.slot* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GVOLUME, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %77, %struct.snd_mixer_oss_slot* %78, i32 %84, i32 %85, i32 %86)
  br label %108

88:                                               ; preds = %69
  %89 = load %struct.slot*, %struct.slot** %9, align 8
  %90 = getelementptr inbounds %struct.slot, %struct.slot* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GLOBAL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %97 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %98 = load %struct.slot*, %struct.slot** %9, align 8
  %99 = getelementptr inbounds %struct.slot, %struct.slot* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GLOBAL, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file* %96, %struct.snd_mixer_oss_slot* %97, i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %95, %88
  br label %108

108:                                              ; preds = %107, %76
  br label %109

109:                                              ; preds = %108, %57
  br label %110

110:                                              ; preds = %109, %49
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %231

116:                                              ; preds = %113, %110
  %117 = load %struct.slot*, %struct.slot** %9, align 8
  %118 = getelementptr inbounds %struct.slot, %struct.slot* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PSWITCH, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %116
  %124 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %125 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %126 = load %struct.slot*, %struct.slot** %9, align 8
  %127 = getelementptr inbounds %struct.slot, %struct.slot* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PSWITCH, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %124, %struct.snd_mixer_oss_slot* %125, i32 %131, i32 %132, i32 %133, i32 0)
  br label %135

135:                                              ; preds = %123, %116
  %136 = load %struct.slot*, %struct.slot** %9, align 8
  %137 = getelementptr inbounds %struct.slot, %struct.slot* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CSWITCH, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %135
  %143 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %144 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %145 = load %struct.slot*, %struct.slot** %9, align 8
  %146 = getelementptr inbounds %struct.slot, %struct.slot* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CSWITCH, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %143, %struct.snd_mixer_oss_slot* %144, i32 %150, i32 %151, i32 %152, i32 0)
  br label %154

154:                                              ; preds = %142, %135
  %155 = load %struct.slot*, %struct.slot** %9, align 8
  %156 = getelementptr inbounds %struct.slot, %struct.slot* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GSWITCH, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %154
  %162 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %163 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %164 = load %struct.slot*, %struct.slot** %9, align 8
  %165 = getelementptr inbounds %struct.slot, %struct.slot* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GSWITCH, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %162, %struct.snd_mixer_oss_slot* %163, i32 %169, i32 %170, i32 %171, i32 0)
  br label %173

173:                                              ; preds = %161, %154
  %174 = load %struct.slot*, %struct.slot** %9, align 8
  %175 = getelementptr inbounds %struct.slot, %struct.slot* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PROUTE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %173
  %181 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %182 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %183 = load %struct.slot*, %struct.slot** %9, align 8
  %184 = getelementptr inbounds %struct.slot, %struct.slot* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PROUTE, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %181, %struct.snd_mixer_oss_slot* %182, i32 %188, i32 %189, i32 %190, i32 1)
  br label %192

192:                                              ; preds = %180, %173
  %193 = load %struct.slot*, %struct.slot** %9, align 8
  %194 = getelementptr inbounds %struct.slot, %struct.slot* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CROUTE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %192
  %200 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %201 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %202 = load %struct.slot*, %struct.slot** %9, align 8
  %203 = getelementptr inbounds %struct.slot, %struct.slot* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CROUTE, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %200, %struct.snd_mixer_oss_slot* %201, i32 %207, i32 %208, i32 %209, i32 1)
  br label %211

211:                                              ; preds = %199, %192
  %212 = load %struct.slot*, %struct.slot** %9, align 8
  %213 = getelementptr inbounds %struct.slot, %struct.slot* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GROUTE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %211
  %219 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %220 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %221 = load %struct.slot*, %struct.slot** %9, align 8
  %222 = getelementptr inbounds %struct.slot, %struct.slot* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GROUTE, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %219, %struct.snd_mixer_oss_slot* %220, i32 %226, i32 %227, i32 %228, i32 1)
  br label %230

230:                                              ; preds = %218, %211
  br label %351

231:                                              ; preds = %113
  %232 = load %struct.slot*, %struct.slot** %9, align 8
  %233 = getelementptr inbounds %struct.slot, %struct.slot* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PSWITCH, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %231
  %239 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %240 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %241 = load %struct.slot*, %struct.slot** %9, align 8
  %242 = getelementptr inbounds %struct.slot, %struct.slot* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PSWITCH, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %239, %struct.snd_mixer_oss_slot* %240, i32 %246, i32 %247, i32 %248, i32 0)
  br label %350

250:                                              ; preds = %231
  %251 = load %struct.slot*, %struct.slot** %9, align 8
  %252 = getelementptr inbounds %struct.slot, %struct.slot* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CSWITCH, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %269

257:                                              ; preds = %250
  %258 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %259 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %260 = load %struct.slot*, %struct.slot** %9, align 8
  %261 = getelementptr inbounds %struct.slot, %struct.slot* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CSWITCH, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %258, %struct.snd_mixer_oss_slot* %259, i32 %265, i32 %266, i32 %267, i32 0)
  br label %349

269:                                              ; preds = %250
  %270 = load %struct.slot*, %struct.slot** %9, align 8
  %271 = getelementptr inbounds %struct.slot, %struct.slot* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GSWITCH, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %288

276:                                              ; preds = %269
  %277 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %278 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %279 = load %struct.slot*, %struct.slot** %9, align 8
  %280 = getelementptr inbounds %struct.slot, %struct.slot* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GSWITCH, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* %8, align 4
  %287 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %277, %struct.snd_mixer_oss_slot* %278, i32 %284, i32 %285, i32 %286, i32 0)
  br label %348

288:                                              ; preds = %269
  %289 = load %struct.slot*, %struct.slot** %9, align 8
  %290 = getelementptr inbounds %struct.slot, %struct.slot* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PROUTE, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %307

295:                                              ; preds = %288
  %296 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %297 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %298 = load %struct.slot*, %struct.slot** %9, align 8
  %299 = getelementptr inbounds %struct.slot, %struct.slot* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PROUTE, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %7, align 4
  %305 = load i32, i32* %8, align 4
  %306 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %296, %struct.snd_mixer_oss_slot* %297, i32 %303, i32 %304, i32 %305, i32 1)
  br label %347

307:                                              ; preds = %288
  %308 = load %struct.slot*, %struct.slot** %9, align 8
  %309 = getelementptr inbounds %struct.slot, %struct.slot* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CROUTE, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %307
  %315 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %316 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %317 = load %struct.slot*, %struct.slot** %9, align 8
  %318 = getelementptr inbounds %struct.slot, %struct.slot* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CROUTE, align 8
  %321 = getelementptr inbounds i32, i32* %319, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* %8, align 4
  %325 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %315, %struct.snd_mixer_oss_slot* %316, i32 %322, i32 %323, i32 %324, i32 1)
  br label %346

326:                                              ; preds = %307
  %327 = load %struct.slot*, %struct.slot** %9, align 8
  %328 = getelementptr inbounds %struct.slot, %struct.slot* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GROUTE, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %326
  %334 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %335 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %336 = load %struct.slot*, %struct.slot** %9, align 8
  %337 = getelementptr inbounds %struct.slot, %struct.slot* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GROUTE, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %7, align 4
  %343 = load i32, i32* %8, align 4
  %344 = call i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file* %334, %struct.snd_mixer_oss_slot* %335, i32 %341, i32 %342, i32 %343, i32 1)
  br label %345

345:                                              ; preds = %333, %326
  br label %346

346:                                              ; preds = %345, %314
  br label %347

347:                                              ; preds = %346, %295
  br label %348

348:                                              ; preds = %347, %276
  br label %349

349:                                              ; preds = %348, %257
  br label %350

350:                                              ; preds = %349, %238
  br label %351

351:                                              ; preds = %350, %230
  ret i32 0
}

declare dso_local i32 @snd_mixer_oss_put_volume1_vol(%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32, i32) #1

declare dso_local i32 @snd_mixer_oss_put_volume1_sw(%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
