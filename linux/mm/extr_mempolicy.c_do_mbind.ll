; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_do_mbind.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_do_mbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.mempolicy = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@pagelist = common dso_local global i32 0, align 4
@MPOL_MF_VALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MPOL_MF_MOVE_ALL = common dso_local global i64 0, align 8
@CAP_SYS_NICE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@MPOL_DEFAULT = common dso_local global i16 0, align 2
@MPOL_MF_STRICT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@MPOL_MF_LAZY = common dso_local global i64 0, align 8
@MPOL_F_MOF = common dso_local global i32 0, align 4
@MPOL_MF_DISCONTIG_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"mbind %lx-%lx mode:%d flags:%d nodes:%lx\0A\00", align 1
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@MPOL_MF_MOVE = common dso_local global i64 0, align 8
@scratch = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MPOL_MF_INVERT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@new_page = common dso_local global i32 0, align 4
@MIGRATE_SYNC = common dso_local global i32 0, align 4
@MR_MEMPOLICY_MBIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i16, i16, i32*, i64)* @do_mbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_mbind(i64 %0, i64 %1, i16 zeroext %2, i16 zeroext %3, i32* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca %struct.mempolicy*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i16 %2, i16* %10, align 2
  store i16 %3, i16* %11, align 2
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.mm_struct*, %struct.mm_struct** %21, align 8
  store %struct.mm_struct* %22, %struct.mm_struct** %14, align 8
  %23 = load i32, i32* @pagelist, align 4
  %24 = call i32 @LIST_HEAD(i32 %23)
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @MPOL_MF_VALID, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %7, align 8
  br label %247

33:                                               ; preds = %6
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @MPOL_MF_MOVE_ALL, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @CAP_SYS_NICE, align 4
  %40 = call i32 @capable(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @EPERM, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %7, align 8
  br label %247

45:                                               ; preds = %38, %33
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @PAGE_MASK, align 8
  %48 = xor i64 %47, -1
  %49 = and i64 %46, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64, i64* @EINVAL, align 8
  %53 = sub nsw i64 0, %52
  store i64 %53, i64* %7, align 8
  br label %247

54:                                               ; preds = %45
  %55 = load i16, i16* %10, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* @MPOL_DEFAULT, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i64, i64* @MPOL_MF_STRICT, align 8
  %62 = xor i64 %61, -1
  %63 = load i64, i64* %13, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %60, %54
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = add i64 %66, %67
  %69 = sub i64 %68, 1
  %70 = load i64, i64* @PAGE_MASK, align 8
  %71 = and i64 %69, %70
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %72, %73
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load i64, i64* @EINVAL, align 8
  %80 = sub nsw i64 0, %79
  store i64 %80, i64* %7, align 8
  br label %247

81:                                               ; preds = %65
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i64 0, i64* %7, align 8
  br label %247

86:                                               ; preds = %81
  %87 = load i16, i16* %10, align 2
  %88 = load i16, i16* %11, align 2
  %89 = load i32*, i32** %12, align 8
  %90 = call %struct.mempolicy* @mpol_new(i16 zeroext %87, i16 zeroext %88, i32* %89)
  store %struct.mempolicy* %90, %struct.mempolicy** %15, align 8
  %91 = load %struct.mempolicy*, %struct.mempolicy** %15, align 8
  %92 = call i64 @IS_ERR(%struct.mempolicy* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.mempolicy*, %struct.mempolicy** %15, align 8
  %96 = call i64 @PTR_ERR(%struct.mempolicy* %95)
  store i64 %96, i64* %7, align 8
  br label %247

97:                                               ; preds = %86
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* @MPOL_MF_LAZY, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32, i32* @MPOL_F_MOF, align 4
  %104 = load %struct.mempolicy*, %struct.mempolicy** %15, align 8
  %105 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.mempolicy*, %struct.mempolicy** %15, align 8
  %110 = icmp ne %struct.mempolicy* %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* @MPOL_MF_DISCONTIG_OK, align 8
  %113 = load i64, i64* %13, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %13, align 8
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %117, %118
  %120 = load i16, i16* %10, align 2
  %121 = load i16, i16* %11, align 2
  %122 = load i32*, i32** %12, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %115
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32* @nodes_addr(i32 %126)
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  br label %132

130:                                              ; preds = %115
  %131 = load i32, i32* @NUMA_NO_NODE, align 4
  br label %132

132:                                              ; preds = %130, %124
  %133 = phi i32 [ %129, %124 ], [ %131, %130 ]
  %134 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %116, i64 %119, i16 zeroext %120, i16 zeroext %121, i32 %133)
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* @MPOL_MF_MOVE, align 8
  %137 = load i64, i64* @MPOL_MF_MOVE_ALL, align 8
  %138 = or i64 %136, %137
  %139 = and i64 %135, %138
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %132
  %142 = call i32 (...) @migrate_prep()
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %242

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %132
  %148 = load i64, i64* @scratch, align 8
  %149 = call i32 @NODEMASK_SCRATCH(i64 %148)
  %150 = load i64, i64* @scratch, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %147
  %153 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %154 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %153, i32 0, i32 0
  %155 = call i32 @down_write(i32* %154)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %157 = call i32 @task_lock(%struct.TYPE_4__* %156)
  %158 = load %struct.mempolicy*, %struct.mempolicy** %15, align 8
  %159 = load i32*, i32** %12, align 8
  %160 = load i64, i64* @scratch, align 8
  %161 = call i32 @mpol_set_nodemask(%struct.mempolicy* %158, i32* %159, i64 %160)
  store i32 %161, i32* %17, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %163 = call i32 @task_unlock(%struct.TYPE_4__* %162)
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %152
  %167 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %168 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %167, i32 0, i32 0
  %169 = call i32 @up_write(i32* %168)
  br label %170

170:                                              ; preds = %166, %152
  br label %174

171:                                              ; preds = %147
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %17, align 4
  br label %174

174:                                              ; preds = %171, %170
  %175 = load i64, i64* @scratch, align 8
  %176 = call i32 @NODEMASK_SCRATCH_FREE(i64 %175)
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %242

180:                                              ; preds = %174
  %181 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* %16, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = load i64, i64* %13, align 8
  %186 = load i64, i64* @MPOL_MF_INVERT, align 8
  %187 = or i64 %185, %186
  %188 = call i32 @queue_pages_range(%struct.mm_struct* %181, i64 %182, i64 %183, i32* %184, i64 %187, i32* @pagelist)
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %180
  %192 = load i32, i32* @EIO, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %17, align 4
  br label %238

194:                                              ; preds = %180
  %195 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* %16, align 8
  %198 = load %struct.mempolicy*, %struct.mempolicy** %15, align 8
  %199 = call i32 @mbind_range(%struct.mm_struct* %195, i64 %196, i64 %197, %struct.mempolicy* %198)
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %235, label %202

202:                                              ; preds = %194
  store i32 0, i32* %19, align 4
  %203 = call i32 @list_empty(i32* @pagelist)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %220, label %205

205:                                              ; preds = %202
  %206 = load i64, i64* %13, align 8
  %207 = load i64, i64* @MPOL_MF_LAZY, align 8
  %208 = and i64 %206, %207
  %209 = call i32 @WARN_ON_ONCE(i64 %208)
  %210 = load i32, i32* @new_page, align 4
  %211 = load i64, i64* %8, align 8
  %212 = load i32, i32* @MIGRATE_SYNC, align 4
  %213 = load i32, i32* @MR_MEMPOLICY_MBIND, align 4
  %214 = call i32 @migrate_pages(i32* @pagelist, i32 %210, i32* null, i64 %211, i32 %212, i32 %213)
  store i32 %214, i32* %19, align 4
  %215 = load i32, i32* %19, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %205
  %218 = call i32 @putback_movable_pages(i32* @pagelist)
  br label %219

219:                                              ; preds = %217, %205
  br label %220

220:                                              ; preds = %219, %202
  %221 = load i32, i32* %18, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %19, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %223
  %227 = load i64, i64* %13, align 8
  %228 = load i64, i64* @MPOL_MF_STRICT, align 8
  %229 = and i64 %227, %228
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226, %220
  %232 = load i32, i32* @EIO, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %17, align 4
  br label %234

234:                                              ; preds = %231, %226, %223
  br label %237

235:                                              ; preds = %194
  %236 = call i32 @putback_movable_pages(i32* @pagelist)
  br label %237

237:                                              ; preds = %235, %234
  br label %238

238:                                              ; preds = %237, %191
  %239 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %240 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %239, i32 0, i32 0
  %241 = call i32 @up_write(i32* %240)
  br label %242

242:                                              ; preds = %238, %179, %145
  %243 = load %struct.mempolicy*, %struct.mempolicy** %15, align 8
  %244 = call i32 @mpol_put(%struct.mempolicy* %243)
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %7, align 8
  br label %247

247:                                              ; preds = %242, %94, %85, %78, %51, %42, %30
  %248 = load i64, i64* %7, align 8
  ret i64 %248
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.mempolicy* @mpol_new(i16 zeroext, i16 zeroext, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mempolicy*) #1

declare dso_local i64 @PTR_ERR(%struct.mempolicy*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i16 zeroext, i16 zeroext, i32) #1

declare dso_local i32* @nodes_addr(i32) #1

declare dso_local i32 @migrate_prep(...) #1

declare dso_local i32 @NODEMASK_SCRATCH(i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @task_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @mpol_set_nodemask(%struct.mempolicy*, i32*, i64) #1

declare dso_local i32 @task_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @NODEMASK_SCRATCH_FREE(i64) #1

declare dso_local i32 @queue_pages_range(%struct.mm_struct*, i64, i64, i32*, i64, i32*) #1

declare dso_local i32 @mbind_range(%struct.mm_struct*, i64, i64, %struct.mempolicy*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @migrate_pages(i32*, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @putback_movable_pages(i32*) #1

declare dso_local i32 @mpol_put(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
