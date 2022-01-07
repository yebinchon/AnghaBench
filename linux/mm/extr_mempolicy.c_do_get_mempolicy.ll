; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_do_get_mempolicy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_do_get_mempolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.mempolicy*, %struct.mm_struct* }
%struct.mempolicy = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { %struct.mempolicy*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mempolicy* (%struct.vm_area_struct*, i64)* }

@current = common dso_local global %struct.TYPE_10__* null, align 8
@MPOL_F_NODE = common dso_local global i64 0, align 8
@MPOL_F_ADDR = common dso_local global i64 0, align 8
@MPOL_F_MEMS_ALLOWED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@cpuset_current_mems_allowed = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@default_policy = common dso_local global %struct.mempolicy zeroinitializer, align 4
@MPOL_INTERLEAVE = common dso_local global i32 0, align 4
@MPOL_DEFAULT = common dso_local global i32 0, align 4
@MPOL_MODE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64, i64)* @do_get_mempolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_get_mempolicy(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca %struct.mempolicy*, align 8
  %14 = alloca %struct.mempolicy*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %11, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %12, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.mempolicy*, %struct.mempolicy** %19, align 8
  store %struct.mempolicy* %20, %struct.mempolicy** %13, align 8
  store %struct.mempolicy* null, %struct.mempolicy** %14, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @MPOL_F_NODE, align 8
  %23 = load i64, i64* @MPOL_F_ADDR, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @MPOL_F_MEMS_ALLOWED, align 8
  %26 = or i64 %24, %25
  %27 = xor i64 %26, -1
  %28 = and i64 %21, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %227

33:                                               ; preds = %4
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @MPOL_F_MEMS_ALLOWED, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @MPOL_F_NODE, align 8
  %41 = load i64, i64* @MPOL_F_ADDR, align 8
  %42 = or i64 %40, %41
  %43 = and i64 %39, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* @EINVAL, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %5, align 8
  br label %227

48:                                               ; preds = %38
  %49 = load i32*, i32** %6, align 8
  store i32 0, i32* %49, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %51 = call i32 @task_lock(%struct.TYPE_10__* %50)
  %52 = load i32, i32* @cpuset_current_mems_allowed, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %55 = call i32 @task_unlock(%struct.TYPE_10__* %54)
  store i64 0, i64* %5, align 8
  br label %227

56:                                               ; preds = %33
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @MPOL_F_ADDR, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %56
  %62 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %63 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %62, i32 0, i32 0
  %64 = call i32 @down_read(i32* %63)
  %65 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, 1
  %69 = call %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* %65, i64 %66, i64 %68)
  store %struct.vm_area_struct* %69, %struct.vm_area_struct** %12, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %71 = icmp ne %struct.vm_area_struct* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %61
  %73 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %74 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %73, i32 0, i32 0
  %75 = call i32 @up_read(i32* %74)
  %76 = load i64, i64* @EFAULT, align 8
  %77 = sub nsw i64 0, %76
  store i64 %77, i64* %5, align 8
  br label %227

78:                                               ; preds = %61
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = icmp ne %struct.TYPE_7__* %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %78
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.mempolicy* (%struct.vm_area_struct*, i64)*, %struct.mempolicy* (%struct.vm_area_struct*, i64)** %87, align 8
  %89 = icmp ne %struct.mempolicy* (%struct.vm_area_struct*, i64)* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.mempolicy* (%struct.vm_area_struct*, i64)*, %struct.mempolicy* (%struct.vm_area_struct*, i64)** %94, align 8
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call %struct.mempolicy* %95(%struct.vm_area_struct* %96, i64 %97)
  store %struct.mempolicy* %98, %struct.mempolicy** %13, align 8
  br label %103

99:                                               ; preds = %83, %78
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 0
  %102 = load %struct.mempolicy*, %struct.mempolicy** %101, align 8
  store %struct.mempolicy* %102, %struct.mempolicy** %13, align 8
  br label %103

103:                                              ; preds = %99, %90
  br label %111

104:                                              ; preds = %56
  %105 = load i64, i64* %8, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64, i64* @EINVAL, align 8
  %109 = sub nsw i64 0, %108
  store i64 %109, i64* %5, align 8
  br label %227

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %103
  %112 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %113 = icmp ne %struct.mempolicy* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  store %struct.mempolicy* @default_policy, %struct.mempolicy** %13, align 8
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @MPOL_F_NODE, align 8
  %118 = and i64 %116, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %166

120:                                              ; preds = %115
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* @MPOL_F_ADDR, align 8
  %123 = and i64 %121, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  store %struct.mempolicy* %126, %struct.mempolicy** %14, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %12, align 8
  %127 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %128 = call i32 @mpol_get(%struct.mempolicy* %127)
  %129 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @lookup_node(%struct.mm_struct* %129, i64 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %209

135:                                              ; preds = %125
  %136 = load i32, i32* %10, align 4
  %137 = load i32*, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  br label %165

138:                                              ; preds = %120
  %139 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.mempolicy*, %struct.mempolicy** %141, align 8
  %143 = icmp eq %struct.mempolicy* %139, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %138
  %145 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %146 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MPOL_INTERLEAVE, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %144
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %155 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @next_node_in(i32 %153, i32 %157)
  %159 = load i32*, i32** %6, align 8
  store i32 %158, i32* %159, align 4
  br label %164

160:                                              ; preds = %144, %138
  %161 = load i64, i64* @EINVAL, align 8
  %162 = sub nsw i64 0, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %10, align 4
  br label %209

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164, %135
  br label %186

166:                                              ; preds = %115
  %167 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %168 = icmp eq %struct.mempolicy* %167, @default_policy
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* @MPOL_DEFAULT, align 4
  br label %175

171:                                              ; preds = %166
  %172 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %173 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  br label %175

175:                                              ; preds = %171, %169
  %176 = phi i32 [ %170, %169 ], [ %174, %171 ]
  %177 = load i32*, i32** %6, align 8
  store i32 %176, i32* %177, align 4
  %178 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %179 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @MPOL_MODE_FLAGS, align 4
  %182 = and i32 %180, %181
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %182
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %175, %165
  store i32 0, i32* %10, align 4
  %187 = load i32*, i32** %7, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %208

189:                                              ; preds = %186
  %190 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %191 = call i64 @mpol_store_user_nodemask(%struct.mempolicy* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %195 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %7, align 8
  store i32 %197, i32* %198, align 4
  br label %207

199:                                              ; preds = %189
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %201 = call i32 @task_lock(%struct.TYPE_10__* %200)
  %202 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @get_policy_nodemask(%struct.mempolicy* %202, i32* %203)
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %206 = call i32 @task_unlock(%struct.TYPE_10__* %205)
  br label %207

207:                                              ; preds = %199, %193
  br label %208

208:                                              ; preds = %207, %186
  br label %209

209:                                              ; preds = %208, %160, %134
  %210 = load %struct.mempolicy*, %struct.mempolicy** %13, align 8
  %211 = call i32 @mpol_cond_put(%struct.mempolicy* %210)
  %212 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %213 = icmp ne %struct.vm_area_struct* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %216 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %215, i32 0, i32 0
  %217 = call i32 @up_read(i32* %216)
  br label %218

218:                                              ; preds = %214, %209
  %219 = load %struct.mempolicy*, %struct.mempolicy** %14, align 8
  %220 = icmp ne %struct.mempolicy* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load %struct.mempolicy*, %struct.mempolicy** %14, align 8
  %223 = call i32 @mpol_put(%struct.mempolicy* %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %5, align 8
  br label %227

227:                                              ; preds = %224, %107, %72, %48, %45, %30
  %228 = load i64, i64* %5, align 8
  ret i64 %228
}

declare dso_local i32 @task_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mpol_get(%struct.mempolicy*) #1

declare dso_local i32 @lookup_node(%struct.mm_struct*, i64) #1

declare dso_local i32 @next_node_in(i32, i32) #1

declare dso_local i64 @mpol_store_user_nodemask(%struct.mempolicy*) #1

declare dso_local i32 @get_policy_nodemask(%struct.mempolicy*, i32*) #1

declare dso_local i32 @mpol_cond_put(%struct.mempolicy*) #1

declare dso_local i32 @mpol_put(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
