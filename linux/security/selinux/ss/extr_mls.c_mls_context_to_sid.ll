; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_context_to_sid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_mls.c_mls_context_to_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.context = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sidtab = type { i32 }
%struct.level_datum = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.cat_datum = type { i32 }

@SECSID_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mls_context_to_sid(%struct.policydb* %0, i8 signext %1, i8* %2, %struct.context* %3, %struct.sidtab* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.policydb*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct.context*, align 8
  %12 = alloca %struct.sidtab*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.level_datum*, align 8
  %19 = alloca %struct.cat_datum*, align 8
  %20 = alloca %struct.cat_datum*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [2 x i8*], align 16
  %25 = alloca %struct.context*, align 8
  store %struct.policydb* %0, %struct.policydb** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8* %2, i8** %10, align 8
  store %struct.context* %3, %struct.context** %11, align 8
  store %struct.sidtab* %4, %struct.sidtab** %12, align 8
  store i64 %5, i64* %13, align 8
  %26 = load %struct.policydb*, %struct.policydb** %8, align 8
  %27 = getelementptr inbounds %struct.policydb, %struct.policydb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %6
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @SECSID_NULL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %278

41:                                               ; preds = %34, %30
  store i32 0, i32* %7, align 4
  br label %278

42:                                               ; preds = %6
  %43 = load i8, i8* %9, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @SECSID_NULL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %278

52:                                               ; preds = %45
  %53 = load %struct.sidtab*, %struct.sidtab** %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call %struct.context* @sidtab_search(%struct.sidtab* %53, i64 %54)
  store %struct.context* %55, %struct.context** %25, align 8
  %56 = load %struct.context*, %struct.context** %25, align 8
  %57 = icmp ne %struct.context* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %278

61:                                               ; preds = %52
  %62 = load %struct.context*, %struct.context** %11, align 8
  %63 = load %struct.context*, %struct.context** %25, align 8
  %64 = call i32 @mls_context_cpy(%struct.context* %62, %struct.context* %63)
  store i32 %64, i32* %7, align 4
  br label %278

65:                                               ; preds = %42
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 0
  store i8* %66, i8** %67, align 16
  %68 = load i8*, i8** %10, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 45)
  %70 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 1
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  store i8 0, i8* %77, align 1
  %78 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %78, align 8
  br label %81

81:                                               ; preds = %74, %65
  store i32 0, i32* %21, align 4
  br label %82

82:                                               ; preds = %238, %81
  %83 = load i32, i32* %21, align 4
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %85, label %241

85:                                               ; preds = %82
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 %87
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %14, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %241

93:                                               ; preds = %85
  %94 = load i8*, i8** %14, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 58)
  store i8* %95, i8** %16, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %16, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %16, align 8
  store i8 0, i8* %99, align 1
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.policydb*, %struct.policydb** %8, align 8
  %103 = getelementptr inbounds %struct.policydb, %struct.policydb* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = call i8* @hashtab_search(i32 %105, i8* %106)
  %108 = bitcast i8* %107 to %struct.level_datum*
  store %struct.level_datum* %108, %struct.level_datum** %18, align 8
  %109 = load %struct.level_datum*, %struct.level_datum** %18, align 8
  %110 = icmp ne %struct.level_datum* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %101
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %278

114:                                              ; preds = %101
  %115 = load %struct.level_datum*, %struct.level_datum** %18, align 8
  %116 = getelementptr inbounds %struct.level_datum, %struct.level_datum* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.context*, %struct.context** %11, align 8
  %121 = getelementptr inbounds %struct.context, %struct.context* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  store i32 %119, i32* %127, align 4
  br label %128

128:                                              ; preds = %236, %182, %114
  %129 = load i8*, i8** %16, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %237

131:                                              ; preds = %128
  %132 = load i8*, i8** %16, align 8
  store i8* %132, i8** %15, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = call i8* @strchr(i8* %133, i8 signext 44)
  store i8* %134, i8** %16, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i8*, i8** %16, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %16, align 8
  store i8 0, i8* %138, align 1
  br label %140

140:                                              ; preds = %137, %131
  %141 = load i8*, i8** %15, align 8
  %142 = call i8* @strchr(i8* %141, i8 signext 46)
  store i8* %142, i8** %17, align 8
  %143 = load i8*, i8** %17, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i8*, i8** %17, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %17, align 8
  store i8 0, i8* %146, align 1
  br label %148

148:                                              ; preds = %145, %140
  %149 = load %struct.policydb*, %struct.policydb** %8, align 8
  %150 = getelementptr inbounds %struct.policydb, %struct.policydb* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %15, align 8
  %154 = call i8* @hashtab_search(i32 %152, i8* %153)
  %155 = bitcast i8* %154 to %struct.cat_datum*
  store %struct.cat_datum* %155, %struct.cat_datum** %19, align 8
  %156 = load %struct.cat_datum*, %struct.cat_datum** %19, align 8
  %157 = icmp ne %struct.cat_datum* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %148
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %7, align 4
  br label %278

161:                                              ; preds = %148
  %162 = load %struct.context*, %struct.context** %11, align 8
  %163 = getelementptr inbounds %struct.context, %struct.context* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load i32, i32* %21, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load %struct.cat_datum*, %struct.cat_datum** %19, align 8
  %171 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 1
  %174 = call i32 @ebitmap_set_bit(i32* %169, i32 %173, i32 1)
  store i32 %174, i32* %22, align 4
  %175 = load i32, i32* %22, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %161
  %178 = load i32, i32* %22, align 4
  store i32 %178, i32* %7, align 4
  br label %278

179:                                              ; preds = %161
  %180 = load i8*, i8** %17, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %128

183:                                              ; preds = %179
  %184 = load %struct.policydb*, %struct.policydb** %8, align 8
  %185 = getelementptr inbounds %struct.policydb, %struct.policydb* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i8*, i8** %17, align 8
  %189 = call i8* @hashtab_search(i32 %187, i8* %188)
  %190 = bitcast i8* %189 to %struct.cat_datum*
  store %struct.cat_datum* %190, %struct.cat_datum** %20, align 8
  %191 = load %struct.cat_datum*, %struct.cat_datum** %20, align 8
  %192 = icmp ne %struct.cat_datum* %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %183
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %7, align 4
  br label %278

196:                                              ; preds = %183
  %197 = load %struct.cat_datum*, %struct.cat_datum** %19, align 8
  %198 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.cat_datum*, %struct.cat_datum** %20, align 8
  %201 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp sge i32 %199, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %7, align 4
  br label %278

207:                                              ; preds = %196
  %208 = load %struct.cat_datum*, %struct.cat_datum** %19, align 8
  %209 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %23, align 4
  br label %211

211:                                              ; preds = %233, %207
  %212 = load i32, i32* %23, align 4
  %213 = load %struct.cat_datum*, %struct.cat_datum** %20, align 8
  %214 = getelementptr inbounds %struct.cat_datum, %struct.cat_datum* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %236

217:                                              ; preds = %211
  %218 = load %struct.context*, %struct.context** %11, align 8
  %219 = getelementptr inbounds %struct.context, %struct.context* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i32, i32* %23, align 4
  %227 = call i32 @ebitmap_set_bit(i32* %225, i32 %226, i32 1)
  store i32 %227, i32* %22, align 4
  %228 = load i32, i32* %22, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %217
  %231 = load i32, i32* %22, align 4
  store i32 %231, i32* %7, align 4
  br label %278

232:                                              ; preds = %217
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %23, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %23, align 4
  br label %211

236:                                              ; preds = %211
  br label %128

237:                                              ; preds = %128
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %21, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %21, align 4
  br label %82

241:                                              ; preds = %92, %82
  %242 = getelementptr inbounds [2 x i8*], [2 x i8*]* %24, i64 0, i64 1
  %243 = load i8*, i8** %242, align 8
  %244 = icmp eq i8* %243, null
  br i1 %244, label %245, label %277

245:                                              ; preds = %241
  %246 = load %struct.context*, %struct.context** %11, align 8
  %247 = getelementptr inbounds %struct.context, %struct.context* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.context*, %struct.context** %11, align 8
  %254 = getelementptr inbounds %struct.context, %struct.context* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i64 1
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  store i32 %252, i32* %258, align 4
  %259 = load %struct.context*, %struct.context** %11, align 8
  %260 = getelementptr inbounds %struct.context, %struct.context* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i64 1
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load %struct.context*, %struct.context** %11, align 8
  %266 = getelementptr inbounds %struct.context, %struct.context* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i64 0
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = call i32 @ebitmap_cpy(i32* %264, i32* %270)
  store i32 %271, i32* %22, align 4
  %272 = load i32, i32* %22, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %245
  %275 = load i32, i32* %22, align 4
  store i32 %275, i32* %7, align 4
  br label %278

276:                                              ; preds = %245
  br label %277

277:                                              ; preds = %276, %241
  store i32 0, i32* %7, align 4
  br label %278

278:                                              ; preds = %277, %274, %230, %204, %193, %177, %158, %111, %61, %58, %49, %41, %38
  %279 = load i32, i32* %7, align 4
  ret i32 %279
}

declare dso_local %struct.context* @sidtab_search(%struct.sidtab*, i64) #1

declare dso_local i32 @mls_context_cpy(%struct.context*, %struct.context*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @hashtab_search(i32, i8*) #1

declare dso_local i32 @ebitmap_set_bit(i32*, i32, i32) #1

declare dso_local i32 @ebitmap_cpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
