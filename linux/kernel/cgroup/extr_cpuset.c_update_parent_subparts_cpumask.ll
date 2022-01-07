; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_parent_subparts_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_update_parent_subparts_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.cpuset = type { i32, %struct.cpumask*, i32, %struct.cpumask*, %struct.cpumask*, i32 }
%struct.tmpmasks = type { %struct.cpumask*, %struct.cpumask* }

@cpuset_rwsem = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@partcmd_update = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@partcmd_enable = common dso_local global i32 0, align 4
@partcmd_disable = common dso_local global i32 0, align 4
@cpu_active_mask = common dso_local global %struct.cpumask* null, align 8
@callback_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, i32, %struct.cpumask*, %struct.tmpmasks*)* @update_parent_subparts_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_parent_subparts_cpumask(%struct.cpuset* %0, i32 %1, %struct.cpumask* %2, %struct.tmpmasks* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpumask*, align 8
  %9 = alloca %struct.tmpmasks*, align 8
  %10 = alloca %struct.cpuset*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cpuset* %0, %struct.cpuset** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cpumask* %2, %struct.cpumask** %8, align 8
  store %struct.tmpmasks* %3, %struct.tmpmasks** %9, align 8
  %15 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %16 = call %struct.cpuset* @parent_cs(%struct.cpuset* %15)
  store %struct.cpuset* %16, %struct.cpuset** %10, align 8
  store i32 0, i32* %13, align 4
  %17 = call i32 @percpu_rwsem_assert_held(i32* @cpuset_rwsem)
  %18 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %19 = call i32 @is_partition_root(%struct.cpuset* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %23 = icmp ne %struct.cpumask* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %26 = call i64 @cpumask_empty(%struct.cpumask* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %30 = icmp ne %struct.cpumask* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %33 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %32, i32 0, i32 4
  %34 = load %struct.cpumask*, %struct.cpumask** %33, align 8
  %35 = call i64 @cpumask_empty(%struct.cpumask* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %24, %4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %333

40:                                               ; preds = %31, %28
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @partcmd_update, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %46 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %45, i32 0, i32 5
  %47 = call i64 @css_has_online_children(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %333

52:                                               ; preds = %44, %40
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @partcmd_enable, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %58 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %57, i32 0, i32 4
  %59 = load %struct.cpumask*, %struct.cpumask** %58, align 8
  %60 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %61 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %60, i32 0, i32 3
  %62 = load %struct.cpumask*, %struct.cpumask** %61, align 8
  %63 = call i32 @cpumask_subset(%struct.cpumask* %59, %struct.cpumask* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %67 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %66, i32 0, i32 4
  %68 = load %struct.cpumask*, %struct.cpumask** %67, align 8
  %69 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %70 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %69, i32 0, i32 3
  %71 = load %struct.cpumask*, %struct.cpumask** %70, align 8
  %72 = call i32 @cpumask_equal(%struct.cpumask* %68, %struct.cpumask* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65, %56
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %333

77:                                               ; preds = %65, %52
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @partcmd_enable, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %83 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %82, i32 0, i32 1
  %84 = load %struct.cpumask*, %struct.cpumask** %83, align 8
  %85 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %86 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %85, i32 0, i32 4
  %87 = load %struct.cpumask*, %struct.cpumask** %86, align 8
  %88 = call i32 @cpumask_copy(%struct.cpumask* %84, %struct.cpumask* %87)
  store i32 1, i32* %11, align 4
  br label %203

89:                                               ; preds = %77
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @partcmd_disable, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %95 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %94, i32 0, i32 0
  %96 = load %struct.cpumask*, %struct.cpumask** %95, align 8
  %97 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %98 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %97, i32 0, i32 4
  %99 = load %struct.cpumask*, %struct.cpumask** %98, align 8
  %100 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %101 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %100, i32 0, i32 1
  %102 = load %struct.cpumask*, %struct.cpumask** %101, align 8
  %103 = call i32 @cpumask_and(%struct.cpumask* %96, %struct.cpumask* %99, %struct.cpumask* %102)
  store i32 %103, i32* %12, align 4
  br label %202

104:                                              ; preds = %89
  %105 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %106 = icmp ne %struct.cpumask* %105, null
  br i1 %106, label %107, label %183

107:                                              ; preds = %104
  %108 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %109 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %108, i32 0, i32 0
  %110 = load %struct.cpumask*, %struct.cpumask** %109, align 8
  %111 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %112 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %111, i32 0, i32 4
  %113 = load %struct.cpumask*, %struct.cpumask** %112, align 8
  %114 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %115 = call i32 @cpumask_andnot(%struct.cpumask* %110, %struct.cpumask* %113, %struct.cpumask* %114)
  %116 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %117 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %116, i32 0, i32 0
  %118 = load %struct.cpumask*, %struct.cpumask** %117, align 8
  %119 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %120 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %119, i32 0, i32 0
  %121 = load %struct.cpumask*, %struct.cpumask** %120, align 8
  %122 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %123 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %122, i32 0, i32 1
  %124 = load %struct.cpumask*, %struct.cpumask** %123, align 8
  %125 = call i32 @cpumask_and(%struct.cpumask* %118, %struct.cpumask* %121, %struct.cpumask* %124)
  store i32 %125, i32* %12, align 4
  %126 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %127 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %126, i32 0, i32 1
  %128 = load %struct.cpumask*, %struct.cpumask** %127, align 8
  %129 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %130 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %131 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %130, i32 0, i32 3
  %132 = load %struct.cpumask*, %struct.cpumask** %131, align 8
  %133 = call i32 @cpumask_and(%struct.cpumask* %128, %struct.cpumask* %129, %struct.cpumask* %132)
  %134 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %135 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %134, i32 0, i32 1
  %136 = load %struct.cpumask*, %struct.cpumask** %135, align 8
  %137 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %138 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %137, i32 0, i32 1
  %139 = load %struct.cpumask*, %struct.cpumask** %138, align 8
  %140 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %141 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %140, i32 0, i32 1
  %142 = load %struct.cpumask*, %struct.cpumask** %141, align 8
  %143 = call i32 @cpumask_andnot(%struct.cpumask* %136, %struct.cpumask* %139, %struct.cpumask* %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %182

146:                                              ; preds = %107
  %147 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %148 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %147, i32 0, i32 3
  %149 = load %struct.cpumask*, %struct.cpumask** %148, align 8
  %150 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %151 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %150, i32 0, i32 1
  %152 = load %struct.cpumask*, %struct.cpumask** %151, align 8
  %153 = call i32 @cpumask_equal(%struct.cpumask* %149, %struct.cpumask* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %146
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %333

161:                                              ; preds = %155
  %162 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %163 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %162, i32 0, i32 1
  %164 = load %struct.cpumask*, %struct.cpumask** %163, align 8
  %165 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %166 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %165, i32 0, i32 0
  %167 = load %struct.cpumask*, %struct.cpumask** %166, align 8
  %168 = load %struct.cpumask*, %struct.cpumask** @cpu_active_mask, align 8
  %169 = call i32 @cpumask_and(%struct.cpumask* %164, %struct.cpumask* %167, %struct.cpumask* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %161
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %5, align 4
  br label %333

174:                                              ; preds = %161
  %175 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %176 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %175, i32 0, i32 1
  %177 = load %struct.cpumask*, %struct.cpumask** %176, align 8
  %178 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %179 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %178, i32 0, i32 3
  %180 = load %struct.cpumask*, %struct.cpumask** %179, align 8
  %181 = call i32 @cpumask_copy(%struct.cpumask* %177, %struct.cpumask* %180)
  br label %182

182:                                              ; preds = %174, %146, %107
  br label %201

183:                                              ; preds = %104
  %184 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %185 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %184, i32 0, i32 1
  %186 = load %struct.cpumask*, %struct.cpumask** %185, align 8
  %187 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %188 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %187, i32 0, i32 4
  %189 = load %struct.cpumask*, %struct.cpumask** %188, align 8
  %190 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %191 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %190, i32 0, i32 3
  %192 = load %struct.cpumask*, %struct.cpumask** %191, align 8
  %193 = call i32 @cpumask_and(%struct.cpumask* %186, %struct.cpumask* %189, %struct.cpumask* %192)
  store i32 %193, i32* %11, align 4
  %194 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %195 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %194, i32 0, i32 1
  %196 = load %struct.cpumask*, %struct.cpumask** %195, align 8
  %197 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %198 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %197, i32 0, i32 3
  %199 = load %struct.cpumask*, %struct.cpumask** %198, align 8
  %200 = call i32 @cpumask_equal(%struct.cpumask* %196, %struct.cpumask* %199)
  store i32 %200, i32* %13, align 4
  br label %201

201:                                              ; preds = %183, %182
  br label %202

202:                                              ; preds = %201, %93
  br label %203

203:                                              ; preds = %202, %81
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @partcmd_update, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %232

207:                                              ; preds = %203
  %208 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %209 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %14, align 4
  %211 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %212 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  switch i32 %213, label %228 [
    i32 129, label %214
    i32 128, label %221
  ]

214:                                              ; preds = %207
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %219 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %218, i32 0, i32 0
  store i32 128, i32* %219, align 8
  br label %220

220:                                              ; preds = %217, %214
  br label %228

221:                                              ; preds = %207
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %226 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %225, i32 0, i32 0
  store i32 129, i32* %226, align 8
  br label %227

227:                                              ; preds = %224, %221
  br label %228

228:                                              ; preds = %207, %227, %220
  %229 = load i32, i32* %14, align 4
  %230 = icmp eq i32 %229, 128
  %231 = zext i1 %230 to i32
  store i32 %231, i32* %13, align 4
  br label %232

232:                                              ; preds = %228, %203
  %233 = load i32, i32* %13, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %232
  %236 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %237 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, 128
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  store i32 0, i32* %5, align 4
  br label %333

241:                                              ; preds = %235, %232
  %242 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %243 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 128
  br i1 %245, label %246, label %257

246:                                              ; preds = %241
  store i32 0, i32* %11, align 4
  %247 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %248 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %247, i32 0, i32 0
  %249 = load %struct.cpumask*, %struct.cpumask** %248, align 8
  %250 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %251 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %250, i32 0, i32 4
  %252 = load %struct.cpumask*, %struct.cpumask** %251, align 8
  %253 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %254 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %253, i32 0, i32 1
  %255 = load %struct.cpumask*, %struct.cpumask** %254, align 8
  %256 = call i32 @cpumask_and(%struct.cpumask* %249, %struct.cpumask* %252, %struct.cpumask* %255)
  store i32 %256, i32* %12, align 4
  br label %257

257:                                              ; preds = %246, %241
  %258 = load i32, i32* %11, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* %12, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %260
  store i32 0, i32* %5, align 4
  br label %333

264:                                              ; preds = %260, %257
  %265 = call i32 @spin_lock_irq(i32* @callback_lock)
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %289

268:                                              ; preds = %264
  %269 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %270 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %269, i32 0, i32 1
  %271 = load %struct.cpumask*, %struct.cpumask** %270, align 8
  %272 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %273 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %272, i32 0, i32 1
  %274 = load %struct.cpumask*, %struct.cpumask** %273, align 8
  %275 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %276 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %275, i32 0, i32 1
  %277 = load %struct.cpumask*, %struct.cpumask** %276, align 8
  %278 = call i32 @cpumask_or(%struct.cpumask* %271, %struct.cpumask* %274, %struct.cpumask* %277)
  %279 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %280 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %279, i32 0, i32 3
  %281 = load %struct.cpumask*, %struct.cpumask** %280, align 8
  %282 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %283 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %282, i32 0, i32 3
  %284 = load %struct.cpumask*, %struct.cpumask** %283, align 8
  %285 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %286 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %285, i32 0, i32 1
  %287 = load %struct.cpumask*, %struct.cpumask** %286, align 8
  %288 = call i32 @cpumask_andnot(%struct.cpumask* %281, %struct.cpumask* %284, %struct.cpumask* %287)
  br label %289

289:                                              ; preds = %268, %264
  %290 = load i32, i32* %12, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %321

292:                                              ; preds = %289
  %293 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %294 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %293, i32 0, i32 1
  %295 = load %struct.cpumask*, %struct.cpumask** %294, align 8
  %296 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %297 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %296, i32 0, i32 1
  %298 = load %struct.cpumask*, %struct.cpumask** %297, align 8
  %299 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %300 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %299, i32 0, i32 0
  %301 = load %struct.cpumask*, %struct.cpumask** %300, align 8
  %302 = call i32 @cpumask_andnot(%struct.cpumask* %295, %struct.cpumask* %298, %struct.cpumask* %301)
  %303 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %304 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %303, i32 0, i32 0
  %305 = load %struct.cpumask*, %struct.cpumask** %304, align 8
  %306 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %307 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %306, i32 0, i32 0
  %308 = load %struct.cpumask*, %struct.cpumask** %307, align 8
  %309 = load %struct.cpumask*, %struct.cpumask** @cpu_active_mask, align 8
  %310 = call i32 @cpumask_and(%struct.cpumask* %305, %struct.cpumask* %308, %struct.cpumask* %309)
  %311 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %312 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %311, i32 0, i32 3
  %313 = load %struct.cpumask*, %struct.cpumask** %312, align 8
  %314 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %315 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %314, i32 0, i32 3
  %316 = load %struct.cpumask*, %struct.cpumask** %315, align 8
  %317 = load %struct.tmpmasks*, %struct.tmpmasks** %9, align 8
  %318 = getelementptr inbounds %struct.tmpmasks, %struct.tmpmasks* %317, i32 0, i32 0
  %319 = load %struct.cpumask*, %struct.cpumask** %318, align 8
  %320 = call i32 @cpumask_or(%struct.cpumask* %313, %struct.cpumask* %316, %struct.cpumask* %319)
  br label %321

321:                                              ; preds = %292, %289
  %322 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %323 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %322, i32 0, i32 1
  %324 = load %struct.cpumask*, %struct.cpumask** %323, align 8
  %325 = call i32 @cpumask_weight(%struct.cpumask* %324)
  %326 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %327 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %326, i32 0, i32 2
  store i32 %325, i32* %327, align 8
  %328 = call i32 @spin_unlock_irq(i32* @callback_lock)
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* @partcmd_update, align 4
  %331 = icmp eq i32 %329, %330
  %332 = zext i1 %331 to i32
  store i32 %332, i32* %5, align 4
  br label %333

333:                                              ; preds = %321, %263, %240, %171, %158, %74, %49, %37
  %334 = load i32, i32* %5, align 4
  ret i32 %334
}

declare dso_local %struct.cpuset* @parent_cs(%struct.cpuset*) #1

declare dso_local i32 @percpu_rwsem_assert_held(i32*) #1

declare dso_local i32 @is_partition_root(%struct.cpuset*) #1

declare dso_local i64 @cpumask_empty(%struct.cpumask*) #1

declare dso_local i64 @css_has_online_children(i32*) #1

declare dso_local i32 @cpumask_subset(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_equal(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_copy(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_and(%struct.cpumask*, %struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_andnot(%struct.cpumask*, %struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cpumask_or(%struct.cpumask*, %struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_weight(%struct.cpumask*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
