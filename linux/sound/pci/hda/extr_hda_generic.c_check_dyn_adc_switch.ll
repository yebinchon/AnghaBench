; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_check_dyn_adc_switch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_check_dyn_adc_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32*, i32, i64, i64, i64**, i32*, %struct.hda_input_mux }
%struct.hda_input_mux = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"enabling ADC switching\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"reducing to a single ADC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @check_dyn_adc_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dyn_adc_switch(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca %struct.hda_input_mux*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  store %struct.hda_gen_spec* %11, %struct.hda_gen_spec** %3, align 8
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 7
  store %struct.hda_input_mux* %13, %struct.hda_input_mux** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %59, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %42, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %24 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %29 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %28, i32 0, i32 5
  %30 = load i64**, i64*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64*, i64** %30, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %45

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %21

45:                                               ; preds = %40, %21
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %48 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %51, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %14

62:                                               ; preds = %14
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %113, label %65

65:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %105, %65
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %69 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %101, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %76 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %73
  %80 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %81 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %80, i32 0, i32 5
  %82 = load i64**, i64*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64*, i64** %82, i64 %84
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %79
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %95 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  br label %104

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %73

104:                                              ; preds = %92, %73
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %66

108:                                              ; preds = %66
  %109 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %110 = call i32 @codec_dbg(%struct.hda_codec* %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %111 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %112 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %111, i32 0, i32 2
  store i32 1, i32* %112, align 8
  br label %217

113:                                              ; preds = %62
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %116 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %216

119:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %209, %119
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %123 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %212

126:                                              ; preds = %120
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %7, align 4
  %129 = shl i32 1, %128
  %130 = and i32 %127, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  br label %209

133:                                              ; preds = %126
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %206

137:                                              ; preds = %133
  %138 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %139 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %146 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %145, i32 0, i32 6
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %202, %137
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %154 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %205

157:                                              ; preds = %151
  %158 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %159 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %160 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %159, i32 0, i32 5
  %161 = load i64**, i64*** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64*, i64** %161, i64 %163
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @invalidate_nid_path(%struct.hda_codec* %158, i64 %169)
  %171 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %172 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %171, i32 0, i32 5
  %173 = load i64**, i64*** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64*, i64** %173, i64 %175
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %183 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %182, i32 0, i32 5
  %184 = load i64**, i64*** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64*, i64** %184, i64 %186
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  store i64 %181, i64* %191, align 8
  %192 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %193 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %192, i32 0, i32 5
  %194 = load i64**, i64*** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64*, i64** %194, i64 %196
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %157
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %151

205:                                              ; preds = %151
  br label %206

206:                                              ; preds = %205, %133
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %206, %132
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %120

212:                                              ; preds = %120
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %215 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %212, %113
  br label %217

217:                                              ; preds = %216, %108
  %218 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %219 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %232, label %222

222:                                              ; preds = %217
  %223 = load %struct.hda_input_mux*, %struct.hda_input_mux** %4, align 8
  %224 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %237

227:                                              ; preds = %222
  %228 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %229 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %227, %217
  %233 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %234 = call i32 @codec_dbg(%struct.hda_codec* %233, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %235 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %236 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %235, i32 0, i32 0
  store i32 1, i32* %236, align 8
  br label %237

237:                                              ; preds = %232, %227, %222
  %238 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %239 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %237
  %243 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %244 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %249 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  br label %250

250:                                              ; preds = %247, %242, %237
  ret i32 0
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @invalidate_nid_path(%struct.hda_codec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
