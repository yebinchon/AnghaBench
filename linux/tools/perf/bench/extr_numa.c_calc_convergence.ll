; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_calc_convergence.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_calc_convergence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, %struct.thread_data* }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }
%struct.thread_data = type { i32, i32 }

@MAX_NR_NODES = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c" %2d/%-2d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" [%2d/%-2d]\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" l:%3d-%-3d (%3d)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [%4.1f%%]\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" (%6.1fs converged)\0A\00", align 1
@NSEC_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c" (%6.1fs de-converged)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double*)* @calc_convergence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_convergence(double %0, double* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.thread_data*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  store double %0, double* %3, align 8
  store double* %1, double** %4, align 8
  %24 = load i32, i32* @MAX_NR_NODES, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 1, i32* %19, align 4
  br label %252

40:                                               ; preds = %33, %2
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i32, i32* %16, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %27, i64 %50
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %41

55:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %18, align 4
  br label %56

56:                                               ; preds = %95, %55
  %57 = load i32, i32* %18, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %98

63:                                               ; preds = %56
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load %struct.thread_data*, %struct.thread_data** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %66, i64 %68
  store %struct.thread_data* %69, %struct.thread_data** %20, align 8
  %70 = load %struct.thread_data*, %struct.thread_data** %20, align 8
  %71 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %95

76:                                               ; preds = %63
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @numa_node_of_cpu(i32 %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %27, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.thread_data*, %struct.thread_data** %20, align 8
  %85 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %21, align 4
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i8* @min(i32 %87, i32 %88)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i8* @max(i32 %91, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %76, %75
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %56

98:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %103

103:                                              ; preds = %131, %98
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %103
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @is_node_present(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  br label %131

115:                                              ; preds = %110
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %27, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i8* @min(i32 %120, i32 %121)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i8* @max(i32 %124, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %115, %114
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %103

134:                                              ; preds = %103
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp sgt i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @BUG_ON(i32 %138)
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %140, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @BUG_ON(i32 %146)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %16, align 4
  br label %148

148:                                              ; preds = %173, %134
  %149 = load i32, i32* %16, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %148
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @is_node_present(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  br label %173

160:                                              ; preds = %155
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @count_node_processes(i32 %161)
  store i32 %162, i32* %22, align 4
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %27, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %22, align 4
  %169 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load i32, i32* %22, align 4
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %160, %159
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  br label %148

176:                                              ; preds = %148
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %11, align 4
  %179 = sub nsw i32 %177, %178
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %181)
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %5, align 4
  %187 = sub i32 %185, %186
  %188 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %183, i32 %184, i32 %187)
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %176
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = load i32, i32* %5, align 4
  %196 = uitofp i32 %195 to double
  %197 = load i32, i32* %6, align 4
  %198 = uitofp i32 %197 to double
  %199 = fdiv double %196, %198
  %200 = fsub double 1.000000e+00, %199
  store double %200, double* %23, align 8
  %201 = load double, double* %23, align 8
  %202 = fmul double %201, 1.000000e+02
  %203 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %202)
  br label %204

204:                                              ; preds = %194, %191, %176
  %205 = call i32 @calc_convergence_compression(i32* %13)
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %239

208:                                              ; preds = %204
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %209, %213
  br i1 %214, label %215, label %239

215:                                              ; preds = %208
  %216 = load double*, double** %4, align 8
  %217 = load double, double* %216, align 8
  %218 = fcmp une double %217, 0.000000e+00
  br i1 %218, label %238, label %219

219:                                              ; preds = %215
  %220 = load double, double* %3, align 8
  %221 = load double*, double** %4, align 8
  store double %220, double* %221, align 8
  %222 = load double*, double** %4, align 8
  %223 = load double, double* %222, align 8
  %224 = load double, double* @NSEC_PER_SEC, align 8
  %225 = fdiv double %223, %224
  %226 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double %225)
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %219
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  store i32 1, i32* %234, align 8
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  store i32 1, i32* %236, align 4
  br label %237

237:                                              ; preds = %232, %219
  br label %238

238:                                              ; preds = %237, %215
  br label %251

239:                                              ; preds = %208, %204
  %240 = load double*, double** %4, align 8
  %241 = load double, double* %240, align 8
  %242 = fcmp une double %241, 0.000000e+00
  br i1 %242, label %243, label %249

243:                                              ; preds = %239
  %244 = load double, double* %3, align 8
  %245 = load double, double* @NSEC_PER_SEC, align 8
  %246 = fdiv double %244, %245
  %247 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), double %246)
  %248 = load double*, double** %4, align 8
  store double 0.000000e+00, double* %248, align 8
  br label %249

249:                                              ; preds = %243, %239
  %250 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %238
  store i32 0, i32* %19, align 4
  br label %252

252:                                              ; preds = %251, %39
  %253 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %253)
  %254 = load i32, i32* %19, align 4
  switch i32 %254, label %256 [
    i32 0, label %255
    i32 1, label %255
  ]

255:                                              ; preds = %252, %252
  ret void

256:                                              ; preds = %252
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @numa_node_of_cpu(i32) #2

declare dso_local i8* @min(i32, i32) #2

declare dso_local i8* @max(i32, i32) #2

declare dso_local i32 @is_node_present(i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @count_node_processes(i32) #2

declare dso_local i32 @tprintf(i8*, ...) #2

declare dso_local i32 @calc_convergence_compression(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
