; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicode_data = type { i64, i32, i32, i64*, i8*, i64 }
%struct.tree = type { i8*, i32 }

@UTF8HANGULLEAF = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Verifying %s_%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"nfdicf\00", align 1
@unicode_data = common dso_local global %struct.unicode_data* null, align 8
@DECOMPOSE = common dso_local global i64 0, align 8
@HANGUL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"%X code %X gen %d ccc %d nfdi -> \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c" gen %d ccc %d nfdi -> \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.unicode_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %2, align 8
  %11 = load i32, i32* @UTF8HANGULLEAF, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i64, i64* @verbose, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.tree*, %struct.tree** %2, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.tree*, %struct.tree** %2, align 8
  %22 = getelementptr inbounds %struct.tree, %struct.tree* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.tree*, %struct.tree** %2, align 8
  %27 = getelementptr inbounds %struct.tree, %struct.tree* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %252, %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 1114112
  br i1 %32, label %33, label %255

33:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  %34 = load %struct.unicode_data*, %struct.unicode_data** @unicode_data, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %34, i64 %36
  %38 = call %struct.unicode_data* @corrections_lookup(%struct.unicode_data* %37)
  store %struct.unicode_data* %38, %struct.unicode_data** %3, align 8
  %39 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %40 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tree*, %struct.tree** %2, align 8
  %43 = getelementptr inbounds %struct.tree, %struct.tree* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp sle i64 %41, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load %struct.unicode_data*, %struct.unicode_data** @unicode_data, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %48, i64 %50
  store %struct.unicode_data* %51, %struct.unicode_data** %3, align 8
  br label %52

52:                                               ; preds = %47, %33
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @utf8encode(i8* %53, i32 %54)
  %56 = load %struct.tree*, %struct.tree** %2, align 8
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %58 = call i32* @utf8lookup(%struct.tree* %56, i8* %14, i8* %57)
  store i32* %58, i32** %4, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %79, label %61

61:                                               ; preds = %52
  %62 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %63 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %5, align 4
  %71 = icmp ult i32 %70, 55296
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp ugt i32 %73, 57343
  br i1 %74, label %75, label %78

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %213

79:                                               ; preds = %52
  %80 = load i32, i32* %5, align 4
  %81 = icmp uge i32 %80, 55296
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = icmp ule i32 %83, 57343
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %82, %79
  %89 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %90 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %98 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @LEAF_GEN(i32* %100)
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %103, %96
  %107 = load i32*, i32** %4, align 8
  %108 = call i64 @LEAF_CCC(i32* %107)
  %109 = load i64, i64* @DECOMPOSE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %201

111:                                              ; preds = %106
  %112 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %113 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @HANGUL_SYLLABLE(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  %118 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %119 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %118, i32 0, i32 3
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @HANGUL, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %125, %117
  br label %200

129:                                              ; preds = %111
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %129
  %133 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %134 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %133, i32 0, i32 3
  %135 = load i64*, i64** %134, align 8
  %136 = icmp ne i64* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %153

140:                                              ; preds = %132
  %141 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %142 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %141, i32 0, i32 3
  %143 = load i64*, i64** %142, align 8
  %144 = bitcast i64* %143 to i8*
  %145 = load i32*, i32** %4, align 8
  %146 = call i8* @LEAF_STR(i32* %145)
  %147 = call i32 @strcmp(i8* %144, i8* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %149, %140
  br label %153

153:                                              ; preds = %152, %137
  br label %199

154:                                              ; preds = %129
  %155 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %156 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %155, i32 0, i32 4
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %167, label %159

159:                                              ; preds = %154
  %160 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %161 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %160, i32 0, i32 3
  %162 = load i64*, i64** %161, align 8
  %163 = icmp ne i64* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %198

167:                                              ; preds = %159, %154
  %168 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %169 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %168, i32 0, i32 4
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %174 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %173, i32 0, i32 4
  %175 = load i8*, i8** %174, align 8
  %176 = load i32*, i32** %4, align 8
  %177 = call i8* @LEAF_STR(i32* %176)
  %178 = call i32 @strcmp(i8* %175, i8* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %180, %172
  br label %197

184:                                              ; preds = %167
  %185 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %186 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %185, i32 0, i32 3
  %187 = load i64*, i64** %186, align 8
  %188 = bitcast i64* %187 to i8*
  %189 = load i32*, i32** %4, align 8
  %190 = call i8* @LEAF_STR(i32* %189)
  %191 = call i32 @strcmp(i8* %188, i8* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %193, %184
  br label %197

197:                                              ; preds = %196, %183
  br label %198

198:                                              ; preds = %197, %164
  br label %199

199:                                              ; preds = %198, %153
  br label %200

200:                                              ; preds = %199, %128
  br label %212

201:                                              ; preds = %106
  %202 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %203 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = load i32*, i32** %4, align 8
  %206 = call i64 @LEAF_CCC(i32* %205)
  %207 = icmp ne i64 %204, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %201
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %208, %201
  br label %212

212:                                              ; preds = %211, %200
  br label %213

213:                                              ; preds = %212, %78
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %251

216:                                              ; preds = %213
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %219 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %222 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %225 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %228 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %227, i32 0, i32 3
  %229 = load i64*, i64** %228, align 8
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %217, i32 %220, i32 %223, i64 %226, i64* %229)
  %231 = load i32*, i32** %4, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %249

233:                                              ; preds = %216
  %234 = load i32*, i32** %4, align 8
  %235 = call i32 @LEAF_GEN(i32* %234)
  %236 = load i32*, i32** %4, align 8
  %237 = call i64 @LEAF_CCC(i32* %236)
  %238 = load i32*, i32** %4, align 8
  %239 = call i64 @LEAF_CCC(i32* %238)
  %240 = load i64, i64* @DECOMPOSE, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %233
  %243 = load i32*, i32** %4, align 8
  %244 = call i8* @LEAF_STR(i32* %243)
  br label %246

245:                                              ; preds = %233
  br label %246

246:                                              ; preds = %245, %242
  %247 = phi i8* [ %244, %242 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %245 ]
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %235, i64 %237, i8* %247)
  br label %249

249:                                              ; preds = %246, %216
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %213
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %5, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %5, align 4
  br label %30

255:                                              ; preds = %30
  %256 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %256)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local %struct.unicode_data* @corrections_lookup(%struct.unicode_data*) #2

declare dso_local i32 @utf8encode(i8*, i32) #2

declare dso_local i32* @utf8lookup(%struct.tree*, i8*, i8*) #2

declare dso_local i32 @LEAF_GEN(i32*) #2

declare dso_local i64 @LEAF_CCC(i32*) #2

declare dso_local i64 @HANGUL_SYLLABLE(i32) #2

declare dso_local i8* @LEAF_STR(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
