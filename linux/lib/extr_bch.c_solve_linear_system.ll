; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_solve_linear_system.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_solve_linear_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32 }

@BCH_MAX_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bch_control*, i32*, i32*, i32)* @solve_linear_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solve_linear_system(%struct.bch_control* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bch_control*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.bch_control*, %struct.bch_control** %6, align 8
  %22 = call i32 @GF_M(%struct.bch_control* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @BCH_MAX_M, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  store i32 0, i32* %17, align 4
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %127, %4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %130

33:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %17, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %79, %33
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %42
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %55, %51
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %82

78:                                               ; preds = %42
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %38

82:                                               ; preds = %75, %38
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %82
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %114, %85
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %96
  %106 = load i32, i32* %11, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %111, %106
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %105, %96
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %92

117:                                              ; preds = %92
  br label %124

118:                                              ; preds = %82
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %26, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %117
  %125 = load i32, i32* %12, align 4
  %126 = lshr i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %29

130:                                              ; preds = %29
  %131 = load i32, i32* %17, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %191

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %10, align 4
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %187, %133
  %138 = load i32, i32* %15, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %190

140:                                              ; preds = %137
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* %17, align 4
  %145 = sub nsw i32 %143, %144
  %146 = icmp sgt i32 %141, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %270

155:                                              ; preds = %147, %140
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %16, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %26, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %159, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %158
  %167 = load i32, i32* %16, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %15, align 4
  %171 = sub nsw i32 %169, %170
  %172 = shl i32 1, %171
  br label %181

173:                                              ; preds = %158, %155
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %16, align 4
  %177 = sub nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  %180 = load i32, i32* %179, align 4
  br label %181

181:                                              ; preds = %173, %166
  %182 = phi i32 [ %172, %166 ], [ %180, %173 ]
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %182, i32* %186, align 4
  br label %187

187:                                              ; preds = %181
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %15, align 4
  br label %137

190:                                              ; preds = %137
  br label %191

191:                                              ; preds = %190, %130
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %17, align 4
  %194 = shl i32 1, %193
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %270

197:                                              ; preds = %191
  store i32 0, i32* %16, align 4
  br label %198

198:                                              ; preds = %265, %197
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %268

202:                                              ; preds = %198
  store i32 0, i32* %14, align 4
  br label %203

203:                                              ; preds = %229, %202
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* %17, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %232

207:                                              ; preds = %203
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %26, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %208, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, -2
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %14, align 4
  %219 = ashr i32 %217, %218
  %220 = and i32 %219, 1
  %221 = or i32 %216, %220
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %26, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %222, i64 %227
  store i32 %221, i32* %228, align 4
  br label %229

229:                                              ; preds = %207
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %14, align 4
  br label %203

232:                                              ; preds = %203
  store i32 0, i32* %11, align 4
  %233 = load i32, i32* %10, align 4
  %234 = sub nsw i32 %233, 1
  store i32 %234, i32* %15, align 4
  br label %235

235:                                              ; preds = %255, %232
  %236 = load i32, i32* %15, align 4
  %237 = icmp sge i32 %236, 0
  br i1 %237, label %238, label %258

238:                                              ; preds = %235
  %239 = load i32*, i32** %7, align 8
  %240 = load i32, i32* %15, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %11, align 4
  %245 = or i32 %244, 1
  %246 = and i32 %243, %245
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %12, align 4
  %248 = call i32 @parity(i32 %247)
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %15, align 4
  %251 = sub nsw i32 %249, %250
  %252 = shl i32 %248, %251
  %253 = load i32, i32* %11, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %11, align 4
  br label %255

255:                                              ; preds = %238
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %15, align 4
  br label %235

258:                                              ; preds = %235
  %259 = load i32, i32* %11, align 4
  %260 = lshr i32 %259, 1
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %16, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  store i32 %260, i32* %264, align 4
  br label %265

265:                                              ; preds = %258
  %266 = load i32, i32* %16, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %16, align 4
  br label %198

268:                                              ; preds = %198
  %269 = load i32, i32* %9, align 4
  store i32 %269, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %270

270:                                              ; preds = %268, %196, %154
  %271 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %271)
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local i32 @GF_M(%struct.bch_control*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @parity(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
