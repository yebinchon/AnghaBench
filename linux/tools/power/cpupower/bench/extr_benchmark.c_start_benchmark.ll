; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_benchmark.c_start_benchmark.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_benchmark.c_start_benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i64, i64, i32, i32, i8*, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"_round %i: doing %u cycles with %u calculations for %lius\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%u %li %li \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"average: %lius, rps:%li\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"performance cycle took %lius, sleep: %lius, load: %lius, rounds: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%li \00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"powersave cycle took %lius, sleep: %lius, load: %lius, rounds: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%.3f\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"performance is at %.2f%%\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_benchmark(%struct.config* %0) #0 {
  %2 = alloca %struct.config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.config* %0, %struct.config** %2, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.config*, %struct.config** %2, align 8
  %15 = getelementptr inbounds %struct.config, %struct.config* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.config*, %struct.config** %2, align 8
  %18 = getelementptr inbounds %struct.config, %struct.config* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %39, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.config*, %struct.config** %2, align 8
  %23 = getelementptr inbounds %struct.config, %struct.config* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ule i32 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = load %struct.config*, %struct.config** %2, align 8
  %30 = getelementptr inbounds %struct.config, %struct.config* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.config*, %struct.config** %2, align 8
  %33 = getelementptr inbounds %struct.config, %struct.config* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = mul nsw i64 %28, %35
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %20

42:                                               ; preds = %20
  %43 = load i64, i64* %12, align 8
  %44 = mul i64 %43, 2
  store i64 %44, i64* %12, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %260, %42
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.config*, %struct.config** %2, align 8
  %48 = getelementptr inbounds %struct.config, %struct.config* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %263

51:                                               ; preds = %45
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @show_progress(i64 %52, i64 %53)
  %55 = load %struct.config*, %struct.config** %2, align 8
  %56 = getelementptr inbounds %struct.config, %struct.config* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @set_cpufreq_governor(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %263

61:                                               ; preds = %51
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.config*, %struct.config** %2, align 8
  %64 = call i32 @calculate_timespace(i64 %62, %struct.config* %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.config*, %struct.config** %2, align 8
  %66 = getelementptr inbounds %struct.config, %struct.config* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load i32, i32* %3, align 4
  %71 = add i32 %70, 1
  %72 = zext i32 %71 to i64
  %73 = load %struct.config*, %struct.config** %2, align 8
  %74 = getelementptr inbounds %struct.config, %struct.config* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i64, i64* %8, align 8
  %78 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %72, i32 %75, i32 %76, i64 %77)
  br label %79

79:                                               ; preds = %69, %61
  %80 = load %struct.config*, %struct.config** %2, align 8
  %81 = getelementptr inbounds %struct.config, %struct.config* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %84, i64 %85, i64 %86)
  %88 = load %struct.config*, %struct.config** %2, align 8
  %89 = getelementptr inbounds %struct.config, %struct.config* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %79
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = sdiv i64 %93, %95
  %97 = load i32, i32* %11, align 4
  %98 = mul i32 1000000, %97
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* %8, align 8
  %101 = sdiv i64 %99, %100
  %102 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %96, i64 %101)
  br label %103

103:                                              ; preds = %92, %79
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %137, %103
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.config*, %struct.config** %2, align 8
  %107 = getelementptr inbounds %struct.config, %struct.config* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ult i32 %105, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  %111 = call i64 (...) @get_time()
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @usleep(i64 %112)
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @ROUNDS(i32 %114)
  %116 = call i64 (...) @get_time()
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %5, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load i64, i64* %7, align 8
  %121 = sub nsw i64 %119, %120
  %122 = load i64, i64* %9, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %9, align 8
  %124 = load %struct.config*, %struct.config** %2, align 8
  %125 = getelementptr inbounds %struct.config, %struct.config* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %110
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* %5, align 8
  %131 = sub nsw i64 %129, %130
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i64 %131, i64 %132, i64 %133, i32 %134)
  br label %136

136:                                              ; preds = %128, %110
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %104

140:                                              ; preds = %104
  %141 = load %struct.config*, %struct.config** %2, align 8
  %142 = getelementptr inbounds %struct.config, %struct.config* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = load %struct.config*, %struct.config** %2, align 8
  %146 = getelementptr inbounds %struct.config, %struct.config* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = sdiv i64 %144, %148
  %150 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %149)
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* %8, align 8
  %153 = add nsw i64 %151, %152
  %154 = load i64, i64* %13, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %13, align 8
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* %13, align 8
  %158 = call i32 @show_progress(i64 %156, i64 %157)
  %159 = load %struct.config*, %struct.config** %2, align 8
  %160 = getelementptr inbounds %struct.config, %struct.config* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.config*, %struct.config** %2, align 8
  %163 = getelementptr inbounds %struct.config, %struct.config* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @set_cpufreq_governor(i8* %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %140
  br label %263

168:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %202, %168
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.config*, %struct.config** %2, align 8
  %172 = getelementptr inbounds %struct.config, %struct.config* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = icmp ult i32 %170, %173
  br i1 %174, label %175, label %205

175:                                              ; preds = %169
  %176 = call i64 (...) @get_time()
  store i64 %176, i64* %5, align 8
  %177 = load i64, i64* %7, align 8
  %178 = call i32 @usleep(i64 %177)
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @ROUNDS(i32 %179)
  %181 = call i64 (...) @get_time()
  store i64 %181, i64* %6, align 8
  %182 = load i64, i64* %6, align 8
  %183 = load i64, i64* %5, align 8
  %184 = sub nsw i64 %182, %183
  %185 = load i64, i64* %7, align 8
  %186 = sub nsw i64 %184, %185
  %187 = load i64, i64* %10, align 8
  %188 = add nsw i64 %187, %186
  store i64 %188, i64* %10, align 8
  %189 = load %struct.config*, %struct.config** %2, align 8
  %190 = getelementptr inbounds %struct.config, %struct.config* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %175
  %194 = load i64, i64* %6, align 8
  %195 = load i64, i64* %5, align 8
  %196 = sub nsw i64 %194, %195
  %197 = load i64, i64* %7, align 8
  %198 = load i64, i64* %8, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i64 %196, i64 %197, i64 %198, i32 %199)
  br label %201

201:                                              ; preds = %193, %175
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %4, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %169

205:                                              ; preds = %169
  %206 = load i64, i64* %7, align 8
  %207 = load i64, i64* %8, align 8
  %208 = add nsw i64 %206, %207
  %209 = load i64, i64* %13, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %13, align 8
  %211 = load %struct.config*, %struct.config** %2, align 8
  %212 = getelementptr inbounds %struct.config, %struct.config* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 8
  %214 = load i64, i64* %10, align 8
  %215 = load %struct.config*, %struct.config** %2, align 8
  %216 = getelementptr inbounds %struct.config, %struct.config* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = sdiv i64 %214, %218
  %220 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %219)
  %221 = load %struct.config*, %struct.config** %2, align 8
  %222 = getelementptr inbounds %struct.config, %struct.config* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 8
  %224 = load i64, i64* %9, align 8
  %225 = sitofp i64 %224 to double
  %226 = fmul double %225, 1.000000e+02
  %227 = load i64, i64* %10, align 8
  %228 = sitofp i64 %227 to double
  %229 = fdiv double %226, %228
  %230 = fptosi double %229 to i64
  %231 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %230)
  %232 = load %struct.config*, %struct.config** %2, align 8
  %233 = getelementptr inbounds %struct.config, %struct.config* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @fflush(i32 %234)
  %236 = load %struct.config*, %struct.config** %2, align 8
  %237 = getelementptr inbounds %struct.config, %struct.config* %236, i32 0, i32 7
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %205
  %241 = load i64, i64* %9, align 8
  %242 = sitofp i64 %241 to double
  %243 = fmul double %242, 1.000000e+02
  %244 = load i64, i64* %10, align 8
  %245 = sitofp i64 %244 to double
  %246 = fdiv double %243, %245
  %247 = fptosi double %246 to i64
  %248 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %247)
  br label %249

249:                                              ; preds = %240, %205
  %250 = load %struct.config*, %struct.config** %2, align 8
  %251 = getelementptr inbounds %struct.config, %struct.config* %250, i32 0, i32 6
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* %7, align 8
  %254 = add nsw i64 %253, %252
  store i64 %254, i64* %7, align 8
  %255 = load %struct.config*, %struct.config** %2, align 8
  %256 = getelementptr inbounds %struct.config, %struct.config* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %8, align 8
  %259 = add nsw i64 %258, %257
  store i64 %259, i64* %8, align 8
  br label %260

260:                                              ; preds = %249
  %261 = load i32, i32* %3, align 4
  %262 = add i32 %261, 1
  store i32 %262, i32* %3, align 4
  br label %45

263:                                              ; preds = %60, %167, %45
  ret void
}

declare dso_local i32 @show_progress(i64, i64) #1

declare dso_local i64 @set_cpufreq_governor(i8*, i32) #1

declare dso_local i32 @calculate_timespace(i64, %struct.config*) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

declare dso_local i64 @get_time(...) #1

declare dso_local i32 @usleep(i64) #1

declare dso_local i32 @ROUNDS(i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
