; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_frame_vector.c_get_vaddr_frames.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_frame_vector.c_get_vaddr_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.frame_vector = type { i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i64 }
%struct.page = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_vaddr_frames(i64 %0, i32 %1, i32 %2, %struct.frame_vector* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.frame_vector*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.frame_vector* %3, %struct.frame_vector** %9, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %178

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.frame_vector*, %struct.frame_vector** %9, align 8
  %25 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ugt i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.frame_vector*, %struct.frame_vector** %9, align 8
  %33 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %22
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @untagged_addr(i64 %36)
  store i64 %37, i64* %6, align 8
  %38 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 0
  %40 = call i32 @down_read(i32* %39)
  store i32 1, i32* %14, align 4
  %41 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  %45 = call %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* %41, i64 %42, i64 %44)
  store %struct.vm_area_struct* %45, %struct.vm_area_struct** %11, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %47 = icmp ne %struct.vm_area_struct* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %156

51:                                               ; preds = %35
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %53 = call i64 @vma_is_fsdax(%struct.vm_area_struct* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %156

58:                                               ; preds = %51
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VM_IO, align 4
  %63 = load i32, i32* @VM_PFNMAP, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %58
  %68 = load %struct.frame_vector*, %struct.frame_vector** %9, align 8
  %69 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.frame_vector*, %struct.frame_vector** %9, align 8
  %71 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.frame_vector*, %struct.frame_vector** %9, align 8
  %76 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.page**
  %79 = call i32 @get_user_pages_locked(i64 %72, i32 %73, i32 %74, %struct.page** %78, i32* %14)
  store i32 %79, i32* %12, align 4
  br label %156

80:                                               ; preds = %58
  %81 = load %struct.frame_vector*, %struct.frame_vector** %9, align 8
  %82 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load %struct.frame_vector*, %struct.frame_vector** %9, align 8
  %84 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %153, %80
  %86 = load %struct.frame_vector*, %struct.frame_vector** %9, align 8
  %87 = call i64* @frame_vector_pfns(%struct.frame_vector* %86)
  store i64* %87, i64** %15, align 8
  br label %88

88:                                               ; preds = %118, %85
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @PAGE_SIZE, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %97 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ule i64 %95, %98
  br label %100

100:                                              ; preds = %92, %88
  %101 = phi i1 [ false, %88 ], [ %99, %92 ]
  br i1 %101, label %102, label %124

102:                                              ; preds = %100
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i64*, i64** %15, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = call i32 @follow_pfn(%struct.vm_area_struct* %103, i64 %104, i64* %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %115, %112
  br label %156

118:                                              ; preds = %102
  %119 = load i64, i64* @PAGE_SIZE, align 8
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %88

124:                                              ; preds = %100
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp uge i32 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %131 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ult i64 %129, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128, %124
  br label %155

135:                                              ; preds = %128
  %136 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load i64, i64* %6, align 8
  %139 = add i64 %138, 1
  %140 = call %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* %136, i64 %137, i64 %139)
  store %struct.vm_area_struct* %140, %struct.vm_area_struct** %11, align 8
  br label %141

141:                                              ; preds = %135
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %143 = icmp ne %struct.vm_area_struct* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %146 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @VM_IO, align 4
  %149 = load i32, i32* @VM_PFNMAP, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %144, %141
  %154 = phi i1 [ false, %141 ], [ %152, %144 ]
  br i1 %154, label %85, label %155

155:                                              ; preds = %153, %134
  br label %156

156:                                              ; preds = %155, %117, %67, %55, %48
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %161 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %160, i32 0, i32 0
  %162 = call i32 @up_read(i32* %161)
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @EFAULT, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %12, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.frame_vector*, %struct.frame_vector** %9, align 8
  %175 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %169
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %176, %21
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @untagged_addr(i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @vma_is_fsdax(%struct.vm_area_struct*) #1

declare dso_local i32 @get_user_pages_locked(i64, i32, i32, %struct.page**, i32*) #1

declare dso_local i64* @frame_vector_pfns(%struct.frame_vector*) #1

declare dso_local i32 @follow_pfn(%struct.vm_area_struct*, i64, i64*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
