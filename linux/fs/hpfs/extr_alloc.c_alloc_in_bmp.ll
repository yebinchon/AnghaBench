; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_alloc_in_bmp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_alloc_in_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Bad allocation size: %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"aib\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Allocation doesn't work! Wanted %d, allocated at %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, i32)* @alloc_in_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_in_bmp(%struct.super_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.quad_buffer_head, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, -16384
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 16383
  %24 = load i32, i32* %8, align 4
  %25 = sub i32 %24, 1
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %5, align 4
  br label %292

37:                                               ; preds = %30, %4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, -16384
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 14
  %44 = call i32* @hpfs_map_bitmap(%struct.super_block* %41, i32 %43, %struct.quad_buffer_head* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %44, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %290

47:                                               ; preds = %40
  br label %54

48:                                               ; preds = %37
  %49 = load %struct.super_block*, %struct.super_block** %6, align 8
  %50 = call i32* @hpfs_map_dnode_bitmap(%struct.super_block* %49, %struct.quad_buffer_head* %10)
  store i32* %50, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %290

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %57, %58
  %60 = call i32 @tstbits(i32* %55, i32 %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add i32 %63, %64
  store i32 %65, i32* %18, align 4
  br label %231

66:                                               ; preds = %54
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %67, %68
  store i32 %69, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %112, %66
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add i32 %73, %74
  %76 = call i32 @tstbits(i32* %71, i32 %72, i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %70
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load i32, i32* %15, align 4
  %86 = sub i32 %85, 1
  %87 = load i32, i32* %8, align 4
  %88 = sub i32 %87, 1
  %89 = xor i32 %88, -1
  %90 = and i32 %86, %89
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %90, %91
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %84, %78
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = lshr i32 %97, 5
  %99 = load i32, i32* %13, align 4
  %100 = lshr i32 %99, 5
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  store i32 1, i32* %17, align 4
  %103 = load i32, i32* %13, align 4
  %104 = and i32 %103, 31
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %102, %96
  br label %112

106:                                              ; preds = %93
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ugt i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %113

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %105
  br label %70

113:                                              ; preds = %110, %70
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add i32 %117, %118
  store i32 %119, i32* %18, align 4
  br label %231

120:                                              ; preds = %113
  %121 = load i32, i32* %13, align 4
  %122 = lshr i32 %121, 5
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %226, %120
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %14, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %124
  br label %221

133:                                              ; preds = %124
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = add i32 %134, %135
  %137 = icmp uge i32 %136, 63
  br i1 %137, label %138, label %147

138:                                              ; preds = %133
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %14, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le32_to_cpu(i32 %143)
  %145 = icmp ne i32 %144, -1
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %221

147:                                              ; preds = %138, %133
  %148 = load i32, i32* %14, align 4
  %149 = shl i32 %148, 5
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ugt i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %147
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sub i32 %154, 1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  store i32 %159, i32* %19, align 4
  br label %160

160:                                              ; preds = %164, %152
  %161 = load i32, i32* %19, align 4
  %162 = and i32 %161, -2147483648
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i32, i32* %15, align 4
  %166 = add i32 %165, -1
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %19, align 4
  %168 = shl i32 %167, 1
  store i32 %168, i32* %19, align 4
  br label %160

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169, %147
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 1
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load i32, i32* %15, align 4
  %175 = sub i32 %174, 1
  %176 = load i32, i32* %8, align 4
  %177 = sub i32 %176, 1
  %178 = xor i32 %177, -1
  %179 = and i32 %175, %178
  %180 = load i32, i32* %8, align 4
  %181 = add i32 %179, %180
  store i32 %181, i32* %15, align 4
  br label %182

182:                                              ; preds = %173, %170
  br label %183

183:                                              ; preds = %212, %182
  %184 = load i32*, i32** %11, align 8
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = add i32 %186, %187
  %189 = call i32 @tstbits(i32* %184, i32 %185, i32 %188)
  store i32 %189, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %213

191:                                              ; preds = %183
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %15, align 4
  %194 = add i32 %193, %192
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 1
  br i1 %196, label %197, label %206

197:                                              ; preds = %191
  %198 = load i32, i32* %15, align 4
  %199 = sub i32 %198, 1
  %200 = load i32, i32* %8, align 4
  %201 = sub i32 %200, 1
  %202 = xor i32 %201, -1
  %203 = and i32 %199, %202
  %204 = load i32, i32* %8, align 4
  %205 = add i32 %203, %204
  store i32 %205, i32* %15, align 4
  br label %206

206:                                              ; preds = %197, %191
  %207 = load i32, i32* %15, align 4
  %208 = lshr i32 %207, 5
  %209 = load i32, i32* %14, align 4
  %210 = icmp ugt i32 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %213

212:                                              ; preds = %206
  br label %183

213:                                              ; preds = %211, %183
  %214 = load i32, i32* %16, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %15, align 4
  %219 = add i32 %217, %218
  store i32 %219, i32* %18, align 4
  br label %231

220:                                              ; preds = %213
  br label %221

221:                                              ; preds = %220, %146, %132
  %222 = load i32, i32* %14, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %14, align 4
  %225 = and i32 %224, 511
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %221
  %227 = load i32, i32* %14, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %124, label %230

230:                                              ; preds = %226
  br label %231

231:                                              ; preds = %230, %216, %116, %62
  %232 = load i32, i32* %18, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %287

234:                                              ; preds = %231
  %235 = load %struct.super_block*, %struct.super_block** %6, align 8
  %236 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %235)
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %269

240:                                              ; preds = %234
  %241 = load i32, i32* %18, align 4
  %242 = ashr i32 %241, 14
  %243 = load i32, i32* %12, align 4
  %244 = lshr i32 %243, 14
  %245 = icmp ne i32 %242, %244
  br i1 %245, label %264, label %246

246:                                              ; preds = %240
  %247 = load i32*, i32** %11, align 8
  %248 = load i32, i32* %18, align 4
  %249 = and i32 %248, 16383
  %250 = ashr i32 %249, 5
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %247, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @le32_to_cpu(i32 %253)
  %255 = load i32, i32* %8, align 4
  %256 = shl i32 1, %255
  %257 = sub nsw i32 %256, 1
  %258 = load i32, i32* %18, align 4
  %259 = and i32 %258, 31
  %260 = shl i32 %257, %259
  %261 = xor i32 %260, -1
  %262 = or i32 %254, %261
  %263 = icmp ne i32 %262, -1
  br i1 %263, label %264, label %269

264:                                              ; preds = %246, %240
  %265 = load %struct.super_block*, %struct.super_block** %6, align 8
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* %18, align 4
  %268 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %265, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %266, i32 %267)
  store i32 0, i32* %18, align 4
  br label %288

269:                                              ; preds = %246, %234
  %270 = load i32, i32* %8, align 4
  %271 = shl i32 1, %270
  %272 = sub nsw i32 %271, 1
  %273 = load i32, i32* %18, align 4
  %274 = and i32 %273, 31
  %275 = shl i32 %272, %274
  %276 = xor i32 %275, -1
  %277 = call i32 @cpu_to_le32(i32 %276)
  %278 = load i32*, i32** %11, align 8
  %279 = load i32, i32* %18, align 4
  %280 = and i32 %279, 16383
  %281 = ashr i32 %280, 5
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %278, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, %277
  store i32 %285, i32* %283, align 4
  %286 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %10)
  br label %287

287:                                              ; preds = %269, %231
  br label %288

288:                                              ; preds = %287, %264
  %289 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  br label %290

290:                                              ; preds = %288, %52, %46
  %291 = load i32, i32* %18, align 4
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %290, %33
  %293 = load i32, i32* %5, align 4
  ret i32 %293
}

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

declare dso_local i32* @hpfs_map_dnode_bitmap(%struct.super_block*, %struct.quad_buffer_head*) #1

declare dso_local i32 @tstbits(i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
