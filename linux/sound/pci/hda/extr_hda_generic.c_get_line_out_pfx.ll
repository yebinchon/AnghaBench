; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_get_line_out_pfx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_get_line_out_pfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, %struct.TYPE_4__, i32*, i32*, %struct.TYPE_3__, i32, %struct.auto_pin_cfg }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32*, i32* }
%struct.auto_pin_cfg = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@channel_name = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Bass Speaker\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Headphone+LO\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Speaker+LO\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Line Out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hda_codec*, i32, i32*, i32)* @get_line_out_pfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_line_out_pfx(%struct.hda_codec* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_gen_spec*, align 8
  %11 = alloca %struct.auto_pin_cfg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 1
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %15, align 8
  store %struct.hda_gen_spec* %16, %struct.hda_gen_spec** %10, align 8
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 6
  store %struct.auto_pin_cfg* %18, %struct.auto_pin_cfg** %11, align 8
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %21 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %52

24:                                               ; preds = %4
  %25 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %26 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %24
  %30 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %31 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %36 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %41 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %46 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %51, i8** %5, align 8
  br label %258

52:                                               ; preds = %39, %34, %29, %24, %4
  %53 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %54 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %92

58:                                               ; preds = %52
  %59 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %60 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %92, label %63

63:                                               ; preds = %58
  %64 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %65 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %92, label %68

68:                                               ; preds = %63
  %69 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %70 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %68
  %77 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %78 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %76
  %85 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %86 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %91, i8** %5, align 8
  br label %258

92:                                               ; preds = %76, %68, %63, %58, %52
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %95 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %93, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i8**, i8*** @channel_name, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %5, align 8
  br label %258

104:                                              ; preds = %92
  %105 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %106 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %234 [
    i32 128, label %108
    i32 130, label %144
    i32 129, label %175
  ]

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %108
  %112 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %113 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %118 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %119 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @path_has_mixer(%struct.hda_codec* %117, i32 %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %116
  br label %234

127:                                              ; preds = %116, %111, %108
  %128 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %129 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %258

133:                                              ; preds = %127
  %134 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %135 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  store i8* %142, i8** %5, align 8
  br label %258

143:                                              ; preds = %133
  br label %234

144:                                              ; preds = %104
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %144
  %148 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %149 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %154 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %155 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @path_has_mixer(%struct.hda_codec* %153, i32 %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %152
  br label %234

163:                                              ; preds = %152, %147, %144
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %168 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %234

172:                                              ; preds = %166, %163
  %173 = load i32, i32* %7, align 4
  %174 = load i32*, i32** %8, align 8
  store i32 %173, i32* %174, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %258

175:                                              ; preds = %104
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %233, label %178

178:                                              ; preds = %175
  %179 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %180 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %233

183:                                              ; preds = %178
  %184 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %185 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %233

188:                                              ; preds = %183
  %189 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %190 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %191 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @path_has_mixer(%struct.hda_codec* %189, i32 %194, i32 %195)
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %12, align 4
  %200 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %201 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %202 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @path_has_mixer(%struct.hda_codec* %200, i32 %205, i32 %206)
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %13, align 4
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %188
  %214 = load i32, i32* %13, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %213
  %217 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %218 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %223, i8** %5, align 8
  br label %258

224:                                              ; preds = %213, %188
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %258

228:                                              ; preds = %224
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %258

232:                                              ; preds = %228
  br label %233

233:                                              ; preds = %232, %183, %178, %175
  br label %234

234:                                              ; preds = %233, %104, %171, %162, %143, %126
  %235 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %11, align 8
  %236 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  %241 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %239
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %258

245:                                              ; preds = %239, %234
  %246 = load i32, i32* %7, align 4
  %247 = load i8**, i8*** @channel_name, align 8
  %248 = call i32 @ARRAY_SIZE(i8** %247)
  %249 = icmp sge i32 %246, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = call i32 (...) @snd_BUG()
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %258

252:                                              ; preds = %245
  %253 = load i8**, i8*** @channel_name, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  %257 = load i8*, i8** %256, align 8
  store i8* %257, i8** %5, align 8
  br label %258

258:                                              ; preds = %252, %250, %244, %231, %227, %216, %172, %138, %132, %98, %84, %44
  %259 = load i8*, i8** %5, align 8
  ret i8* %259
}

declare dso_local i32 @path_has_mixer(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
