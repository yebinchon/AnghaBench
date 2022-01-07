; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_behavior.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_madvise.c_madvise_behavior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, i32, i32, i32, i64, %struct.mm_struct* }
%struct.mm_struct = type { i64 }

@VM_RAND_READ = common dso_local global i64 0, align 8
@VM_SEQ_READ = common dso_local global i64 0, align 8
@VM_DONTCOPY = common dso_local global i64 0, align 8
@VM_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_WIPEONFORK = common dso_local global i64 0, align 8
@VM_DONTDUMP = common dso_local global i64 0, align 8
@VM_SPECIAL = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@sysctl_max_map_count = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64, i32)* @madvise_behavior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @madvise_behavior(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 7
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %128 [
    i32 132, label %22
    i32 130, label %30
    i32 131, label %37
    i32 137, label %44
    i32 139, label %48
    i32 128, label %64
    i32 135, label %84
    i32 138, label %89
    i32 140, label %93
    i32 134, label %110
    i32 129, label %110
    i32 136, label %120
    i32 133, label %120
  ]

22:                                               ; preds = %5
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @VM_RAND_READ, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %23, %25
  %27 = load i64, i64* @VM_SEQ_READ, align 8
  %28 = xor i64 %27, -1
  %29 = and i64 %26, %28
  store i64 %29, i64* %14, align 8
  br label %128

30:                                               ; preds = %5
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @VM_RAND_READ, align 8
  %33 = xor i64 %32, -1
  %34 = and i64 %31, %33
  %35 = load i64, i64* @VM_SEQ_READ, align 8
  %36 = or i64 %34, %35
  store i64 %36, i64* %14, align 8
  br label %128

37:                                               ; preds = %5
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @VM_SEQ_READ, align 8
  %40 = xor i64 %39, -1
  %41 = and i64 %38, %40
  %42 = load i64, i64* @VM_RAND_READ, align 8
  %43 = or i64 %41, %42
  store i64 %43, i64* %14, align 8
  br label %128

44:                                               ; preds = %5
  %45 = load i64, i64* @VM_DONTCOPY, align 8
  %46 = load i64, i64* %14, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %14, align 8
  br label %128

48:                                               ; preds = %5
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @VM_IO, align 4
  %53 = sext i32 %52 to i64
  %54 = and i64 %51, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %245

59:                                               ; preds = %48
  %60 = load i64, i64* @VM_DONTCOPY, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %14, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %14, align 8
  br label %128

64:                                               ; preds = %5
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @VM_SHARED, align 4
  %74 = sext i32 %73 to i64
  %75 = and i64 %72, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69, %64
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  br label %245

80:                                               ; preds = %69
  %81 = load i64, i64* @VM_WIPEONFORK, align 8
  %82 = load i64, i64* %14, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %14, align 8
  br label %128

84:                                               ; preds = %5
  %85 = load i64, i64* @VM_WIPEONFORK, align 8
  %86 = xor i64 %85, -1
  %87 = load i64, i64* %14, align 8
  %88 = and i64 %87, %86
  store i64 %88, i64* %14, align 8
  br label %128

89:                                               ; preds = %5
  %90 = load i64, i64* @VM_DONTDUMP, align 8
  %91 = load i64, i64* %14, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %14, align 8
  br label %128

93:                                               ; preds = %5
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %95 = call i32 @is_vm_hugetlb_page(%struct.vm_area_struct* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* @VM_SPECIAL, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %12, align 4
  br label %245

105:                                              ; preds = %97, %93
  %106 = load i64, i64* @VM_DONTDUMP, align 8
  %107 = xor i64 %106, -1
  %108 = load i64, i64* %14, align 8
  %109 = and i64 %108, %107
  store i64 %109, i64* %14, align 8
  br label %128

110:                                              ; preds = %5, %5
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @ksm_madvise(%struct.vm_area_struct* %111, i64 %112, i64 %113, i32 %114, i64* %14)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %236

119:                                              ; preds = %110
  br label %128

120:                                              ; preds = %5, %5
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @hugepage_madvise(%struct.vm_area_struct* %121, i64* %14, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %236

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %5, %127, %119, %105, %89, %84, %80, %59, %44, %37, %30, %22
  %129 = load i64, i64* %14, align 8
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %131 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %136 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %135, %struct.vm_area_struct** %136, align 8
  br label %245

137:                                              ; preds = %128
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %143 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub i64 %141, %144
  %146 = load i64, i64* @PAGE_SHIFT, align 8
  %147 = lshr i64 %145, %146
  %148 = add i64 %140, %147
  store i64 %148, i64* %13, align 8
  %149 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %150 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %151 = load %struct.vm_area_struct*, %struct.vm_area_struct** %150, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %14, align 8
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %156 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %159 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* %13, align 8
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %163 = call i32 @vma_policy(%struct.vm_area_struct* %162)
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %165 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %149, %struct.vm_area_struct* %151, i64 %152, i64 %153, i64 %154, i32 %157, i32 %160, i64 %161, i32 %163, i32 %166)
  %168 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %167, %struct.vm_area_struct** %168, align 8
  %169 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %169, align 8
  %171 = icmp ne %struct.vm_area_struct* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %137
  %173 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %173, align 8
  store %struct.vm_area_struct* %174, %struct.vm_area_struct** %6, align 8
  br label %232

175:                                              ; preds = %137
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %177 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %176, %struct.vm_area_struct** %177, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %180 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %178, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %175
  %184 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %185 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @sysctl_max_map_count, align 8
  %188 = icmp sge i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i64 @unlikely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %183
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %12, align 4
  br label %245

195:                                              ; preds = %183
  %196 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %197 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %198 = load i64, i64* %8, align 8
  %199 = call i32 @__split_vma(%struct.mm_struct* %196, %struct.vm_area_struct* %197, i64 %198, i32 1)
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %236

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203, %175
  %205 = load i64, i64* %9, align 8
  %206 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %207 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %205, %208
  br i1 %209, label %210, label %231

210:                                              ; preds = %204
  %211 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %212 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @sysctl_max_map_count, align 8
  %215 = icmp sge i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i64 @unlikely(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %210
  %220 = load i32, i32* @ENOMEM, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %12, align 4
  br label %245

222:                                              ; preds = %210
  %223 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %224 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %225 = load i64, i64* %9, align 8
  %226 = call i32 @__split_vma(%struct.mm_struct* %223, %struct.vm_area_struct* %224, i64 %225, i32 0)
  store i32 %226, i32* %12, align 4
  %227 = load i32, i32* %12, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  br label %236

230:                                              ; preds = %222
  br label %231

231:                                              ; preds = %230, %204
  br label %232

232:                                              ; preds = %231, %172
  %233 = load i64, i64* %14, align 8
  %234 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %235 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %232, %229, %202, %126, %118
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* @ENOMEM, align 4
  %239 = sub nsw i32 0, %238
  %240 = icmp eq i32 %237, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load i32, i32* @EAGAIN, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %12, align 4
  br label %244

244:                                              ; preds = %241, %236
  br label %245

245:                                              ; preds = %244, %219, %192, %134, %102, %77, %56
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  ret i64 %247
}

declare dso_local i32 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @ksm_madvise(%struct.vm_area_struct*, i64, i64, i32, i64*) #1

declare dso_local i32 @hugepage_madvise(%struct.vm_area_struct*, i64*, i32) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__split_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
