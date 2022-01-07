; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_uni2asc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_unicode.c_hfsplus_uni2asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_unistr = type { i32, i32* }
%struct.nls_table = type { i32 (i32, i8*, i32)* }
%struct.TYPE_2__ = type { i32, %struct.nls_table* }

@HFSPLUS_SB_NODECOMPOSE = common dso_local global i32 0, align 4
@hfsplus_compose_table = common dso_local global i32* null, align 8
@Hangul_VBase = common dso_local global i32 0, align 4
@Hangul_VCount = common dso_local global i32 0, align 4
@Hangul_LBase = common dso_local global i32 0, align 4
@Hangul_TCount = common dso_local global i32 0, align 4
@Hangul_SBase = common dso_local global i64 0, align 8
@Hangul_TBase = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_uni2asc(%struct.super_block* %0, %struct.hfsplus_unistr* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.hfsplus_unistr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nls_table*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.hfsplus_unistr* %1, %struct.hfsplus_unistr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = call %struct.TYPE_2__* @HFSPLUS_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.nls_table*, %struct.nls_table** %24, align 8
  store %struct.nls_table* %25, %struct.nls_table** %10, align 8
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %11, align 8
  %27 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %6, align 8
  %28 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  %30 = load %struct.hfsplus_unistr*, %struct.hfsplus_unistr** %6, align 8
  %31 = getelementptr inbounds %struct.hfsplus_unistr, %struct.hfsplus_unistr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @be16_to_cpu(i32 %32)
  store i32 %33, i32* %19, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %18, align 4
  store i32* null, i32** %15, align 8
  %36 = load i32, i32* @HFSPLUS_SB_NODECOMPOSE, align 4
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = call %struct.TYPE_2__* @HFSPLUS_SB(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @test_bit(i32 %36, i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %21, align 4
  br label %44

44:                                               ; preds = %257, %4
  %45 = load i32, i32* %19, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %265

47:                                               ; preds = %44
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %9, align 8
  %50 = load i32, i32* %48, align 4
  %51 = call i32 @be16_to_cpu(i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %19, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %21, align 4
  %55 = call i64 @likely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i32*, i32** @hfsplus_compose_table, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32* @hfsplus_compose_lookup(i32* %58, i32 %59)
  store i32* %60, i32** %15, align 8
  br label %61

61:                                               ; preds = %57, %47
  %62 = load i32*, i32** %15, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %12, align 4
  br label %69

68:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %134

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 65535
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %239

76:                                               ; preds = %72
  %77 = load i32, i32* %19, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %232

80:                                               ; preds = %76
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be16_to_cpu(i32 %82)
  %84 = load i32, i32* @Hangul_VBase, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @Hangul_VCount, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %133

89:                                               ; preds = %80
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @Hangul_LBase, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* @Hangul_VCount, align 4
  %94 = mul nsw i32 %92, %93
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* @Hangul_TCount, align 4
  %99 = mul nsw i32 %97, %98
  store i32 %99, i32* %12, align 4
  %100 = load i64, i64* @Hangul_SBase, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %12, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %9, align 8
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %89
  br label %239

112:                                              ; preds = %89
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @be16_to_cpu(i32 %114)
  %116 = load i32, i32* @Hangul_TBase, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %112
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @Hangul_TCount, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %12, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %9, align 8
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %124, %120, %112
  br label %239

133:                                              ; preds = %80
  br label %134

134:                                              ; preds = %133, %69
  br label %135

135:                                              ; preds = %134, %176
  %136 = load i32, i32* %19, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  br label %232

139:                                              ; preds = %135
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @be16_to_cpu(i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %21, align 4
  %144 = call i64 @likely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i32*, i32** @hfsplus_compose_table, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i32* @hfsplus_compose_lookup(i32* %147, i32 %148)
  store i32* %149, i32** %15, align 8
  br label %150

150:                                              ; preds = %146, %139
  %151 = load i32*, i32** %15, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %189

154:                                              ; preds = %150
  %155 = load i32, i32* %13, align 4
  switch i32 %155, label %158 [
    i32 0, label %156
    i32 47, label %157
  ]

156:                                              ; preds = %154
  store i32 9216, i32* %13, align 4
  br label %158

157:                                              ; preds = %154
  store i32 58, i32* %13, align 4
  br label %158

158:                                              ; preds = %154, %157, %156
  %159 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %160 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %159, i32 0, i32 0
  %161 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = load i32, i32* %18, align 4
  %165 = call i32 %161(i32 %162, i8* %163, i32 %164)
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %158
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* @ENAMETOOLONG, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %266

174:                                              ; preds = %168
  %175 = load i8*, i8** %11, align 8
  store i8 63, i8* %175, align 1
  store i32 1, i32* %20, align 4
  br label %176

176:                                              ; preds = %174, %158
  %177 = load i32, i32* %20, align 4
  %178 = load i8*, i8** %11, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8* %180, i8** %11, align 8
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %18, align 4
  %183 = sub nsw i32 %182, %181
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %13, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %9, align 8
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %19, align 4
  br label %135

189:                                              ; preds = %153
  %190 = load i32*, i32** %15, align 8
  %191 = load i32, i32* %13, align 4
  %192 = call i32* @hfsplus_compose_lookup(i32* %190, i32 %191)
  store i32* %192, i32** %16, align 8
  %193 = load i32*, i32** %16, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %231

195:                                              ; preds = %189
  store i32 1, i32* %17, align 4
  br label %196

196:                                              ; preds = %212, %195
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %19, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %216

200:                                              ; preds = %196
  %201 = load i32*, i32** %16, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @be16_to_cpu(i32 %206)
  %208 = call i32* @hfsplus_compose_lookup(i32* %201, i32 %207)
  store i32* %208, i32** %15, align 8
  %209 = load i32*, i32** %15, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %200
  br label %216

212:                                              ; preds = %200
  %213 = load i32, i32* %17, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %17, align 4
  %215 = load i32*, i32** %15, align 8
  store i32* %215, i32** %16, align 8
  br label %196

216:                                              ; preds = %211, %196
  %217 = load i32*, i32** %16, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %216
  %223 = load i32, i32* %17, align 4
  %224 = load i32*, i32** %9, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32* %226, i32** %9, align 8
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %19, align 4
  %229 = sub nsw i32 %228, %227
  store i32 %229, i32* %19, align 4
  br label %239

230:                                              ; preds = %216
  br label %231

231:                                              ; preds = %230, %189
  br label %232

232:                                              ; preds = %231, %138, %79
  %233 = load i32, i32* %13, align 4
  switch i32 %233, label %236 [
    i32 0, label %234
    i32 47, label %235
  ]

234:                                              ; preds = %232
  store i32 9216, i32* %12, align 4
  br label %238

235:                                              ; preds = %232
  store i32 58, i32* %12, align 4
  br label %238

236:                                              ; preds = %232
  %237 = load i32, i32* %13, align 4
  store i32 %237, i32* %12, align 4
  br label %238

238:                                              ; preds = %236, %235, %234
  br label %239

239:                                              ; preds = %238, %222, %132, %111, %75
  %240 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %241 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %240, i32 0, i32 0
  %242 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = load i8*, i8** %11, align 8
  %245 = load i32, i32* %18, align 4
  %246 = call i32 %242(i32 %243, i8* %244, i32 %245)
  store i32 %246, i32* %20, align 4
  %247 = load i32, i32* %20, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %239
  %250 = load i32, i32* %20, align 4
  %251 = load i32, i32* @ENAMETOOLONG, align 4
  %252 = sub nsw i32 0, %251
  %253 = icmp eq i32 %250, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  br label %266

255:                                              ; preds = %249
  %256 = load i8*, i8** %11, align 8
  store i8 63, i8* %256, align 1
  store i32 1, i32* %20, align 4
  br label %257

257:                                              ; preds = %255, %239
  %258 = load i32, i32* %20, align 4
  %259 = load i8*, i8** %11, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %11, align 8
  %262 = load i32, i32* %20, align 4
  %263 = load i32, i32* %18, align 4
  %264 = sub nsw i32 %263, %262
  store i32 %264, i32* %18, align 4
  br label %44

265:                                              ; preds = %44
  store i32 0, i32* %20, align 4
  br label %266

266:                                              ; preds = %265, %254, %173
  %267 = load i8*, i8** %11, align 8
  %268 = load i8*, i8** %7, align 8
  %269 = ptrtoint i8* %267 to i64
  %270 = ptrtoint i8* %268 to i64
  %271 = sub i64 %269, %270
  %272 = trunc i64 %271 to i32
  %273 = load i32*, i32** %8, align 8
  store i32 %272, i32* %273, align 4
  %274 = load i32, i32* %20, align 4
  ret i32 %274
}

declare dso_local %struct.TYPE_2__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @hfsplus_compose_lookup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
