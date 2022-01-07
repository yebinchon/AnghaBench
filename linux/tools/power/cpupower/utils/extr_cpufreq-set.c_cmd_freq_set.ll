; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-set.c_cmd_freq_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-set.c_cmd_freq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i8*, i8*, i8* }
%struct.cpufreq_affected_cpus = type { i32, %struct.cpufreq_affected_cpus* }

@.str = private unnamed_addr constant [10 x i8] c"d:u:g:f:r\00", align 1
@set_opts = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@optarg = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%19s\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"the same parameter was passed more than once\0A\00", align 1
@.str.3 = private unnamed_addr constant [96 x i8] c"the -f/--freq parameter cannot be combined with -d/--min, -u/--max or\0A-g/--governor parameters\0A\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"At least one parameter out of -f/--freq, -d/--min, -u/--max, and\0A-g/--governor must be passed\0A\00", align 1
@cpus_chosen = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Setting cpu: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_freq_set(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [20 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca %struct.cpufreq_policy, align 8
  %15 = alloca %struct.cpufreq_affected_cpus*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %16 = bitcast %struct.cpufreq_policy* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  br label %17

17:                                               ; preds = %130, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* @set_opts, align 4
  %21 = call i32 @getopt_long(i32 %18, i8** %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20, i32* null)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %129 [
    i32 63, label %23
    i32 -1, label %27
    i32 114, label %28
    i32 100, label %37
    i32 117, label %58
    i32 102, label %79
    i32 103, label %96
  ]

23:                                               ; preds = %17
  %24 = call i32 (...) @print_unknown_arg()
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %259

27:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %129

28:                                               ; preds = %17
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %129

37:                                               ; preds = %17
  %38 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i8* @string_to_frequency(i8* %47)
  %49 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = call i32 (...) @print_unknown_arg()
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %259

57:                                               ; preds = %44
  br label %129

58:                                               ; preds = %17
  %59 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i8* @string_to_frequency(i8* %68)
  %70 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 1
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = call i32 (...) @print_unknown_arg()
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %259

78:                                               ; preds = %65
  br label %129

79:                                               ; preds = %17
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i8*, i8** @optarg, align 8
  %87 = call i8* @string_to_frequency(i8* %86)
  %88 = ptrtoint i8* %87 to i64
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = call i32 (...) @print_unknown_arg()
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %259

95:                                               ; preds = %85
  br label %129

96:                                               ; preds = %17
  %97 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = load i8*, i8** @optarg, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = icmp slt i32 %107, 3
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = load i8*, i8** @optarg, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = icmp sgt i32 %111, 18
  br i1 %112, label %113, label %117

113:                                              ; preds = %109, %103
  %114 = call i32 (...) @print_unknown_arg()
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %259

117:                                              ; preds = %109
  %118 = load i8*, i8** @optarg, align 8
  %119 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %120 = call i32 @sscanf(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  %121 = icmp ne i32 %120, 1
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = call i32 (...) @print_unknown_arg()
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %259

126:                                              ; preds = %117
  %127 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %128 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  store i8* %127, i8** %128, align 8
  br label %129

129:                                              ; preds = %17, %126, %95, %78, %57, %34, %27
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %17, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %259

140:                                              ; preds = %133
  %141 = load i64, i64* %11, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = call i8* @_(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0))
  %148 = call i32 (i8*, ...) @printf(i8* %147)
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %259

151:                                              ; preds = %143, %140
  %152 = load i64, i64* %11, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %154
  %158 = call i8* @_(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0))
  %159 = call i32 (i8*, ...) @printf(i8* %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %259

162:                                              ; preds = %154, %151
  %163 = load i32, i32* @cpus_chosen, align 4
  %164 = call i64 @bitmask_isallclear(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32, i32* @cpus_chosen, align 4
  %168 = call i32 @bitmask_setall(i32 %167)
  br label %169

169:                                              ; preds = %166, %162
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %223

172:                                              ; preds = %169
  %173 = load i32, i32* @cpus_chosen, align 4
  %174 = call i32 @bitmask_first(i32 %173)
  store i32 %174, i32* %13, align 4
  br label %175

175:                                              ; preds = %219, %172
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* @cpus_chosen, align 4
  %178 = call i32 @bitmask_last(i32 %177)
  %179 = icmp ule i32 %176, %178
  br i1 %179, label %180, label %222

180:                                              ; preds = %175
  %181 = load i32, i32* @cpus_chosen, align 4
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @bitmask_isbitset(i32 %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @cpupower_is_cpu_online(i32 %186)
  %188 = icmp ne i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %185, %180
  br label %219

190:                                              ; preds = %185
  %191 = load i32, i32* %13, align 4
  %192 = call %struct.cpufreq_affected_cpus* @cpufreq_get_related_cpus(i32 %191)
  store %struct.cpufreq_affected_cpus* %192, %struct.cpufreq_affected_cpus** %15, align 8
  %193 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %15, align 8
  %194 = icmp ne %struct.cpufreq_affected_cpus* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %190
  br label %222

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %202, %196
  %198 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %15, align 8
  %199 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %198, i32 0, i32 1
  %200 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %199, align 8
  %201 = icmp ne %struct.cpufreq_affected_cpus* %200, null
  br i1 %201, label %202, label %211

202:                                              ; preds = %197
  %203 = load i32, i32* @cpus_chosen, align 4
  %204 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %15, align 8
  %205 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @bitmask_setbit(i32 %203, i32 %206)
  %208 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %15, align 8
  %209 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %208, i32 0, i32 1
  %210 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %209, align 8
  store %struct.cpufreq_affected_cpus* %210, %struct.cpufreq_affected_cpus** %15, align 8
  br label %197

211:                                              ; preds = %197
  %212 = load i32, i32* @cpus_chosen, align 4
  %213 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %15, align 8
  %214 = getelementptr inbounds %struct.cpufreq_affected_cpus, %struct.cpufreq_affected_cpus* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @bitmask_setbit(i32 %212, i32 %215)
  %217 = load %struct.cpufreq_affected_cpus*, %struct.cpufreq_affected_cpus** %15, align 8
  %218 = call i32 @cpufreq_put_related_cpus(%struct.cpufreq_affected_cpus* %217)
  br label %219

219:                                              ; preds = %211, %189
  %220 = load i32, i32* %13, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %175

222:                                              ; preds = %195, %175
  br label %223

223:                                              ; preds = %222, %169
  %224 = load i32, i32* @cpus_chosen, align 4
  %225 = call i32 @bitmask_first(i32 %224)
  store i32 %225, i32* %13, align 4
  br label %226

226:                                              ; preds = %255, %223
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* @cpus_chosen, align 4
  %229 = call i32 @bitmask_last(i32 %228)
  %230 = icmp ule i32 %227, %229
  br i1 %230, label %231, label %258

231:                                              ; preds = %226
  %232 = load i32, i32* @cpus_chosen, align 4
  %233 = load i32, i32* %13, align 4
  %234 = call i32 @bitmask_isbitset(i32 %232, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load i32, i32* %13, align 4
  %238 = call i32 @cpupower_is_cpu_online(i32 %237)
  %239 = icmp ne i32 %238, 1
  br i1 %239, label %240, label %241

240:                                              ; preds = %236, %231
  br label %255

241:                                              ; preds = %236
  %242 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %243 = load i32, i32* %13, align 4
  %244 = call i32 (i8*, ...) @printf(i8* %242, i32 %243)
  %245 = load i32, i32* %13, align 4
  %246 = load i64, i64* %11, align 8
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @do_one_cpu(i32 %245, %struct.cpufreq_policy* %14, i64 %246, i32 %247)
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %241
  %252 = call i32 (...) @print_error()
  %253 = load i32, i32* %6, align 4
  store i32 %253, i32* %3, align 4
  br label %259

254:                                              ; preds = %241
  br label %255

255:                                              ; preds = %254, %240
  %256 = load i32, i32* %13, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %13, align 4
  br label %226

258:                                              ; preds = %226
  store i32 0, i32* %3, align 4
  br label %259

259:                                              ; preds = %258, %251, %157, %146, %136, %122, %113, %91, %74, %53, %23
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #2

declare dso_local i32 @print_unknown_arg(...) #2

declare dso_local i8* @string_to_frequency(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i64 @bitmask_isallclear(i32) #2

declare dso_local i32 @bitmask_setall(i32) #2

declare dso_local i32 @bitmask_first(i32) #2

declare dso_local i32 @bitmask_last(i32) #2

declare dso_local i32 @bitmask_isbitset(i32, i32) #2

declare dso_local i32 @cpupower_is_cpu_online(i32) #2

declare dso_local %struct.cpufreq_affected_cpus* @cpufreq_get_related_cpus(i32) #2

declare dso_local i32 @bitmask_setbit(i32, i32) #2

declare dso_local i32 @cpufreq_put_related_cpus(%struct.cpufreq_affected_cpus*) #2

declare dso_local i32 @do_one_cpu(i32, %struct.cpufreq_policy*, i64, i32) #2

declare dso_local i32 @print_error(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
