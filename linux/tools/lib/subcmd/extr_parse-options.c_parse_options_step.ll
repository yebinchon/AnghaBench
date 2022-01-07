; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_options_step.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_options_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32, i8*, i8**, i8**, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i8, i8* }
%struct.option = type { i32 }

@PARSE_OPT_NO_INTERNAL_HELP = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"help-all\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"list-opts\00", align 1
@PARSE_OPT_LIST_OPTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"list-cmds\00", align 1
@PARSE_OPT_LIST_SUBCMDS = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@PARSE_OPT_UNKNOWN = common dso_local global i32 0, align 4
@PARSE_OPT_DONE = common dso_local global i32 0, align 4
@PARSE_OPT_HELP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8**)* @parse_options_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options_step(%struct.parse_opt_ctx_t* %0, %struct.option* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store %struct.option* %1, %struct.option** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %13 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PARSE_OPT_NO_INTERNAL_HELP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %20 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %21 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %20, i32 0, i32 1
  store i8* null, i8** %21, align 8
  br label %22

22:                                               ; preds = %263, %3
  %23 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %24 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %272

27:                                               ; preds = %22
  %28 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %29 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %28, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 45
  br i1 %36, label %42, label %37

37:                                               ; preds = %27
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %37, %27
  %43 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %44 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %272

50:                                               ; preds = %42
  %51 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %52 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %51, i32 0, i32 2
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %57 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %56, i32 0, i32 3
  %58 = load i8**, i8*** %57, align 8
  %59 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %60 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8*, i8** %58, i64 %63
  store i8* %55, i8** %64, align 8
  br label %263

65:                                               ; preds = %37
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 45
  br i1 %70, label %71, label %163

71:                                               ; preds = %65
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %10, align 8
  %74 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %75 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %80 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 104
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i8**, i8*** %7, align 8
  %87 = load %struct.option*, %struct.option** %6, align 8
  %88 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %89 = call i32 @usage_with_options_internal(i8** %86, %struct.option* %87, i32 0, %struct.parse_opt_ctx_t* %88)
  store i32 %89, i32* %4, align 4
  br label %315

90:                                               ; preds = %78, %71
  %91 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %92 = load %struct.option*, %struct.option** %6, align 8
  %93 = call i32 @parse_short_opt(%struct.parse_opt_ctx_t* %91, %struct.option* %92)
  switch i32 %93, label %101 [
    i32 -1, label %94
    i32 -2, label %99
    i32 -3, label %100
  ]

94:                                               ; preds = %90
  %95 = load i8**, i8*** %7, align 8
  %96 = load %struct.option*, %struct.option** %6, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @parse_options_usage(i8** %95, %struct.option* %96, i8* %97, i32 1)
  store i32 %98, i32* %4, align 4
  br label %315

99:                                               ; preds = %90
  br label %237

100:                                              ; preds = %90
  br label %274

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %104 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i8*, i8** %10, align 8
  %109 = load %struct.option*, %struct.option** %6, align 8
  %110 = call i32 @check_typos(i8* %108, %struct.option* %109)
  br label %111

111:                                              ; preds = %107, %102
  br label %112

112:                                              ; preds = %161, %111
  %113 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %114 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %162

117:                                              ; preds = %112
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %122 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 104
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load i8**, i8*** %7, align 8
  %129 = load %struct.option*, %struct.option** %6, align 8
  %130 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %131 = call i32 @usage_with_options_internal(i8** %128, %struct.option* %129, i32 0, %struct.parse_opt_ctx_t* %130)
  store i32 %131, i32* %4, align 4
  br label %315

132:                                              ; preds = %120, %117
  %133 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %134 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %10, align 8
  %136 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %137 = load %struct.option*, %struct.option** %6, align 8
  %138 = call i32 @parse_short_opt(%struct.parse_opt_ctx_t* %136, %struct.option* %137)
  switch i32 %138, label %160 [
    i32 -1, label %139
    i32 -2, label %144
    i32 -3, label %159
  ]

139:                                              ; preds = %132
  %140 = load i8**, i8*** %7, align 8
  %141 = load %struct.option*, %struct.option** %6, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @parse_options_usage(i8** %140, %struct.option* %141, i8* %142, i32 1)
  store i32 %143, i32* %4, align 4
  br label %315

144:                                              ; preds = %132
  %145 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %146 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 -1
  %149 = call i8* @strdup(i8* %148)
  %150 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %151 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %150, i32 0, i32 2
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  store i8* %149, i8** %153, align 8
  %154 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %155 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %154, i32 0, i32 2
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  %158 = load i8*, i8** %157, align 8
  store i8 45, i8* %158, align 1
  br label %237

159:                                              ; preds = %132
  br label %274

160:                                              ; preds = %132
  br label %161

161:                                              ; preds = %160
  br label %112

162:                                              ; preds = %112
  br label %263

163:                                              ; preds = %65
  %164 = load i8*, i8** %10, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 2
  %166 = load i8, i8* %165, align 1
  %167 = icmp ne i8 %166, 0
  br i1 %167, label %185, label %168

168:                                              ; preds = %163
  %169 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %170 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %168
  %176 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %177 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, -1
  store i64 %179, i64* %177, align 8
  %180 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %181 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %180, i32 0, i32 2
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i32 1
  store i8** %183, i8*** %181, align 8
  br label %184

184:                                              ; preds = %175, %168
  br label %272

185:                                              ; preds = %163
  %186 = load i8*, i8** %10, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 2
  store i8* %187, i8** %10, align 8
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = load i8*, i8** %10, align 8
  %192 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %190
  %195 = load i8**, i8*** %7, align 8
  %196 = load %struct.option*, %struct.option** %6, align 8
  %197 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %198 = call i32 @usage_with_options_internal(i8** %195, %struct.option* %196, i32 1, %struct.parse_opt_ctx_t* %197)
  store i32 %198, i32* %4, align 4
  br label %315

199:                                              ; preds = %190, %185
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %199
  %203 = load i8*, i8** %10, align 8
  %204 = call i32 @strcmp(i8* %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %202
  %207 = load i8**, i8*** %7, align 8
  %208 = load %struct.option*, %struct.option** %6, align 8
  %209 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %210 = call i32 @usage_with_options_internal(i8** %207, %struct.option* %208, i32 0, %struct.parse_opt_ctx_t* %209)
  store i32 %210, i32* %4, align 4
  br label %315

211:                                              ; preds = %202, %199
  %212 = load i8*, i8** %10, align 8
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* @PARSE_OPT_LIST_OPTS, align 4
  store i32 %216, i32* %4, align 4
  br label %315

217:                                              ; preds = %211
  %218 = load i8*, i8** %10, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %217
  %222 = load i32, i32* @PARSE_OPT_LIST_SUBCMDS, align 4
  store i32 %222, i32* %4, align 4
  br label %315

223:                                              ; preds = %217
  %224 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %225 = load i8*, i8** %10, align 8
  %226 = load %struct.option*, %struct.option** %6, align 8
  %227 = call i32 @parse_long_opt(%struct.parse_opt_ctx_t* %224, i8* %225, %struct.option* %226)
  switch i32 %227, label %235 [
    i32 -1, label %228
    i32 -2, label %233
    i32 -3, label %234
  ]

228:                                              ; preds = %223
  %229 = load i8**, i8*** %7, align 8
  %230 = load %struct.option*, %struct.option** %6, align 8
  %231 = load i8*, i8** %10, align 8
  %232 = call i32 @parse_options_usage(i8** %229, %struct.option* %230, i8* %231, i32 0)
  store i32 %232, i32* %4, align 4
  br label %315

233:                                              ; preds = %223
  br label %237

234:                                              ; preds = %223
  store i32 0, i32* %9, align 4
  br label %274

235:                                              ; preds = %223
  br label %236

236:                                              ; preds = %235
  br label %263

237:                                              ; preds = %233, %144, %99
  %238 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %239 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %237
  %245 = load i32, i32* @PARSE_OPT_UNKNOWN, align 4
  store i32 %245, i32* %4, align 4
  br label %315

246:                                              ; preds = %237
  %247 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %248 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %247, i32 0, i32 2
  %249 = load i8**, i8*** %248, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 0
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %253 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %252, i32 0, i32 3
  %254 = load i8**, i8*** %253, align 8
  %255 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %256 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i8*, i8** %254, i64 %259
  store i8* %251, i8** %260, align 8
  %261 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %262 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %261, i32 0, i32 1
  store i8* null, i8** %262, align 8
  br label %263

263:                                              ; preds = %246, %236, %162, %50
  %264 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %265 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %264, i32 0, i32 6
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %266, -1
  store i64 %267, i64* %265, align 8
  %268 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %269 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %268, i32 0, i32 2
  %270 = load i8**, i8*** %269, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i32 1
  store i8** %271, i8*** %269, align 8
  br label %22

272:                                              ; preds = %184, %49, %22
  %273 = load i32, i32* @PARSE_OPT_DONE, align 4
  store i32 %273, i32* %4, align 4
  br label %315

274:                                              ; preds = %234, %159, %100
  %275 = load i8**, i8*** %7, align 8
  %276 = load %struct.option*, %struct.option** %6, align 8
  %277 = load i8*, i8** %10, align 8
  %278 = load i32, i32* %9, align 4
  %279 = call i32 @parse_options_usage(i8** %275, %struct.option* %276, i8* %277, i32 %278)
  %280 = load i32, i32* %9, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %274
  %283 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %284 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %283, i32 0, i32 4
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = load i8, i8* %286, align 8
  %288 = sext i8 %287 to i32
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %297, label %290

290:                                              ; preds = %282, %274
  %291 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %292 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %291, i32 0, i32 4
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 1
  %295 = load i8*, i8** %294, align 8
  %296 = icmp eq i8* %295, null
  br i1 %296, label %297, label %305

297:                                              ; preds = %290, %282
  %298 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %299 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %298, i32 0, i32 4
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 0
  %302 = load i8, i8* %301, align 8
  store i8 %302, i8* %11, align 1
  %303 = load %struct.option*, %struct.option** %6, align 8
  %304 = call i32 @parse_options_usage(i8** null, %struct.option* %303, i8* %11, i32 1)
  br label %313

305:                                              ; preds = %290
  %306 = load %struct.option*, %struct.option** %6, align 8
  %307 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %308 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %307, i32 0, i32 4
  %309 = load %struct.TYPE_2__*, %struct.TYPE_2__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 1
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @parse_options_usage(i8** null, %struct.option* %306, i8* %311, i32 0)
  br label %313

313:                                              ; preds = %305, %297
  %314 = load i32, i32* @PARSE_OPT_HELP, align 4
  store i32 %314, i32* %4, align 4
  br label %315

315:                                              ; preds = %313, %272, %244, %228, %221, %215, %206, %194, %139, %127, %94, %85
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local i32 @usage_with_options_internal(i8**, %struct.option*, i32, %struct.parse_opt_ctx_t*) #1

declare dso_local i32 @parse_short_opt(%struct.parse_opt_ctx_t*, %struct.option*) #1

declare dso_local i32 @parse_options_usage(i8**, %struct.option*, i8*, i32) #1

declare dso_local i32 @check_typos(i8*, %struct.option*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_long_opt(%struct.parse_opt_ctx_t*, i8*, %struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
