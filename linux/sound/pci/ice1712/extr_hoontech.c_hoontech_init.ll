; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_hoontech.c_hoontech_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_hoontech.c_hoontech_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, %struct.hoontech_spec* }
%struct.hoontech_spec = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE1712_STDSP24_MUTE = common dso_local global i32 0, align 4
@ICE1712_STDSP24_BOX_CHN1 = common dso_local global i32 0, align 4
@ICE1712_STDSP24_BOX_CHN2 = common dso_local global i32 0, align 4
@ICE1712_STDSP24_BOX_CHN3 = common dso_local global i32 0, align 4
@ICE1712_STDSP24_BOX_CHN4 = common dso_local global i32 0, align 4
@ICE1712_STDSP24_BOX_MIDI1 = common dso_local global i32 0, align 4
@ICE1712_STDSP24_BOX_MIDI2 = common dso_local global i32 0, align 4
@ICE1712_STDSP24_DAREAR = common dso_local global i32 0, align 4
@ICE1712_STDSP24_INSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32)* @hoontech_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hoontech_init(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hoontech_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 0
  store i32 8, i32* %10, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 1
  store i32 8, i32* %12, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hoontech_spec* @kzalloc(i32 24, i32 %13)
  store %struct.hoontech_spec* %14, %struct.hoontech_spec** %6, align 8
  %15 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %16 = icmp ne %struct.hoontech_spec* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %251

20:                                               ; preds = %2
  %21 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 2
  store %struct.hoontech_spec* %21, %struct.hoontech_spec** %23, align 8
  %24 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %25 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ICE1712_STDSP24_SET_ADDR(i32 %26, i32 0)
  %28 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %29 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ICE1712_STDSP24_CLOCK(i32 %30, i32 0, i32 1)
  %32 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %33 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ICE1712_STDSP24_0_BOX(i32 %34, i32 0)
  %36 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %37 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ICE1712_STDSP24_0_DAREAR(i32 %38, i32 0)
  %40 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %41 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ICE1712_STDSP24_SET_ADDR(i32 %42, i32 1)
  %44 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %45 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ICE1712_STDSP24_CLOCK(i32 %46, i32 1, i32 1)
  %48 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %49 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ICE1712_STDSP24_1_CHN1(i32 %50, i32 1)
  %52 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %53 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ICE1712_STDSP24_1_CHN2(i32 %54, i32 1)
  %56 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %57 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ICE1712_STDSP24_1_CHN3(i32 %58, i32 1)
  %60 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %61 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ICE1712_STDSP24_SET_ADDR(i32 %62, i32 2)
  %64 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %65 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ICE1712_STDSP24_CLOCK(i32 %66, i32 2, i32 1)
  %68 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %69 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ICE1712_STDSP24_2_CHN4(i32 %70, i32 1)
  %72 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %73 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ICE1712_STDSP24_2_MIDIIN(i32 %74, i32 1)
  %76 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %77 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ICE1712_STDSP24_2_MIDI1(i32 %78, i32 0)
  %80 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %81 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ICE1712_STDSP24_SET_ADDR(i32 %82, i32 3)
  %84 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %85 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ICE1712_STDSP24_CLOCK(i32 %86, i32 3, i32 1)
  %88 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %89 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ICE1712_STDSP24_3_MIDI2(i32 %90, i32 0)
  %92 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %93 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ICE1712_STDSP24_3_MUTE(i32 %94, i32 1)
  %96 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %97 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ICE1712_STDSP24_3_INSEL(i32 %98, i32 0)
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %20
  %103 = load i32, i32* @ICE1712_STDSP24_MUTE, align 4
  %104 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %105 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %109

106:                                              ; preds = %20
  %107 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %108 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %102
  %110 = load i32, i32* @ICE1712_STDSP24_BOX_CHN1, align 4
  %111 = load i32, i32* @ICE1712_STDSP24_BOX_CHN2, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @ICE1712_STDSP24_BOX_CHN3, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @ICE1712_STDSP24_BOX_CHN4, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @ICE1712_STDSP24_BOX_MIDI1, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @ICE1712_STDSP24_BOX_MIDI2, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %122 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %109
  %128 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %129 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %134 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  store i32 %132, i32* %136, align 4
  %137 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %138 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  store i32 %132, i32* %140, align 4
  %141 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %142 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %132, i32* %144, align 4
  br label %158

145:                                              ; preds = %109
  %146 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %147 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  store i32 0, i32* %149, align 4
  %150 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %151 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32 0, i32* %153, align 4
  %154 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %155 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  store i32 0, i32* %157, align 4
  br label %158

158:                                              ; preds = %145, %127
  %159 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %160 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %161 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ICE1712_STDSP24_DAREAR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 1, i32 0
  %168 = call i32 @snd_ice1712_stdsp24_darear(%struct.snd_ice1712* %159, i32 %167)
  %169 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %170 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %171 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ICE1712_STDSP24_MUTE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  %178 = call i32 @snd_ice1712_stdsp24_mute(%struct.snd_ice1712* %169, i32 %177)
  %179 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %180 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %181 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @ICE1712_STDSP24_INSEL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 1, i32 0
  %188 = call i32 @snd_ice1712_stdsp24_insel(%struct.snd_ice1712* %179, i32 %187)
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %247, %158
  %190 = load i32, i32* %7, align 4
  %191 = icmp slt i32 %190, 4
  br i1 %191, label %192, label %250

192:                                              ; preds = %189
  %193 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %194 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ICE1712_STDSP24_BOX_MIDI2, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %192
  %204 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %205 = call i32 @snd_ice1712_stdsp24_midi2(%struct.snd_ice1712* %204, i32 1)
  br label %206

206:                                              ; preds = %203, %192
  store i32 0, i32* %8, align 4
  br label %207

207:                                              ; preds = %228, %206
  %208 = load i32, i32* %8, align 4
  %209 = icmp slt i32 %208, 4
  br i1 %209, label %210, label %231

210:                                              ; preds = %207
  %211 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %215 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %8, align 4
  %222 = shl i32 1, %221
  %223 = and i32 %220, %222
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i32 1, i32 0
  %227 = call i32 @snd_ice1712_stdsp24_box_channel(%struct.snd_ice1712* %211, i32 %212, i32 %213, i32 %226)
  br label %228

228:                                              ; preds = %210
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %207

231:                                              ; preds = %207
  %232 = load %struct.hoontech_spec*, %struct.hoontech_spec** %6, align 8
  %233 = getelementptr inbounds %struct.hoontech_spec, %struct.hoontech_spec* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @ICE1712_STDSP24_BOX_MIDI1, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %231
  %243 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @snd_ice1712_stdsp24_box_midi(%struct.snd_ice1712* %243, i32 %244, i32 1)
  br label %246

246:                                              ; preds = %242, %231
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  br label %189

250:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %250, %17
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local %struct.hoontech_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_SET_ADDR(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_CLOCK(i32, i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_0_BOX(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_0_DAREAR(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_1_CHN1(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_1_CHN2(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_1_CHN3(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_2_CHN4(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_2_MIDIIN(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_2_MIDI1(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_3_MIDI2(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_3_MUTE(i32, i32) #1

declare dso_local i32 @ICE1712_STDSP24_3_INSEL(i32, i32) #1

declare dso_local i32 @snd_ice1712_stdsp24_darear(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_stdsp24_mute(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_stdsp24_insel(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_stdsp24_midi2(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_stdsp24_box_channel(%struct.snd_ice1712*, i32, i32, i32) #1

declare dso_local i32 @snd_ice1712_stdsp24_box_midi(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
