; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8776.c_snd_wm8776_ctl_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8776.c_snd_wm8776_ctl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_wm8776 = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i64, i32, i32 (%struct.snd_wm8776*, i32, i32)* }

@WM8776_FLAG_INVERT = common dso_local global i32 0, align 4
@WM8776_FLAG_STEREO = common dso_local global i32 0, align 4
@WM8776_FLAG_VOL_UPDATE = common dso_local global i32 0, align 4
@WM8776_VOL_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_wm8776_ctl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_wm8776_ctl_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_wm8776*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.snd_wm8776* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_wm8776* %11, %struct.snd_wm8776** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %30 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @WM8776_FLAG_INVERT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %2
  %41 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %42 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %51 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %49, %57
  %59 = sub nsw i32 %48, %58
  store i32 %59, i32* %8, align 4
  %60 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %61 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %70 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %68, %76
  %78 = sub nsw i32 %67, %77
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %40, %2
  %80 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %81 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 7
  %87 = load i32 (%struct.snd_wm8776*, i32, i32)*, i32 (%struct.snd_wm8776*, i32, i32)** %86, align 8
  %88 = icmp ne i32 (%struct.snd_wm8776*, i32, i32)* %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %79
  %90 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %91 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 7
  %97 = load i32 (%struct.snd_wm8776*, i32, i32)*, i32 (%struct.snd_wm8776*, i32, i32)** %96, align 8
  %98 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 %97(%struct.snd_wm8776* %98, i32 %99, i32 %100)
  br label %299

102:                                              ; preds = %79
  %103 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %104 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %107 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %105, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %117 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = xor i32 %123, -1
  %125 = and i32 %115, %124
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %128 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @__ffs(i32 %134)
  %136 = shl i32 %126, %135
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  %139 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %140 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @WM8776_FLAG_STEREO, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %193

150:                                              ; preds = %102
  %151 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %152 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %160 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %158, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %150
  %169 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %170 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %7, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %182 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %181, i32 0, i32 1
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @__ffs(i32 %188)
  %190 = shl i32 %180, %189
  %191 = load i32, i32* %7, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %168, %150, %102
  %194 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %195 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %196 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %195, i32 0, i32 1
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @snd_wm8776_write(%struct.snd_wm8776* %194, i64 %202, i32 %203)
  %205 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %206 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %205, i32 0, i32 1
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @WM8776_FLAG_STEREO, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %298

216:                                              ; preds = %193
  %217 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %218 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %217, i32 0, i32 1
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %226 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %225, i32 0, i32 1
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %224, %232
  br i1 %233, label %234, label %298

234:                                              ; preds = %216
  %235 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %236 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %239 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %238, i32 0, i32 1
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i32, i32* %237, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %249 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %248, i32 0, i32 1
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = xor i32 %255, -1
  %257 = and i32 %247, %256
  store i32 %257, i32* %7, align 4
  %258 = load i32, i32* %9, align 4
  %259 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %260 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %259, i32 0, i32 1
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @__ffs(i32 %266)
  %268 = shl i32 %258, %267
  %269 = load i32, i32* %7, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %7, align 4
  %271 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %272 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %271, i32 0, i32 1
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = load i32, i32* %6, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @WM8776_FLAG_VOL_UPDATE, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %234
  %283 = load i32, i32* @WM8776_VOL_UPDATE, align 4
  %284 = load i32, i32* %7, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %7, align 4
  br label %286

286:                                              ; preds = %282, %234
  %287 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %288 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %289 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %288, i32 0, i32 1
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 5
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = call i32 @snd_wm8776_write(%struct.snd_wm8776* %287, i64 %295, i32 %296)
  br label %298

298:                                              ; preds = %286, %216, %193
  br label %299

299:                                              ; preds = %298, %89
  ret i32 0
}

declare dso_local %struct.snd_wm8776* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @snd_wm8776_write(%struct.snd_wm8776*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
