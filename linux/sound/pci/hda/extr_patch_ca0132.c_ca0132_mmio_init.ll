; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_mmio_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_mmio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64 }

@QUIRK_AE5 = common dso_local global i64 0, align 8
@QUIRK_ZXR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_mmio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_mmio_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  store %struct.ca0132_spec* %6, %struct.ca0132_spec** %3, align 8
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %8 = call i64 @ca0132_quirk(%struct.ca0132_spec* %7)
  %9 = load i64, i64* @QUIRK_AE5, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %13 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1024
  %16 = call i32 @writel(i32 1, i64 %15)
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %19 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1024
  %22 = call i32 @writel(i32 0, i64 %21)
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %25 = call i64 @ca0132_quirk(%struct.ca0132_spec* %24)
  %26 = load i64, i64* @QUIRK_AE5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %30 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1032
  %33 = call i32 @writel(i32 1, i64 %32)
  br label %40

34:                                               ; preds = %23
  %35 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %36 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1032
  %39 = call i32 @writel(i32 0, i64 %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %42 = call i64 @ca0132_quirk(%struct.ca0132_spec* %41)
  %43 = load i64, i64* @QUIRK_AE5, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %47 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1036
  %50 = call i32 @writel(i32 1, i64 %49)
  br label %57

51:                                               ; preds = %40
  %52 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %53 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1036
  %56 = call i32 @writel(i32 0, i64 %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %59 = call i64 @ca0132_quirk(%struct.ca0132_spec* %58)
  %60 = load i64, i64* @QUIRK_ZXR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %64 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 28
  %67 = call i32 @writel(i32 8914496, i64 %66)
  br label %74

68:                                               ; preds = %57
  %69 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %70 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 28
  %73 = call i32 @writel(i32 8914560, i64 %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %76 = call i64 @ca0132_quirk(%struct.ca0132_spec* %75)
  %77 = load i64, i64* @QUIRK_AE5, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %81 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 3084
  %84 = call i32 @writel(i32 128, i64 %83)
  br label %91

85:                                               ; preds = %74
  %86 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %87 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 3084
  %90 = call i32 @writel(i32 131, i64 %89)
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %93 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 3072
  %96 = call i32 @writel(i32 48, i64 %95)
  %97 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %98 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 3076
  %101 = call i32 @writel(i32 0, i64 %100)
  %102 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %103 = call i64 @ca0132_quirk(%struct.ca0132_spec* %102)
  %104 = load i64, i64* @QUIRK_AE5, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %91
  %107 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %108 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 3084
  %111 = call i32 @writel(i32 0, i64 %110)
  br label %118

112:                                              ; preds = %91
  %113 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %114 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 3084
  %117 = call i32 @writel(i32 3, i64 %116)
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %120 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 3084
  %123 = call i32 @writel(i32 3, i64 %122)
  %124 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %125 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 3084
  %128 = call i32 @writel(i32 3, i64 %127)
  %129 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %130 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 3084
  %133 = call i32 @writel(i32 3, i64 %132)
  %134 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %135 = call i64 @ca0132_quirk(%struct.ca0132_spec* %134)
  %136 = load i64, i64* @QUIRK_AE5, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %118
  %139 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %140 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 3080
  %143 = call i32 @writel(i32 1, i64 %142)
  br label %150

144:                                              ; preds = %118
  %145 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %146 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 3080
  %149 = call i32 @writel(i32 193, i64 %148)
  br label %150

150:                                              ; preds = %144, %138
  %151 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %152 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 3080
  %155 = call i32 @writel(i32 241, i64 %154)
  %156 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %157 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 3080
  %160 = call i32 @writel(i32 1, i64 %159)
  %161 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %162 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 3080
  %165 = call i32 @writel(i32 199, i64 %164)
  %166 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %167 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 3080
  %170 = call i32 @writel(i32 193, i64 %169)
  %171 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %172 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 3076
  %175 = call i32 @writel(i32 128, i64 %174)
  %176 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %177 = call i64 @ca0132_quirk(%struct.ca0132_spec* %176)
  %178 = load i64, i64* @QUIRK_AE5, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %276

180:                                              ; preds = %150
  %181 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %182 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1068
  %185 = call i32 @writel(i32 0, i64 %184)
  %186 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %187 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1132
  %190 = call i32 @writel(i32 0, i64 %189)
  %191 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %192 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, 1196
  %195 = call i32 @writel(i32 0, i64 %194)
  %196 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %197 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %198, 1260
  %200 = call i32 @writel(i32 0, i64 %199)
  %201 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %202 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, 1084
  %205 = call i32 @writel(i32 0, i64 %204)
  %206 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %207 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, 1148
  %210 = call i32 @writel(i32 0, i64 %209)
  %211 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %212 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 1212
  %215 = call i32 @writel(i32 0, i64 %214)
  %216 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %217 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1276
  %220 = call i32 @writel(i32 0, i64 %219)
  %221 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %222 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, 256
  %225 = call i32 @writel(i32 1536, i64 %224)
  %226 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %227 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1040
  %230 = call i32 @writel(i32 20, i64 %229)
  %231 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %232 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 256
  %235 = call i32 @writel(i32 1551, i64 %234)
  %236 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %237 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, 256
  %240 = call i32 @writel(i32 1807, i64 %239)
  %241 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %242 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, 2096
  %245 = call i32 @writel(i32 2815, i64 %244)
  %246 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %247 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, 2156
  %250 = call i32 @writel(i32 0, i64 %249)
  %251 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %252 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %253, 2048
  %255 = call i32 @writel(i32 107, i64 %254)
  %256 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %257 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, 2156
  %260 = call i32 @writel(i32 1, i64 %259)
  %261 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %262 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = add nsw i64 %263, 2048
  %265 = call i32 @writel(i32 107, i64 %264)
  %266 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %267 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, 2052
  %270 = call i32 @writel(i32 87, i64 %269)
  %271 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %272 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %273, 524
  %275 = call i32 @writel(i32 8388608, i64 %274)
  br label %276

276:                                              ; preds = %180, %150
  ret void
}

declare dso_local i64 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
