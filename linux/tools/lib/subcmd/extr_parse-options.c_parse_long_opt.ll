; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_long_opt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_long_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i8**, i8*, i32 }
%struct.option = type { i64, i8*, %struct.option* }

@OPTION_END = common dso_local global i64 0, align 8
@OPTION_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"takes no value\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@OPT_UNSET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c" Error: Ambiguous option: %s (could be --%s%s or --%s%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, i8*, %struct.option*)* @parse_long_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_long_opt(%struct.parse_opt_ctx_t* %0, i8* %1, %struct.option* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.option*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.option* %2, %struct.option** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 61)
  store i8* %16, i8** %8, align 8
  store %struct.option* null, %struct.option** %9, align 8
  store %struct.option* null, %struct.option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %19, %3
  br label %26

26:                                               ; preds = %254, %25
  br label %27

27:                                               ; preds = %213, %26
  %28 = load %struct.option*, %struct.option** %7, align 8
  %29 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OPTION_END, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %216

33:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  %34 = load %struct.option*, %struct.option** %7, align 8
  %35 = getelementptr inbounds %struct.option, %struct.option* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %213

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.option*, %struct.option** %7, align 8
  %42 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @skip_prefix(i8* %40, i8* %43)
  store i8* %44, i8** %13, align 8
  %45 = load %struct.option*, %struct.option** %7, align 8
  %46 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OPTION_ARGUMENT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %39
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %213

54:                                               ; preds = %50
  %55 = load i8*, i8** %13, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 61
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.option*, %struct.option** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @opterror(%struct.option* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %4, align 4
  br label %259

63:                                               ; preds = %54
  %64 = load i8*, i8** %13, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %213

68:                                               ; preds = %63
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 -2
  %71 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %72 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %75 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %73, i64 %78
  store i8* %70, i8** %79, align 8
  store i32 0, i32* %4, align 4
  br label %259

80:                                               ; preds = %39
  %81 = load i8*, i8** %13, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %192, label %83

83:                                               ; preds = %80
  %84 = load %struct.option*, %struct.option** %7, align 8
  %85 = getelementptr inbounds %struct.option, %struct.option* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strstarts(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %83
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.option*, %struct.option** %7, align 8
  %92 = getelementptr inbounds %struct.option, %struct.option* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  %95 = call i8* @skip_prefix(i8* %90, i8* %94)
  store i8* %95, i8** %13, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i32, i32* @OPT_UNSET, align 4
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %14, align 4
  br label %193

102:                                              ; preds = %89
  %103 = load %struct.option*, %struct.option** %7, align 8
  %104 = getelementptr inbounds %struct.option, %struct.option* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  %107 = load i8*, i8** %6, align 8
  %108 = call i64 @strstarts(i8* %106, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load i32, i32* @OPT_UNSET, align 4
  %112 = load i32, i32* %14, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %14, align 4
  br label %129

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %83
  %116 = load %struct.option*, %struct.option** %7, align 8
  %117 = getelementptr inbounds %struct.option, %struct.option* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = call i64 @strncmp(i8* %118, i8* %119, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %153, label %128

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %186, %157, %128, %110
  %130 = load %struct.option*, %struct.option** %9, align 8
  %131 = icmp ne %struct.option* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.option*, %struct.option** %9, align 8
  store %struct.option* %133, %struct.option** %10, align 8
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @OPT_UNSET, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %8, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  %148 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %149 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %145, %140, %135
  %151 = load %struct.option*, %struct.option** %7, align 8
  store %struct.option* %151, %struct.option** %9, align 8
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %11, align 4
  br label %213

153:                                              ; preds = %115
  %154 = load i8*, i8** %6, align 8
  %155 = call i64 @strstarts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* @OPT_UNSET, align 4
  %159 = load i32, i32* %14, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %14, align 4
  br label %129

161:                                              ; preds = %153
  %162 = load i8*, i8** %6, align 8
  %163 = call i64 @strncmp(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %213

166:                                              ; preds = %161
  %167 = load i32, i32* @OPT_UNSET, align 4
  %168 = load i32, i32* %14, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %14, align 4
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 3
  %172 = load %struct.option*, %struct.option** %7, align 8
  %173 = getelementptr inbounds %struct.option, %struct.option* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @skip_prefix(i8* %171, i8* %174)
  store i8* %175, i8** %13, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %187, label %178

178:                                              ; preds = %166
  %179 = load %struct.option*, %struct.option** %7, align 8
  %180 = getelementptr inbounds %struct.option, %struct.option* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 3
  %184 = call i64 @strstarts(i8* %181, i8* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  br label %129

187:                                              ; preds = %178, %166
  %188 = load i8*, i8** %13, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  br label %213

191:                                              ; preds = %187
  br label %192

192:                                              ; preds = %191, %80
  br label %193

193:                                              ; preds = %192, %98
  %194 = load i8*, i8** %13, align 8
  %195 = load i8, i8* %194, align 1
  %196 = icmp ne i8 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %193
  %198 = load i8*, i8** %13, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 61
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %213

203:                                              ; preds = %197
  %204 = load i8*, i8** %13, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %207 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %203, %193
  %209 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %210 = load %struct.option*, %struct.option** %7, align 8
  %211 = load i32, i32* %14, align 4
  %212 = call i32 @get_value(%struct.parse_opt_ctx_t* %209, %struct.option* %210, i32 %211)
  store i32 %212, i32* %4, align 4
  br label %259

213:                                              ; preds = %202, %190, %165, %150, %67, %53, %38
  %214 = load %struct.option*, %struct.option** %7, align 8
  %215 = getelementptr inbounds %struct.option, %struct.option* %214, i32 1
  store %struct.option* %215, %struct.option** %7, align 8
  br label %27

216:                                              ; preds = %27
  %217 = load %struct.option*, %struct.option** %10, align 8
  %218 = icmp ne %struct.option* %217, null
  br i1 %218, label %219, label %241

219:                                              ; preds = %216
  %220 = load i32, i32* @stderr, align 4
  %221 = load i8*, i8** %6, align 8
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* @OPT_UNSET, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %228 = load %struct.option*, %struct.option** %10, align 8
  %229 = getelementptr inbounds %struct.option, %struct.option* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @OPT_UNSET, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %237 = load %struct.option*, %struct.option** %9, align 8
  %238 = getelementptr inbounds %struct.option, %struct.option* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @fprintf(i32 %220, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %221, i8* %227, i8* %230, i8* %236, i8* %239)
  store i32 -1, i32* %4, align 4
  br label %259

241:                                              ; preds = %216
  %242 = load %struct.option*, %struct.option** %9, align 8
  %243 = icmp ne %struct.option* %242, null
  br i1 %243, label %244, label %249

244:                                              ; preds = %241
  %245 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %246 = load %struct.option*, %struct.option** %9, align 8
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @get_value(%struct.parse_opt_ctx_t* %245, %struct.option* %246, i32 %247)
  store i32 %248, i32* %4, align 4
  br label %259

249:                                              ; preds = %241
  %250 = load %struct.option*, %struct.option** %7, align 8
  %251 = getelementptr inbounds %struct.option, %struct.option* %250, i32 0, i32 2
  %252 = load %struct.option*, %struct.option** %251, align 8
  %253 = icmp ne %struct.option* %252, null
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = load %struct.option*, %struct.option** %7, align 8
  %256 = getelementptr inbounds %struct.option, %struct.option* %255, i32 0, i32 2
  %257 = load %struct.option*, %struct.option** %256, align 8
  store %struct.option* %257, %struct.option** %7, align 8
  br label %26

258:                                              ; preds = %249
  store i32 -2, i32* %4, align 4
  br label %259

259:                                              ; preds = %258, %244, %219, %208, %68, %59
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @skip_prefix(i8*, i8*) #1

declare dso_local i32 @opterror(%struct.option*, i8*, i32) #1

declare dso_local i64 @strstarts(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @get_value(%struct.parse_opt_ctx_t*, %struct.option*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
