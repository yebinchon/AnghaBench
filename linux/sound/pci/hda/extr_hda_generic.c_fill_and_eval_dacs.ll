; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_fill_and_eval_dacs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_fill_and_eval_dacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32, i8**, %struct.TYPE_4__, i8**, i64, %struct.TYPE_3__*, i8**, i32, i8**, i8**, i64, i32, i32, i8*, i8**, i8**, i8**, i32, %struct.auto_pin_cfg }
%struct.TYPE_4__ = type { i32, i8**, i8**, i8** }
%struct.TYPE_3__ = type { i8* }
%struct.auto_pin_cfg = type { i32, i32, i32, i64, i32*, i32*, i32* }

@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@BAD_MULTI_IO = common dso_local global i64 0, align 8
@BAD_NO_INDEP_HP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32)* @fill_and_eval_dacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_and_eval_dacs(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_gen_spec*, align 8
  %9 = alloca %struct.auto_pin_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %15, align 8
  store %struct.hda_gen_spec* %16, %struct.hda_gen_spec** %8, align 8
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 20
  store %struct.auto_pin_cfg* %18, %struct.auto_pin_cfg** %9, align 8
  %19 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %20 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %23 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %26 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %25, i32 0, i32 8
  %27 = load i8**, i8*** %26, align 8
  %28 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %29 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  store i8** %27, i8*** %30, align 8
  %31 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %32 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %31, i32 0, i32 8
  %33 = load i8**, i8*** %32, align 8
  %34 = call i32 @memset(i8** %33, i32 0, i32 8)
  %35 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %36 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = call i32 @memset(i8** %38, i32 0, i32 8)
  %40 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %41 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = call i32 @memset(i8** %43, i32 0, i32 8)
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %46 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %48 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %47, i32 0, i32 19
  %49 = call i32 @snd_array_free(i32* %48)
  %50 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %51 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %50, i32 0, i32 11
  %52 = load i8**, i8*** %51, align 8
  %53 = call i32 @memset(i8** %52, i32 0, i32 8)
  %54 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %55 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %54, i32 0, i32 5
  %56 = load i8**, i8*** %55, align 8
  %57 = call i32 @memset(i8** %56, i32 0, i32 8)
  %58 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %59 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %58, i32 0, i32 3
  %60 = load i8**, i8*** %59, align 8
  %61 = call i32 @memset(i8** %60, i32 0, i32 8)
  %62 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %63 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %62, i32 0, i32 10
  %64 = load i8**, i8*** %63, align 8
  %65 = call i32 @memset(i8** %64, i32 0, i32 8)
  %66 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %67 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %66, i32 0, i32 18
  %68 = load i8**, i8*** %67, align 8
  %69 = call i32 @memset(i8** %68, i32 0, i32 8)
  %70 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %71 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %70, i32 0, i32 17
  %72 = load i8**, i8*** %71, align 8
  %73 = call i32 @memset(i8** %72, i32 0, i32 8)
  %74 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %75 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %74, i32 0, i32 16
  %76 = load i8**, i8*** %75, align 8
  %77 = call i32 @memset(i8** %76, i32 0, i32 8)
  %78 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %79 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %78, i32 0, i32 15
  %80 = call i32 @memset(i8** %79, i32 0, i32 8)
  store i32 0, i32* %12, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %168

83:                                               ; preds = %3
  br label %84

84:                                               ; preds = %164, %83
  %85 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %86 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %87 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %90 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %93 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %92, i32 0, i32 8
  %94 = load i8**, i8*** %93, align 8
  %95 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %96 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %95, i32 0, i32 11
  %97 = load i8**, i8*** %96, align 8
  %98 = call i32 @map_singles(%struct.hda_codec* %85, i32 %88, i32* %91, i8** %94, i8** %97)
  store i32 %98, i32* %13, align 4
  %99 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %100 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %101 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %104 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %107 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i8**, i8*** %108, align 8
  %110 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %111 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %110, i32 0, i32 5
  %112 = load i8**, i8*** %111, align 8
  %113 = call i32 @map_singles(%struct.hda_codec* %99, i32 %102, i32* %105, i8** %109, i8** %112)
  %114 = load i32, i32* %13, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %117 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %118 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %121 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %120, i32 0, i32 6
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %124 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %128 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %127, i32 0, i32 3
  %129 = load i8**, i8*** %128, align 8
  %130 = call i32 @map_singles(%struct.hda_codec* %116, i32 %119, i32* %122, i8** %126, i8** %129)
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  %133 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %134 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %163, label %137

137:                                              ; preds = %84
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %137
  %141 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %142 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %163

145:                                              ; preds = %140
  %146 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %147 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %145
  %152 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %153 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %154 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %153, i32 0, i32 5
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @fill_multi_ios(%struct.hda_codec* %152, i32 %157, i32 1)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %151
  store i32 1, i32* %13, align 4
  br label %162

162:                                              ; preds = %161, %151
  br label %163

163:                                              ; preds = %162, %145, %140, %137, %84
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %84, label %167

167:                                              ; preds = %164
  br label %168

168:                                              ; preds = %167, %3
  %169 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %170 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %171 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %174 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %177 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %176, i32 0, i32 8
  %178 = load i8**, i8*** %177, align 8
  %179 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %180 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %179, i32 0, i32 11
  %181 = load i8**, i8*** %180, align 8
  %182 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %183 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %182, i32 0, i32 14
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @try_assign_dacs(%struct.hda_codec* %169, i32 %172, i32* %175, i8** %178, i8** %181, i32 %184)
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %12, align 4
  %188 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %189 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %219, label %192

192:                                              ; preds = %168
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %219

195:                                              ; preds = %192
  %196 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %197 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %219

200:                                              ; preds = %195
  %201 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %202 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %200
  %207 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %208 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %209 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %208, i32 0, i32 5
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @fill_multi_ios(%struct.hda_codec* %207, i32 %212, i32 0)
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %206
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %4, align 4
  br label %571

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218, %200, %195, %192, %168
  %220 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %221 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %252

225:                                              ; preds = %219
  %226 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %227 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %228 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %231 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %234 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 2
  %236 = load i8**, i8*** %235, align 8
  %237 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %238 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %237, i32 0, i32 5
  %239 = load i8**, i8*** %238, align 8
  %240 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %241 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %240, i32 0, i32 13
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @try_assign_dacs(%struct.hda_codec* %226, i32 %229, i32* %232, i8** %236, i8** %239, i32 %242)
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %225
  %247 = load i32, i32* %11, align 4
  store i32 %247, i32* %4, align 4
  br label %571

248:                                              ; preds = %225
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %248, %219
  %253 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %254 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %285

258:                                              ; preds = %252
  %259 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %260 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %261 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %264 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %263, i32 0, i32 6
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %267 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  %269 = load i8**, i8*** %268, align 8
  %270 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %271 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %270, i32 0, i32 3
  %272 = load i8**, i8*** %271, align 8
  %273 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %274 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %273, i32 0, i32 13
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @try_assign_dacs(%struct.hda_codec* %259, i32 %262, i32* %265, i8** %269, i8** %272, i32 %275)
  store i32 %276, i32* %11, align 4
  %277 = load i32, i32* %11, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %258
  %280 = load i32, i32* %11, align 4
  store i32 %280, i32* %4, align 4
  br label %571

281:                                              ; preds = %258
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %12, align 4
  br label %285

285:                                              ; preds = %281, %252
  %286 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %287 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %317, label %290

290:                                              ; preds = %285
  %291 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %292 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %317

295:                                              ; preds = %290
  %296 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %297 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %295
  %302 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %303 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %304 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %303, i32 0, i32 5
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @fill_multi_ios(%struct.hda_codec* %302, i32 %307, i32 0)
  store i32 %308, i32* %11, align 4
  %309 = load i32, i32* %11, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %301
  %312 = load i32, i32* %11, align 4
  store i32 %312, i32* %4, align 4
  br label %571

313:                                              ; preds = %301
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* %12, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %12, align 4
  br label %317

317:                                              ; preds = %313, %295, %290, %285
  %318 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %319 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %318, i32 0, i32 12
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %370

322:                                              ; preds = %317
  %323 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %324 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %325 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %324, i32 0, i32 11
  %326 = load i8**, i8*** %325, align 8
  %327 = getelementptr inbounds i8*, i8** %326, i64 0
  %328 = load i8*, i8** %327, align 8
  %329 = call i8* @check_aamix_out_path(%struct.hda_codec* %323, i8* %328)
  %330 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %331 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %330, i32 0, i32 10
  %332 = load i8**, i8*** %331, align 8
  %333 = getelementptr inbounds i8*, i8** %332, i64 0
  store i8* %329, i8** %333, align 8
  %334 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %335 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %338 = icmp ne i64 %336, %337
  br i1 %338, label %339, label %351

339:                                              ; preds = %322
  %340 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %341 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %342 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %341, i32 0, i32 5
  %343 = load i8**, i8*** %342, align 8
  %344 = getelementptr inbounds i8*, i8** %343, i64 0
  %345 = load i8*, i8** %344, align 8
  %346 = call i8* @check_aamix_out_path(%struct.hda_codec* %340, i8* %345)
  %347 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %348 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %347, i32 0, i32 10
  %349 = load i8**, i8*** %348, align 8
  %350 = getelementptr inbounds i8*, i8** %349, i64 1
  store i8* %346, i8** %350, align 8
  br label %351

351:                                              ; preds = %339, %322
  %352 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %353 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %356 = icmp ne i64 %354, %355
  br i1 %356, label %357, label %369

357:                                              ; preds = %351
  %358 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %359 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %360 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %359, i32 0, i32 3
  %361 = load i8**, i8*** %360, align 8
  %362 = getelementptr inbounds i8*, i8** %361, i64 0
  %363 = load i8*, i8** %362, align 8
  %364 = call i8* @check_aamix_out_path(%struct.hda_codec* %358, i8* %363)
  %365 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %366 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %365, i32 0, i32 10
  %367 = load i8**, i8*** %366, align 8
  %368 = getelementptr inbounds i8*, i8** %367, i64 2
  store i8* %364, i8** %368, align 8
  br label %369

369:                                              ; preds = %357, %351
  br label %370

370:                                              ; preds = %369, %317
  %371 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %372 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %371, i32 0, i32 9
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %399, label %375

375:                                              ; preds = %370
  %376 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %377 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %399

380:                                              ; preds = %375
  %381 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %382 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %381, i32 0, i32 3
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %399

386:                                              ; preds = %380
  %387 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %388 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %389 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %388, i32 0, i32 4
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 0
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @count_multiio_pins(%struct.hda_codec* %387, i32 %392)
  %394 = icmp sge i32 %393, 2
  br i1 %394, label %395, label %398

395:                                              ; preds = %386
  %396 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %397 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %396, i32 0, i32 0
  store i32 1, i32* %397, align 8
  br label %398

398:                                              ; preds = %395, %386
  br label %399

399:                                              ; preds = %398, %380, %375, %370
  %400 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %401 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %400, i32 0, i32 4
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 0
  store i32 0, i32* %402, align 8
  store i32 0, i32* %10, align 4
  br label %403

403:                                              ; preds = %458, %399
  %404 = load i32, i32* %10, align 4
  %405 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %406 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = icmp slt i32 %404, %407
  br i1 %408, label %409, label %461

409:                                              ; preds = %403
  %410 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %411 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %410, i32 0, i32 8
  %412 = load i8**, i8*** %411, align 8
  %413 = load i32, i32* %10, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8*, i8** %412, i64 %414
  %416 = load i8*, i8** %415, align 8
  %417 = icmp ne i8* %416, null
  br i1 %417, label %418, label %424

418:                                              ; preds = %409
  %419 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %420 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %419, i32 0, i32 4
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %421, align 8
  br label %457

424:                                              ; preds = %409
  %425 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %426 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %425, i32 0, i32 8
  %427 = load i8**, i8*** %426, align 8
  %428 = load i32, i32* %10, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8*, i8** %427, i64 %429
  %431 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %432 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %431, i32 0, i32 8
  %433 = load i8**, i8*** %432, align 8
  %434 = load i32, i32* %10, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8*, i8** %433, i64 %435
  %437 = getelementptr inbounds i8*, i8** %436, i64 1
  %438 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %439 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* %10, align 4
  %442 = sub nsw i32 %440, %441
  %443 = sub nsw i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = mul i64 4, %444
  %446 = trunc i64 %445 to i32
  %447 = call i32 @memmove(i8** %430, i8** %437, i32 %446)
  %448 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %449 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %448, i32 0, i32 8
  %450 = load i8**, i8*** %449, align 8
  %451 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %452 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = sub nsw i32 %453, 1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8*, i8** %450, i64 %455
  store i8* null, i8** %456, align 8
  br label %457

457:                                              ; preds = %424, %418
  br label %458

458:                                              ; preds = %457
  %459 = load i32, i32* %10, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %10, align 4
  br label %403

461:                                              ; preds = %403
  %462 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %463 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %462, i32 0, i32 4
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = mul nsw i32 %465, 2
  %467 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %468 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %467, i32 0, i32 2
  store i32 %466, i32* %468, align 8
  %469 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %470 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %469, i32 0, i32 1
  store i32 %466, i32* %470, align 4
  %471 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %472 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = icmp eq i32 %473, 2
  br i1 %474, label %475, label %502

475:                                              ; preds = %461
  store i32 0, i32* %10, align 4
  br label %476

476:                                              ; preds = %498, %475
  %477 = load i32, i32* %10, align 4
  %478 = icmp slt i32 %477, 2
  br i1 %478, label %479, label %501

479:                                              ; preds = %476
  %480 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %481 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %480, i32 0, i32 7
  %482 = load %struct.TYPE_3__*, %struct.TYPE_3__** %481, align 8
  %483 = load i32, i32* %10, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %482, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 0
  %487 = load i8*, i8** %486, align 8
  %488 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %489 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %488, i32 0, i32 8
  %490 = load i8**, i8*** %489, align 8
  %491 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %492 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %491, i32 0, i32 4
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %493, align 8
  %496 = sext i32 %494 to i64
  %497 = getelementptr inbounds i8*, i8** %490, i64 %496
  store i8* %487, i8** %497, align 8
  br label %498

498:                                              ; preds = %479
  %499 = load i32, i32* %10, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %10, align 4
  br label %476

501:                                              ; preds = %476
  br label %516

502:                                              ; preds = %461
  %503 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %504 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %515

507:                                              ; preds = %502
  %508 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %509 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %508, i32 0, i32 0
  store i32 0, i32* %509, align 8
  %510 = load i64, i64* @BAD_MULTI_IO, align 8
  %511 = load i32, i32* %12, align 4
  %512 = sext i32 %511 to i64
  %513 = add nsw i64 %512, %510
  %514 = trunc i64 %513 to i32
  store i32 %514, i32* %12, align 4
  br label %515

515:                                              ; preds = %507, %502
  br label %516

516:                                              ; preds = %515, %501
  %517 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %518 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %517, i32 0, i32 6
  %519 = load i64, i64* %518, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %531

521:                                              ; preds = %516
  %522 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %523 = call i32 @indep_hp_possible(%struct.hda_codec* %522)
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %531, label %525

525:                                              ; preds = %521
  %526 = load i64, i64* @BAD_NO_INDEP_HP, align 8
  %527 = load i32, i32* %12, align 4
  %528 = sext i32 %527 to i64
  %529 = add nsw i64 %528, %526
  %530 = trunc i64 %529 to i32
  store i32 %530, i32* %12, align 4
  br label %531

531:                                              ; preds = %525, %521, %516
  %532 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %533 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %532, i32 0, i32 3
  %534 = load i64, i64* %533, align 8
  %535 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %536 = icmp ne i64 %534, %535
  br i1 %536, label %537, label %550

537:                                              ; preds = %531
  %538 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %539 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %540 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %543 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %542, i32 0, i32 4
  %544 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %543, i32 0, i32 2
  %545 = load i8**, i8*** %544, align 8
  %546 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %547 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %546, i32 0, i32 5
  %548 = load i8**, i8*** %547, align 8
  %549 = call i32 @refill_shared_dacs(%struct.hda_codec* %538, i32 %541, i8** %545, i8** %548)
  br label %550

550:                                              ; preds = %537, %531
  %551 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %552 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %551, i32 0, i32 3
  %553 = load i64, i64* %552, align 8
  %554 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %555 = icmp ne i64 %553, %554
  br i1 %555, label %556, label %569

556:                                              ; preds = %550
  %557 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %558 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %9, align 8
  %559 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 8
  %561 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %562 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %561, i32 0, i32 4
  %563 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %562, i32 0, i32 1
  %564 = load i8**, i8*** %563, align 8
  %565 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %566 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %565, i32 0, i32 3
  %567 = load i8**, i8*** %566, align 8
  %568 = call i32 @refill_shared_dacs(%struct.hda_codec* %557, i32 %560, i8** %564, i8** %567)
  br label %569

569:                                              ; preds = %556, %550
  %570 = load i32, i32* %12, align 4
  store i32 %570, i32* %4, align 4
  br label %571

571:                                              ; preds = %569, %311, %279, %246, %216
  %572 = load i32, i32* %4, align 4
  ret i32 %572
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @snd_array_free(i32*) #1

declare dso_local i32 @map_singles(%struct.hda_codec*, i32, i32*, i8**, i8**) #1

declare dso_local i32 @fill_multi_ios(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @try_assign_dacs(%struct.hda_codec*, i32, i32*, i8**, i8**, i32) #1

declare dso_local i8* @check_aamix_out_path(%struct.hda_codec*, i8*) #1

declare dso_local i32 @count_multiio_pins(%struct.hda_codec*, i32) #1

declare dso_local i32 @memmove(i8**, i8**, i32) #1

declare dso_local i32 @indep_hp_possible(%struct.hda_codec*) #1

declare dso_local i32 @refill_shared_dacs(%struct.hda_codec*, i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
