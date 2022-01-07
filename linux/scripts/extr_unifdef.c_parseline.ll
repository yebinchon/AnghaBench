; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_parseline.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_parseline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@linenum = common dso_local global i32 0, align 4
@tline = common dso_local global i8* null, align 8
@MAXLINE = common dso_local global i64 0, align 8
@input = common dso_local global i32 0, align 4
@LT_EOF = common dso_local global i64 0, align 8
@newline = common dso_local global i32* null, align 8
@newline_crlf = common dso_local global i32* null, align 8
@newline_unix = common dso_local global i32* null, align 8
@LT_PLAIN = common dso_local global i64 0, align 8
@incomment = common dso_local global i32 0, align 4
@linestate = common dso_local global i64 0, align 8
@LS_START = common dso_local global i64 0, align 8
@LS_HASH = common dso_local global i64 0, align 8
@firstsym = common dso_local global i32 0, align 4
@LS_DIRTY = common dso_local global i64 0, align 8
@keyword = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"\\\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@LT_IF = common dso_local global i64 0, align 8
@LT_FALSE = common dso_local global i64 0, align 8
@LT_TRUE = common dso_local global i64 0, align 8
@value = common dso_local global i32** null, align 8
@ignore = common dso_local global i64* null, align 8
@LT_TRUEI = common dso_local global i64 0, align 8
@LT_FALSEI = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@LT_ELIF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@LT_ELSE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@LT_ENDIF = common dso_local global i64 0, align 8
@LT_ELTRUE = common dso_local global i64 0, align 8
@LT_ELFALSE = common dso_local global i64 0, align 8
@LT_DODGY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [40 x i8] c"parser line %d state %s comment %s line\00", align 1
@comment_name = common dso_local global i32* null, align 8
@linestate_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @parseline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parseline() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = load i32, i32* @linenum, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @linenum, align 4
  %10 = load i8*, i8** @tline, align 8
  %11 = load i64, i64* @MAXLINE, align 8
  %12 = load i32, i32* @input, align 4
  %13 = call i32* @fgets(i8* %10, i64 %11, i32 %12)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load i64, i64* @LT_EOF, align 8
  store i64 %16, i64* %1, align 8
  br label %316

17:                                               ; preds = %0
  %18 = load i32*, i32** @newline, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i8*, i8** @tline, align 8
  %22 = call i64 @strrchr(i8* %21, i8 signext 10)
  %23 = load i8*, i8** @tline, align 8
  %24 = call i64 @strrchr(i8* %23, i8 signext 13)
  %25 = add nsw i64 %24, 1
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32*, i32** @newline_crlf, align 8
  store i32* %28, i32** @newline, align 8
  br label %31

29:                                               ; preds = %20
  %30 = load i32*, i32** @newline_unix, align 8
  store i32* %30, i32** @newline, align 8
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i64, i64* @LT_PLAIN, align 8
  store i64 %33, i64* %5, align 8
  %34 = load i32, i32* @incomment, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i8*, i8** @tline, align 8
  %36 = call i8* @skipcomment(i8* %35)
  store i8* %36, i8** %2, align 8
  %37 = load i64, i64* @linestate, align 8
  %38 = load i64, i64* @LS_START, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  %41 = load i8*, i8** %2, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 35
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i64, i64* @LS_HASH, align 8
  store i64 %46, i64* @linestate, align 8
  store i32 1, i32* @firstsym, align 4
  %47 = load i8*, i8** %2, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i8* @skipcomment(i8* %48)
  store i8* %49, i8** %2, align 8
  br label %58

50:                                               ; preds = %40
  %51 = load i8*, i8** %2, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @LS_DIRTY, align 8
  store i64 %56, i64* @linestate, align 8
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %32
  %60 = load i32, i32* @incomment, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %288, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* @linestate, align 8
  %64 = load i64, i64* @LS_HASH, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %288

66:                                               ; preds = %62
  %67 = load i8*, i8** @tline, align 8
  %68 = load i8*, i8** %2, align 8
  %69 = load i8*, i8** @tline, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = getelementptr inbounds i8, i8* %67, i64 %72
  store i8* %73, i8** @keyword, align 8
  %74 = load i8*, i8** %2, align 8
  %75 = call i8* @skipsym(i8* %74)
  store i8* %75, i8** %2, align 8
  %76 = load i8*, i8** %2, align 8
  %77 = load i8*, i8** @keyword, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %4, align 4
  %82 = load i8*, i8** %2, align 8
  %83 = call i64 @strncmp(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %66
  %86 = load i8*, i8** %2, align 8
  %87 = call i64 @strncmp(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85, %66
  %90 = call i32 (...) @Eioccc()
  br label %91

91:                                               ; preds = %89, %85
  %92 = load i8*, i8** @keyword, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @strlcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %92, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** @keyword, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @strlcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %97, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %158

101:                                              ; preds = %96, %91
  %102 = load i8*, i8** %2, align 8
  %103 = call i8* @skipcomment(i8* %102)
  store i8* %103, i8** %2, align 8
  %104 = load i8*, i8** %2, align 8
  %105 = call i32 @findsym(i8* %104)
  store i32 %105, i32* %3, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i64, i64* @LT_IF, align 8
  store i64 %108, i64* %5, align 8
  br label %155

109:                                              ; preds = %101
  %110 = load i8*, i8** @keyword, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 110
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i64, i64* @LT_FALSE, align 8
  br label %119

117:                                              ; preds = %109
  %118 = load i64, i64* @LT_TRUE, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i64 [ %116, %115 ], [ %118, %117 ]
  store i64 %120, i64* %5, align 8
  %121 = load i32**, i32*** @value, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %137

127:                                              ; preds = %119
  %128 = load i64, i64* %5, align 8
  %129 = load i64, i64* @LT_TRUE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i64, i64* @LT_FALSE, align 8
  br label %135

133:                                              ; preds = %127
  %134 = load i64, i64* @LT_TRUE, align 8
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i64 [ %132, %131 ], [ %134, %133 ]
  store i64 %136, i64* %5, align 8
  br label %137

137:                                              ; preds = %135, %119
  %138 = load i64*, i64** @ignore, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %137
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @LT_TRUE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i64, i64* @LT_TRUEI, align 8
  br label %152

150:                                              ; preds = %144
  %151 = load i64, i64* @LT_FALSEI, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i64 [ %149, %148 ], [ %151, %150 ]
  store i64 %153, i64* %5, align 8
  br label %154

154:                                              ; preds = %152, %137
  br label %155

155:                                              ; preds = %154, %107
  %156 = load i8*, i8** %2, align 8
  %157 = call i8* @skipsym(i8* %156)
  store i8* %157, i8** %2, align 8
  br label %197

158:                                              ; preds = %96
  %159 = load i8*, i8** @keyword, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i64 @strlcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %159, i32 %160)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = call i64 @ifeval(i8** %2)
  store i64 %164, i64* %5, align 8
  br label %196

165:                                              ; preds = %158
  %166 = load i8*, i8** @keyword, align 8
  %167 = load i32, i32* %4, align 4
  %168 = call i64 @strlcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %166, i32 %167)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = call i64 @ifeval(i8** %2)
  %172 = load i64, i64* @LT_IF, align 8
  %173 = sub nsw i64 %171, %172
  %174 = load i64, i64* @LT_ELIF, align 8
  %175 = add nsw i64 %173, %174
  store i64 %175, i64* %5, align 8
  br label %195

176:                                              ; preds = %165
  %177 = load i8*, i8** @keyword, align 8
  %178 = load i32, i32* %4, align 4
  %179 = call i64 @strlcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %177, i32 %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i64, i64* @LT_ELSE, align 8
  store i64 %182, i64* %5, align 8
  br label %194

183:                                              ; preds = %176
  %184 = load i8*, i8** @keyword, align 8
  %185 = load i32, i32* %4, align 4
  %186 = call i64 @strlcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %184, i32 %185)
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i64, i64* @LT_ENDIF, align 8
  store i64 %189, i64* %5, align 8
  br label %193

190:                                              ; preds = %183
  %191 = load i64, i64* @LS_DIRTY, align 8
  store i64 %191, i64* @linestate, align 8
  %192 = load i64, i64* @LT_PLAIN, align 8
  store i64 %192, i64* %5, align 8
  br label %193

193:                                              ; preds = %190, %188
  br label %194

194:                                              ; preds = %193, %181
  br label %195

195:                                              ; preds = %194, %170
  br label %196

196:                                              ; preds = %195, %163
  br label %197

197:                                              ; preds = %196, %155
  %198 = load i8*, i8** %2, align 8
  %199 = call i8* @skipcomment(i8* %198)
  store i8* %199, i8** %2, align 8
  %200 = load i8*, i8** %2, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %234

204:                                              ; preds = %197
  %205 = load i64, i64* @LS_DIRTY, align 8
  store i64 %205, i64* @linestate, align 8
  %206 = load i64, i64* %5, align 8
  %207 = load i64, i64* @LT_TRUE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %221, label %209

209:                                              ; preds = %204
  %210 = load i64, i64* %5, align 8
  %211 = load i64, i64* @LT_FALSE, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %221, label %213

213:                                              ; preds = %209
  %214 = load i64, i64* %5, align 8
  %215 = load i64, i64* @LT_TRUEI, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = load i64, i64* %5, align 8
  %219 = load i64, i64* @LT_FALSEI, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %217, %213, %209, %204
  %222 = load i64, i64* @LT_IF, align 8
  store i64 %222, i64* %5, align 8
  br label %223

223:                                              ; preds = %221, %217
  %224 = load i64, i64* %5, align 8
  %225 = load i64, i64* @LT_ELTRUE, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %231, label %227

227:                                              ; preds = %223
  %228 = load i64, i64* %5, align 8
  %229 = load i64, i64* @LT_ELFALSE, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %227, %223
  %232 = load i64, i64* @LT_ELIF, align 8
  store i64 %232, i64* %5, align 8
  br label %233

233:                                              ; preds = %231, %227
  br label %234

234:                                              ; preds = %233, %197
  %235 = load i64, i64* %5, align 8
  %236 = load i64, i64* @LT_PLAIN, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %253

238:                                              ; preds = %234
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* @incomment, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %241, %238
  %245 = load i64, i64* @LT_DODGY, align 8
  %246 = load i64, i64* %5, align 8
  %247 = add nsw i64 %246, %245
  store i64 %247, i64* %5, align 8
  %248 = load i32, i32* @incomment, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = load i64, i64* @LS_DIRTY, align 8
  store i64 %251, i64* @linestate, align 8
  br label %252

252:                                              ; preds = %250, %244
  br label %253

253:                                              ; preds = %252, %241, %234
  %254 = load i64, i64* @linestate, align 8
  %255 = load i64, i64* @LS_HASH, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %287

257:                                              ; preds = %253
  %258 = load i8*, i8** %2, align 8
  %259 = load i8*, i8** @tline, align 8
  %260 = ptrtoint i8* %258 to i64
  %261 = ptrtoint i8* %259 to i64
  %262 = sub i64 %260, %261
  store i64 %262, i64* %7, align 8
  %263 = load i8*, i8** @tline, align 8
  %264 = load i64, i64* %7, align 8
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  %266 = load i64, i64* @MAXLINE, align 8
  %267 = load i64, i64* %7, align 8
  %268 = sub i64 %266, %267
  %269 = load i32, i32* @input, align 4
  %270 = call i32* @fgets(i8* %265, i64 %268, i32 %269)
  %271 = icmp eq i32* %270, null
  br i1 %271, label %272, label %284

272:                                              ; preds = %257
  %273 = load i8*, i8** @tline, align 8
  %274 = load i64, i64* %7, align 8
  %275 = getelementptr inbounds i8, i8* %273, i64 %274
  %276 = load i32*, i32** @newline, align 8
  %277 = call i32 @strcpy(i8* %275, i32* %276)
  %278 = load i32*, i32** @newline, align 8
  %279 = call i32 @strlen(i32* %278)
  %280 = load i8*, i8** %2, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8* %282, i8** %2, align 8
  %283 = load i64, i64* @LS_START, align 8
  store i64 %283, i64* @linestate, align 8
  br label %286

284:                                              ; preds = %257
  %285 = load i64, i64* @LS_DIRTY, align 8
  store i64 %285, i64* @linestate, align 8
  br label %286

286:                                              ; preds = %284, %272
  br label %287

287:                                              ; preds = %286, %253
  br label %288

288:                                              ; preds = %287, %62, %59
  %289 = load i64, i64* @linestate, align 8
  %290 = load i64, i64* @LS_DIRTY, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %288
  br label %293

293:                                              ; preds = %298, %292
  %294 = load i8*, i8** %2, align 8
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = load i8*, i8** %2, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  %301 = call i8* @skipcomment(i8* %300)
  store i8* %301, i8** %2, align 8
  br label %293

302:                                              ; preds = %293
  br label %303

303:                                              ; preds = %302, %288
  %304 = load i32, i32* @linenum, align 4
  %305 = load i32*, i32** @comment_name, align 8
  %306 = load i32, i32* @incomment, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32*, i32** @linestate_name, align 8
  %311 = load i64, i64* @linestate, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %304, i32 %309, i32 %313)
  %315 = load i64, i64* %5, align 8
  store i64 %315, i64* %1, align 8
  br label %316

316:                                              ; preds = %303, %15
  %317 = load i64, i64* %1, align 8
  ret i64 %317
}

declare dso_local i32* @fgets(i8*, i64, i32) #1

declare dso_local i64 @strrchr(i8*, i8 signext) #1

declare dso_local i8* @skipcomment(i8*) #1

declare dso_local i8* @skipsym(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @Eioccc(...) #1

declare dso_local i64 @strlcmp(i8*, i8*, i32) #1

declare dso_local i32 @findsym(i8*) #1

declare dso_local i64 @ifeval(i8**) #1

declare dso_local i32 @strcpy(i8*, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
