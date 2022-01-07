; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_skipcomment.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_skipcomment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text = common dso_local global i64 0, align 8
@ignoring = common dso_local global i64* null, align 8
@depth = common dso_local global i64 0, align 8
@LS_START = common dso_local global i32 0, align 4
@linestate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\\\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@incomment = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"/\\\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/\\\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@LS_DIRTY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" \0D\09\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"unterminated char literal\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"unterminated string literal\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"*\\\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"*\\\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @skipcomment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @skipcomment(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i64, i64* @text, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i64*, i64** @ignoring, align 8
  %8 = load i64, i64* @depth, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %6, %1
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isspace(i8 zeroext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @LS_START, align 4
  store i32 %24, i32* @linestate, align 4
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %3, align 8
  br label %13

29:                                               ; preds = %13
  %30 = load i8*, i8** %3, align 8
  store i8* %30, i8** %2, align 8
  br label %253

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %250, %246, %236, %216, %189, %129, %122, %31
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %251

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 3
  store i8* %43, i8** %3, align 8
  br label %250

44:                                               ; preds = %37
  %45 = load i8*, i8** %3, align 8
  %46 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %3, align 8
  br label %249

51:                                               ; preds = %44
  %52 = load i32, i32* @incomment, align 4
  switch i32 %52, label %247 [
    i32 130, label %53
    i32 133, label %123
    i32 134, label %132
    i32 128, label %132
    i32 132, label %190
    i32 129, label %217
    i32 131, label %237
  ]

53:                                               ; preds = %51
  %54 = load i8*, i8** %3, align 8
  %55 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  store i32 129, i32* @incomment, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  store i8* %59, i8** %3, align 8
  br label %122

60:                                               ; preds = %53
  %61 = load i8*, i8** %3, align 8
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  store i32 129, i32* @incomment, align 4
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  store i8* %66, i8** %3, align 8
  br label %121

67:                                               ; preds = %60
  %68 = load i8*, i8** %3, align 8
  %69 = call i64 @strncmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  store i32 132, i32* @incomment, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %73, i8** %3, align 8
  br label %120

74:                                               ; preds = %67
  %75 = load i8*, i8** %3, align 8
  %76 = call i64 @strncmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  store i32 133, i32* @incomment, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8* %80, i8** %3, align 8
  br label %119

81:                                               ; preds = %74
  %82 = load i8*, i8** %3, align 8
  %83 = call i64 @strncmp(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  store i32 134, i32* @incomment, align 4
  %86 = load i32, i32* @LS_DIRTY, align 4
  store i32 %86, i32* @linestate, align 4
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8* %88, i8** %3, align 8
  br label %118

89:                                               ; preds = %81
  %90 = load i8*, i8** %3, align 8
  %91 = call i64 @strncmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  store i32 128, i32* @incomment, align 4
  %94 = load i32, i32* @LS_DIRTY, align 4
  store i32 %94, i32* @linestate, align 4
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8* %96, i8** %3, align 8
  br label %117

97:                                               ; preds = %89
  %98 = load i8*, i8** %3, align 8
  %99 = call i64 @strncmp(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* @LS_START, align 4
  store i32 %102, i32* @linestate, align 4
  %103 = load i8*, i8** %3, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8* %104, i8** %3, align 8
  br label %116

105:                                              ; preds = %97
  %106 = load i8*, i8** %3, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8 signext %107)
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %3, align 8
  br label %115

113:                                              ; preds = %105
  %114 = load i8*, i8** %3, align 8
  store i8* %114, i8** %2, align 8
  br label %253

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115, %101
  br label %117

117:                                              ; preds = %116, %93
  br label %118

118:                                              ; preds = %117, %85
  br label %119

119:                                              ; preds = %118, %78
  br label %120

120:                                              ; preds = %119, %71
  br label %121

121:                                              ; preds = %120, %64
  br label %122

122:                                              ; preds = %121, %57
  br label %32

123:                                              ; preds = %51
  %124 = load i8*, i8** %3, align 8
  %125 = call i64 @strncmp(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  store i32 130, i32* @incomment, align 4
  %128 = load i32, i32* @LS_START, align 4
  store i32 %128, i32* @linestate, align 4
  br label %129

129:                                              ; preds = %127, %123
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  store i8* %131, i8** %3, align 8
  br label %32

132:                                              ; preds = %51, %51
  %133 = load i32, i32* @incomment, align 4
  %134 = icmp eq i32 %133, 134
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i8*, i8** %3, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 39
  br i1 %140, label %150, label %141

141:                                              ; preds = %135, %132
  %142 = load i32, i32* @incomment, align 4
  %143 = icmp eq i32 %142, 128
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i8*, i8** %3, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 34
  br i1 %149, label %150, label %153

150:                                              ; preds = %144, %135
  store i32 130, i32* @incomment, align 4
  %151 = load i8*, i8** %3, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  store i8* %152, i8** %3, align 8
  br label %189

153:                                              ; preds = %144, %141
  %154 = load i8*, i8** %3, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 92
  br i1 %158, label %159, label %172

159:                                              ; preds = %153
  %160 = load i8*, i8** %3, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i8*, i8** %3, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  store i8* %167, i8** %3, align 8
  br label %171

168:                                              ; preds = %159
  %169 = load i8*, i8** %3, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 2
  store i8* %170, i8** %3, align 8
  br label %171

171:                                              ; preds = %168, %165
  br label %188

172:                                              ; preds = %153
  %173 = load i8*, i8** %3, align 8
  %174 = call i64 @strncmp(i8* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = load i32, i32* @incomment, align 4
  %178 = icmp eq i32 %177, 134
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %183

181:                                              ; preds = %176
  %182 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %179
  br label %187

184:                                              ; preds = %172
  %185 = load i8*, i8** %3, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  store i8* %186, i8** %3, align 8
  br label %187

187:                                              ; preds = %184, %183
  br label %188

188:                                              ; preds = %187, %171
  br label %189

189:                                              ; preds = %188, %150
  br label %32

190:                                              ; preds = %51
  %191 = load i8*, i8** %3, align 8
  %192 = call i64 @strncmp(i8* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  store i32 131, i32* @incomment, align 4
  %195 = load i8*, i8** %3, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 4
  store i8* %196, i8** %3, align 8
  br label %216

197:                                              ; preds = %190
  %198 = load i8*, i8** %3, align 8
  %199 = call i64 @strncmp(i8* %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  store i32 131, i32* @incomment, align 4
  %202 = load i8*, i8** %3, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 3
  store i8* %203, i8** %3, align 8
  br label %215

204:                                              ; preds = %197
  %205 = load i8*, i8** %3, align 8
  %206 = call i64 @strncmp(i8* %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 2)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  store i32 130, i32* @incomment, align 4
  %209 = load i8*, i8** %3, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 2
  store i8* %210, i8** %3, align 8
  br label %214

211:                                              ; preds = %204
  %212 = load i8*, i8** %3, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  store i8* %213, i8** %3, align 8
  br label %214

214:                                              ; preds = %211, %208
  br label %215

215:                                              ; preds = %214, %201
  br label %216

216:                                              ; preds = %215, %194
  br label %32

217:                                              ; preds = %51
  %218 = load i8*, i8** %3, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 42
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  store i32 132, i32* @incomment, align 4
  %223 = load i8*, i8** %3, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  store i8* %224, i8** %3, align 8
  br label %236

225:                                              ; preds = %217
  %226 = load i8*, i8** %3, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 47
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  store i32 133, i32* @incomment, align 4
  %231 = load i8*, i8** %3, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 1
  store i8* %232, i8** %3, align 8
  br label %235

233:                                              ; preds = %225
  store i32 130, i32* @incomment, align 4
  %234 = load i32, i32* @LS_DIRTY, align 4
  store i32 %234, i32* @linestate, align 4
  br label %235

235:                                              ; preds = %233, %230
  br label %236

236:                                              ; preds = %235, %222
  br label %32

237:                                              ; preds = %51
  %238 = load i8*, i8** %3, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 47
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  store i32 130, i32* @incomment, align 4
  %243 = load i8*, i8** %3, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 1
  store i8* %244, i8** %3, align 8
  br label %246

245:                                              ; preds = %237
  store i32 132, i32* @incomment, align 4
  br label %246

246:                                              ; preds = %245, %242
  br label %32

247:                                              ; preds = %51
  %248 = call i32 (...) @abort() #3
  unreachable

249:                                              ; preds = %48
  br label %250

250:                                              ; preds = %249, %41
  br label %32

251:                                              ; preds = %32
  %252 = load i8*, i8** %3, align 8
  store i8* %252, i8** %2, align 8
  br label %253

253:                                              ; preds = %251, %113, %29
  %254 = load i8*, i8** %2, align 8
  ret i8* %254
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @error(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
