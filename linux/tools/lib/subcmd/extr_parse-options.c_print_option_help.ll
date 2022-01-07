; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_print_option_help.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_print_option_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, i8*, i32, i32, i8*, i8*, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@PARSE_OPT_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-%c\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"[=<n>]\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"[<n>]\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" <n>\00", align 1
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"[=<%s>]\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"[<%s>]\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" <%s>\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"[=...]\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"[...]\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@USAGE_OPTS_WIDTH = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"%*s%s\0A\00", align 1
@USAGE_GAP = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PARSE_OPT_NOBUILD = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"%*s(not built-in because %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.option*, i32)* @print_option_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_option_help(%struct.option* %0, i32 %1) #0 {
  %3 = alloca %struct.option*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.option*, %struct.option** %3, align 8
  %8 = getelementptr inbounds %struct.option, %struct.option* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 137
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fputc(i8 signext 10, i32 %12)
  %14 = load %struct.option*, %struct.option** %3, align 8
  %15 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i32, i32* @stderr, align 4
  %21 = load %struct.option*, %struct.option** %3, align 8
  %22 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %19, %11
  br label %250

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load %struct.option*, %struct.option** %3, align 8
  %31 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %250

37:                                               ; preds = %29, %26
  %38 = load %struct.option*, %struct.option** %3, align 8
  %39 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PARSE_OPT_DISABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %250

45:                                               ; preds = %37
  %46 = load i32, i32* @stderr, align 4
  %47 = call i64 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %47, i64* %5, align 8
  %48 = load %struct.option*, %struct.option** %3, align 8
  %49 = getelementptr inbounds %struct.option, %struct.option* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* @stderr, align 4
  %54 = load %struct.option*, %struct.option** %3, align 8
  %55 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %5, align 8
  br label %65

60:                                               ; preds = %45
  %61 = load i32, i32* @stderr, align 4
  %62 = call i64 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %60, %52
  %66 = load %struct.option*, %struct.option** %3, align 8
  %67 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.option*, %struct.option** %3, align 8
  %72 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* @stderr, align 4
  %77 = call i64 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %75, %70, %65
  %81 = load %struct.option*, %struct.option** %3, align 8
  %82 = getelementptr inbounds %struct.option, %struct.option* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32, i32* @stderr, align 4
  %87 = load %struct.option*, %struct.option** %3, align 8
  %88 = getelementptr inbounds %struct.option, %struct.option* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %85, %80
  %94 = load %struct.option*, %struct.option** %3, align 8
  %95 = getelementptr inbounds %struct.option, %struct.option* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %209 [
    i32 142, label %97
    i32 134, label %98
    i32 128, label %98
    i32 130, label %98
    i32 135, label %98
    i32 129, label %98
    i32 139, label %127
    i32 131, label %136
    i32 138, label %210
    i32 137, label %210
    i32 141, label %210
    i32 140, label %210
    i32 136, label %210
    i32 132, label %210
    i32 133, label %210
  ]

97:                                               ; preds = %93
  br label %211

98:                                               ; preds = %93, %93, %93, %93, %93
  %99 = load %struct.option*, %struct.option** %3, align 8
  %100 = getelementptr inbounds %struct.option, %struct.option* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %98
  %106 = load %struct.option*, %struct.option** %3, align 8
  %107 = getelementptr inbounds %struct.option, %struct.option* %106, i32 0, i32 4
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32, i32* @stderr, align 4
  %112 = call i64 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i64, i64* %5, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %5, align 8
  br label %120

115:                                              ; preds = %105
  %116 = load i32, i32* @stderr, align 4
  %117 = call i64 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %118 = load i64, i64* %5, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %115, %110
  br label %126

121:                                              ; preds = %98
  %122 = load i32, i32* @stderr, align 4
  %123 = call i64 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %124 = load i64, i64* %5, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %121, %120
  br label %211

127:                                              ; preds = %93
  %128 = load %struct.option*, %struct.option** %3, align 8
  %129 = getelementptr inbounds %struct.option, %struct.option* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %211

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %93, %135
  %137 = load %struct.option*, %struct.option** %3, align 8
  %138 = getelementptr inbounds %struct.option, %struct.option* %137, i32 0, i32 5
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %179

141:                                              ; preds = %136
  %142 = load %struct.option*, %struct.option** %3, align 8
  %143 = getelementptr inbounds %struct.option, %struct.option* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %141
  %149 = load %struct.option*, %struct.option** %3, align 8
  %150 = getelementptr inbounds %struct.option, %struct.option* %149, i32 0, i32 4
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load i32, i32* @stderr, align 4
  %155 = load %struct.option*, %struct.option** %3, align 8
  %156 = getelementptr inbounds %struct.option, %struct.option* %155, i32 0, i32 5
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %157)
  %159 = load i64, i64* %5, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %5, align 8
  br label %169

161:                                              ; preds = %148
  %162 = load i32, i32* @stderr, align 4
  %163 = load %struct.option*, %struct.option** %3, align 8
  %164 = getelementptr inbounds %struct.option, %struct.option* %163, i32 0, i32 5
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 (i32, i8*, ...) @fprintf(i32 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %165)
  %167 = load i64, i64* %5, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %5, align 8
  br label %169

169:                                              ; preds = %161, %153
  br label %178

170:                                              ; preds = %141
  %171 = load i32, i32* @stderr, align 4
  %172 = load %struct.option*, %struct.option** %3, align 8
  %173 = getelementptr inbounds %struct.option, %struct.option* %172, i32 0, i32 5
  %174 = load i8*, i8** %173, align 8
  %175 = call i64 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %174)
  %176 = load i64, i64* %5, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %5, align 8
  br label %178

178:                                              ; preds = %170, %169
  br label %208

179:                                              ; preds = %136
  %180 = load %struct.option*, %struct.option** %3, align 8
  %181 = getelementptr inbounds %struct.option, %struct.option* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %179
  %187 = load %struct.option*, %struct.option** %3, align 8
  %188 = getelementptr inbounds %struct.option, %struct.option* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i32, i32* @stderr, align 4
  %193 = call i64 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %194 = load i64, i64* %5, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %5, align 8
  br label %201

196:                                              ; preds = %186
  %197 = load i32, i32* @stderr, align 4
  %198 = call i64 (i32, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %199 = load i64, i64* %5, align 8
  %200 = add i64 %199, %198
  store i64 %200, i64* %5, align 8
  br label %201

201:                                              ; preds = %196, %191
  br label %207

202:                                              ; preds = %179
  %203 = load i32, i32* @stderr, align 4
  %204 = call i64 (i32, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %205 = load i64, i64* %5, align 8
  %206 = add i64 %205, %204
  store i64 %206, i64* %5, align 8
  br label %207

207:                                              ; preds = %202, %201
  br label %208

208:                                              ; preds = %207, %178
  br label %211

209:                                              ; preds = %93
  br label %210

210:                                              ; preds = %93, %93, %93, %93, %93, %93, %93, %209
  br label %211

211:                                              ; preds = %210, %208, %134, %126, %97
  %212 = load i64, i64* %5, align 8
  %213 = load i64, i64* @USAGE_OPTS_WIDTH, align 8
  %214 = icmp ule i64 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = load i64, i64* @USAGE_OPTS_WIDTH, align 8
  %217 = load i64, i64* %5, align 8
  %218 = sub i64 %216, %217
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %6, align 4
  br label %225

220:                                              ; preds = %211
  %221 = load i32, i32* @stderr, align 4
  %222 = call i32 @fputc(i8 signext 10, i32 %221)
  %223 = load i64, i64* @USAGE_OPTS_WIDTH, align 8
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %220, %215
  %226 = load i32, i32* @stderr, align 4
  %227 = load i32, i32* %6, align 4
  %228 = load i8*, i8** @USAGE_GAP, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  %231 = load %struct.option*, %struct.option** %3, align 8
  %232 = getelementptr inbounds %struct.option, %struct.option* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = call i64 (i32, i8*, ...) @fprintf(i32 %226, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %230, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %233)
  %235 = load %struct.option*, %struct.option** %3, align 8
  %236 = getelementptr inbounds %struct.option, %struct.option* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @PARSE_OPT_NOBUILD, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %225
  %242 = load i32, i32* @stderr, align 4
  %243 = load i64, i64* @USAGE_OPTS_WIDTH, align 8
  %244 = load i8*, i8** @USAGE_GAP, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 %243
  %246 = load %struct.option*, %struct.option** %3, align 8
  %247 = getelementptr inbounds %struct.option, %struct.option* %246, i32 0, i32 6
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 (i32, i8*, ...) @fprintf(i32 %242, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* %245, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %25, %36, %44, %241, %225
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i64 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
