; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c___do_munmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c___do_munmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64, i32, i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, i64, i32, %struct.vm_area_struct*, %struct.vm_area_struct* }
%struct.list_head = type { i32 }

@TASK_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@sysctl_max_map_count = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__do_munmap(%struct.mm_struct* %0, i64 %1, i64 %2, %struct.list_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.list_head* %3, %struct.list_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @offset_in_page(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %5
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @TASK_SIZE, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @TASK_SIZE, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %29, %30
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %23, %5
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %214

36:                                               ; preds = %27
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @PAGE_ALIGN(i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %214

47:                                               ; preds = %36
  %48 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @arch_unmap(%struct.mm_struct* %48, i64 %49, i64 %50)
  %52 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %52, i64 %53)
  store %struct.vm_area_struct* %54, %struct.vm_area_struct** %13, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %56 = icmp ne %struct.vm_area_struct* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %214

58:                                               ; preds = %47
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 4
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %60, align 8
  store %struct.vm_area_struct* %61, %struct.vm_area_struct** %14, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %214

68:                                               ; preds = %58
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ugt i64 %69, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %68
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %82 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @sysctl_max_map_count, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %214

89:                                               ; preds = %80, %74
  %90 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @__split_vma(%struct.mm_struct* %90, %struct.vm_area_struct* %91, i64 %92, i32 0)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %6, align 4
  br label %214

98:                                               ; preds = %89
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %99, %struct.vm_area_struct** %14, align 8
  br label %100

100:                                              ; preds = %98, %68
  %101 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %101, i64 %102)
  store %struct.vm_area_struct* %103, %struct.vm_area_struct** %15, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %105 = icmp ne %struct.vm_area_struct* %104, null
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load i64, i64* %12, align 8
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %109 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %107, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @__split_vma(%struct.mm_struct* %113, %struct.vm_area_struct* %114, i64 %115, i32 1)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %6, align 4
  br label %214

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %106, %100
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %124 = icmp ne %struct.vm_area_struct* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %127 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %126, i32 0, i32 3
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %127, align 8
  br label %133

129:                                              ; preds = %122
  %130 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %131 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %130, i32 0, i32 3
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %131, align 8
  br label %133

133:                                              ; preds = %129, %125
  %134 = phi %struct.vm_area_struct* [ %128, %125 ], [ %132, %129 ]
  store %struct.vm_area_struct* %134, %struct.vm_area_struct** %13, align 8
  %135 = load %struct.list_head*, %struct.list_head** %10, align 8
  %136 = call i64 @unlikely(%struct.list_head* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load %struct.list_head*, %struct.list_head** %10, align 8
  %143 = call i32 @userfaultfd_unmap_prep(%struct.vm_area_struct* %139, i64 %140, i64 %141, %struct.list_head* %142)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %6, align 4
  br label %214

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %133
  %150 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %151 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %188

154:                                              ; preds = %149
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %155, %struct.vm_area_struct** %19, align 8
  br label %156

156:                                              ; preds = %183, %154
  %157 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %158 = icmp ne %struct.vm_area_struct* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %161 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %12, align 8
  %164 = icmp ult i64 %162, %163
  br label %165

165:                                              ; preds = %159, %156
  %166 = phi i1 [ false, %156 ], [ %164, %159 ]
  br i1 %166, label %167, label %187

167:                                              ; preds = %165
  %168 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %169 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @VM_LOCKED, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %167
  %175 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %176 = call i64 @vma_pages(%struct.vm_area_struct* %175)
  %177 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %178 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %179, %176
  store i64 %180, i64* %178, align 8
  %181 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %182 = call i32 @munlock_vma_pages_all(%struct.vm_area_struct* %181)
  br label %183

183:                                              ; preds = %174, %167
  %184 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %185 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %184, i32 0, i32 3
  %186 = load %struct.vm_area_struct*, %struct.vm_area_struct** %185, align 8
  store %struct.vm_area_struct* %186, %struct.vm_area_struct** %19, align 8
  br label %156

187:                                              ; preds = %165
  br label %188

188:                                              ; preds = %187, %149
  %189 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %190 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %191 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %192 = load i64, i64* %12, align 8
  %193 = call i32 @detach_vmas_to_be_unmapped(%struct.mm_struct* %189, %struct.vm_area_struct* %190, %struct.vm_area_struct* %191, i64 %192)
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  %197 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %198 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %197, i32 0, i32 1
  %199 = call i32 @downgrade_write(i32* %198)
  br label %200

200:                                              ; preds = %196, %188
  %201 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %202 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %203 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %204 = load i64, i64* %8, align 8
  %205 = load i64, i64* %12, align 8
  %206 = call i32 @unmap_region(%struct.mm_struct* %201, %struct.vm_area_struct* %202, %struct.vm_area_struct* %203, i64 %204, i64 %205)
  %207 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %208 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %209 = call i32 @remove_vma_list(%struct.mm_struct* %207, %struct.vm_area_struct* %208)
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 1, i32 0
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %200, %146, %119, %96, %86, %67, %57, %44, %33
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @arch_unmap(%struct.mm_struct*, i64, i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @__split_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @unlikely(%struct.list_head*) #1

declare dso_local i32 @userfaultfd_unmap_prep(%struct.vm_area_struct*, i64, i64, %struct.list_head*) #1

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @munlock_vma_pages_all(%struct.vm_area_struct*) #1

declare dso_local i32 @detach_vmas_to_be_unmapped(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @downgrade_write(i32*) #1

declare dso_local i32 @unmap_region(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @remove_vma_list(%struct.mm_struct*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
