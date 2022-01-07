; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_strn_parse.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_strn_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.aa_label }
%struct.aa_label = type { i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.aa_label }

@profile = common dso_local global i32 0, align 4
@vec = common dso_local global %struct.TYPE_13__** null, align 8
@root_ns = common dso_local global %struct.TYPE_14__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@VEC_FLAG_TERMINATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_label* @aa_label_strn_parse(%struct.aa_label* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.aa_label*, align 8
  %15 = alloca %struct.aa_label*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* @profile, align 4
  %23 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %24 = call i32 @DEFINE_VEC(i32 %22, %struct.TYPE_13__** %23)
  %25 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  store %struct.aa_label* %25, %struct.aa_label** %15, align 8
  store i32 0, i32* %18, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %20, align 8
  %29 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %30 = icmp ne %struct.aa_label* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @AA_BUG(i32 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @AA_BUG(i32 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i8* @skipn_spaces(i8* %39, i64 %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %6
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 61
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** @root_ns, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = icmp ne %struct.aa_label* %50, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49, %6
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.aa_label* @ERR_PTR(i32 %58)
  store %struct.aa_label* %59, %struct.aa_label** %7, align 8
  br label %275

60:                                               ; preds = %49, %44
  %61 = load i8*, i8** %9, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @label_count_strn_entries(i8* %61, i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 38
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73, %60
  %77 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %78 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %17, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 38
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %9, align 8
  br label %90

90:                                               ; preds = %87, %76
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* @profile, align 4
  %93 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @vec_setup(i32 %92, %struct.TYPE_13__** %93, i32 %94, i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* %19, align 4
  %101 = call %struct.aa_label* @ERR_PTR(i32 %100)
  store %struct.aa_label* %101, %struct.aa_label** %7, align 8
  br label %275

102:                                              ; preds = %91
  store i32 0, i32* %16, align 4
  br label %103

103:                                              ; preds = %120, %102
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %109 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.TYPE_13__* @aa_get_profile(i32 %114)
  %116 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %116, i64 %118
  store %struct.TYPE_13__* %115, %struct.TYPE_13__** %119, align 8
  br label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %16, align 4
  br label %103

123:                                              ; preds = %103
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %20, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = call i8* @aa_label_strn_split(i8* %124, i32 %130)
  store i8* %131, i8** %21, align 8
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %193, %123
  %134 = load i8*, i8** %21, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %17, align 4
  %139 = icmp slt i32 %137, %138
  br label %140

140:                                              ; preds = %136, %133
  %141 = phi i1 [ false, %133 ], [ %139, %136 ]
  br i1 %141, label %142, label %196

142:                                              ; preds = %140
  %143 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %144 = load %struct.aa_label*, %struct.aa_label** %15, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = load i8*, i8** %21, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = ptrtoint i8* %146 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  %152 = call %struct.TYPE_13__* @fqlookupn_profile(%struct.aa_label* %143, %struct.aa_label* %144, i8* %145, i32 %151)
  %153 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %153, i64 %155
  store %struct.TYPE_13__* %152, %struct.TYPE_13__** %156, align 8
  %157 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %157, i64 %159
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = icmp ne %struct.TYPE_13__* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %142
  br label %271

164:                                              ; preds = %142
  %165 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %165, i64 %167
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.aa_label*, %struct.aa_label** %15, align 8
  %173 = call i64 @labels_ns(%struct.aa_label* %172)
  %174 = icmp ne i64 %171, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %164
  %176 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %176, i64 %178
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  store %struct.aa_label* %181, %struct.aa_label** %15, align 8
  br label %182

182:                                              ; preds = %175, %164
  %183 = load i8*, i8** %21, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 3
  store i8* %184, i8** %9, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = load i8*, i8** %20, align 8
  %187 = load i8*, i8** %9, align 8
  %188 = ptrtoint i8* %186 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  %191 = trunc i64 %190 to i32
  %192 = call i8* @aa_label_strn_split(i8* %185, i32 %191)
  store i8* %192, i8** %21, align 8
  br label %193

193:                                              ; preds = %182
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  br label %133

196:                                              ; preds = %140
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %17, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %223

200:                                              ; preds = %196
  %201 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %202 = load %struct.aa_label*, %struct.aa_label** %15, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = load i8*, i8** %20, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = trunc i64 %208 to i32
  %210 = call %struct.TYPE_13__* @fqlookupn_profile(%struct.aa_label* %201, %struct.aa_label* %202, i8* %203, i32 %209)
  %211 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %211, i64 %213
  store %struct.TYPE_13__* %210, %struct.TYPE_13__** %214, align 8
  %215 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %216 = load i32, i32* %16, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %215, i64 %217
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = icmp ne %struct.TYPE_13__* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %200
  br label %271

222:                                              ; preds = %200
  br label %223

223:                                              ; preds = %222, %196
  %224 = load i32, i32* %17, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %227, i64 0
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  store %struct.aa_label* %230, %struct.aa_label** %7, align 8
  br label %275

231:                                              ; preds = %223
  %232 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* @VEC_FLAG_TERMINATE, align 4
  %235 = call i64 @aa_vec_unique(%struct.TYPE_13__** %232, i32 %233, i32 %234)
  %236 = load i32, i32* %17, align 4
  %237 = sext i32 %236 to i64
  %238 = sub nsw i64 %237, %235
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %17, align 4
  %240 = load i32, i32* %17, align 4
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %248

242:                                              ; preds = %231
  %243 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %243, i64 0
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = call %struct.aa_label* @aa_get_label(%struct.aa_label* %246)
  store %struct.aa_label* %247, %struct.aa_label** %14, align 8
  br label %265

248:                                              ; preds = %231
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %11, align 4
  %255 = call %struct.aa_label* @aa_vec_find_or_create_label(%struct.TYPE_13__** %252, i32 %253, i32 %254)
  store %struct.aa_label* %255, %struct.aa_label** %14, align 8
  br label %260

256:                                              ; preds = %248
  %257 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %258 = load i32, i32* %17, align 4
  %259 = call %struct.aa_label* @vec_find(%struct.TYPE_13__** %257, i32 %258)
  store %struct.aa_label* %259, %struct.aa_label** %14, align 8
  br label %260

260:                                              ; preds = %256, %251
  %261 = load %struct.aa_label*, %struct.aa_label** %14, align 8
  %262 = icmp ne %struct.aa_label* %261, null
  br i1 %262, label %264, label %263

263:                                              ; preds = %260
  br label %271

264:                                              ; preds = %260
  br label %265

265:                                              ; preds = %271, %264, %242
  %266 = load i32, i32* @profile, align 4
  %267 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @vec, align 8
  %268 = load i32, i32* %17, align 4
  %269 = call i32 @vec_cleanup(i32 %266, %struct.TYPE_13__** %267, i32 %268)
  %270 = load %struct.aa_label*, %struct.aa_label** %14, align 8
  store %struct.aa_label* %270, %struct.aa_label** %7, align 8
  br label %275

271:                                              ; preds = %263, %221, %163
  %272 = load i32, i32* @ENOENT, align 4
  %273 = sub nsw i32 0, %272
  %274 = call %struct.aa_label* @ERR_PTR(i32 %273)
  store %struct.aa_label* %274, %struct.aa_label** %14, align 8
  br label %265

275:                                              ; preds = %265, %226, %99, %56
  %276 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  ret %struct.aa_label* %276
}

declare dso_local i32 @DEFINE_VEC(i32, %struct.TYPE_13__**) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i8* @skipn_spaces(i8*, i64) #1

declare dso_local %struct.aa_label* @ERR_PTR(i32) #1

declare dso_local i32 @label_count_strn_entries(i8*, i32) #1

declare dso_local i32 @vec_setup(i32, %struct.TYPE_13__**, i32, i32) #1

declare dso_local %struct.TYPE_13__* @aa_get_profile(i32) #1

declare dso_local i8* @aa_label_strn_split(i8*, i32) #1

declare dso_local %struct.TYPE_13__* @fqlookupn_profile(%struct.aa_label*, %struct.aa_label*, i8*, i32) #1

declare dso_local i64 @labels_ns(%struct.aa_label*) #1

declare dso_local i64 @aa_vec_unique(%struct.TYPE_13__**, i32, i32) #1

declare dso_local %struct.aa_label* @aa_get_label(%struct.aa_label*) #1

declare dso_local %struct.aa_label* @aa_vec_find_or_create_label(%struct.TYPE_13__**, i32, i32) #1

declare dso_local %struct.aa_label* @vec_find(%struct.TYPE_13__**, i32) #1

declare dso_local i32 @vec_cleanup(i32, %struct.TYPE_13__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
