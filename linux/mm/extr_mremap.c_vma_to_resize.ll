; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mremap.c_vma_to_resize.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mremap.c_vma_to_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i64 }
%struct.vm_area_struct = type { i64, i32, i64, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"%s (%d): attempted to duplicate a private mapping with mremap.  This is not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_ACCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_area_struct* (i64, i64, i64, i64*)* @vma_to_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_area_struct* @vma_to_resize(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %10, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %19, i64 %20)
  store %struct.vm_area_struct* %21, %struct.vm_area_struct** %11, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %23 = icmp ne %struct.vm_area_struct* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %4
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.vm_area_struct* @ERR_PTR(i32 %32)
  store %struct.vm_area_struct* %33, %struct.vm_area_struct** %5, align 8
  br label %194

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %34
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VM_SHARED, align 4
  %42 = load i32, i32* @VM_MAYSHARE, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %37
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pr_warn_once(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.vm_area_struct* @ERR_PTR(i32 %55)
  store %struct.vm_area_struct* %56, %struct.vm_area_struct** %5, align 8
  br label %194

57:                                               ; preds = %37, %34
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %59 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.vm_area_struct* @ERR_PTR(i32 %63)
  store %struct.vm_area_struct* %64, %struct.vm_area_struct** %5, align 8
  br label %194

65:                                               ; preds = %57
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub i64 %69, %70
  %72 = icmp ugt i64 %66, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  %76 = call %struct.vm_area_struct* @ERR_PTR(i32 %75)
  store %struct.vm_area_struct* %76, %struct.vm_area_struct** %5, align 8
  br label %194

77:                                               ; preds = %65
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  store %struct.vm_area_struct* %82, %struct.vm_area_struct** %5, align 8
  br label %194

83:                                               ; preds = %77
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %84, %87
  %89 = load i64, i64* @PAGE_SHIFT, align 8
  %90 = lshr i64 %88, %89
  store i64 %90, i64* %12, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* @PAGE_SHIFT, align 8
  %99 = lshr i64 %97, %98
  %100 = add i64 %96, %99
  %101 = load i64, i64* %12, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %83
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  %106 = call %struct.vm_area_struct* @ERR_PTR(i32 %105)
  store %struct.vm_area_struct* %106, %struct.vm_area_struct** %5, align 8
  br label %194

107:                                              ; preds = %83
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %109 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @VM_DONTEXPAND, align 4
  %112 = load i32, i32* @VM_PFNMAP, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load i32, i32* @EFAULT, align 4
  %118 = sub nsw i32 0, %117
  %119 = call %struct.vm_area_struct* @ERR_PTR(i32 %118)
  store %struct.vm_area_struct* %119, %struct.vm_area_struct** %5, align 8
  br label %194

120:                                              ; preds = %107
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %122 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @VM_LOCKED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %120
  %128 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %129 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PAGE_SHIFT, align 8
  %132 = shl i64 %130, %131
  store i64 %132, i64* %13, align 8
  %133 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %134 = call i64 @rlimit(i32 %133)
  store i64 %134, i64* %14, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %7, align 8
  %137 = sub i64 %135, %136
  %138 = load i64, i64* %13, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %13, align 8
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %14, align 8
  %142 = icmp ugt i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %127
  %144 = load i32, i32* @CAP_IPC_LOCK, align 4
  %145 = call i32 @capable(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* @EAGAIN, align 4
  %149 = sub nsw i32 0, %148
  %150 = call %struct.vm_area_struct* @ERR_PTR(i32 %149)
  store %struct.vm_area_struct* %150, %struct.vm_area_struct** %5, align 8
  br label %194

151:                                              ; preds = %143, %127
  br label %152

152:                                              ; preds = %151, %120
  %153 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* %7, align 8
  %159 = sub i64 %157, %158
  %160 = load i64, i64* @PAGE_SHIFT, align 8
  %161 = lshr i64 %159, %160
  %162 = call i32 @may_expand_vm(%struct.mm_struct* %153, i32 %156, i64 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %152
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  %167 = call %struct.vm_area_struct* @ERR_PTR(i32 %166)
  store %struct.vm_area_struct* %167, %struct.vm_area_struct** %5, align 8
  br label %194

168:                                              ; preds = %152
  %169 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %170 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @VM_ACCOUNT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %168
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* %7, align 8
  %178 = sub i64 %176, %177
  %179 = load i64, i64* @PAGE_SHIFT, align 8
  %180 = lshr i64 %178, %179
  store i64 %180, i64* %15, align 8
  %181 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %182 = load i64, i64* %15, align 8
  %183 = call i64 @security_vm_enough_memory_mm(%struct.mm_struct* %181, i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %175
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  %188 = call %struct.vm_area_struct* @ERR_PTR(i32 %187)
  store %struct.vm_area_struct* %188, %struct.vm_area_struct** %5, align 8
  br label %194

189:                                              ; preds = %175
  %190 = load i64, i64* %15, align 8
  %191 = load i64*, i64** %9, align 8
  store i64 %190, i64* %191, align 8
  br label %192

192:                                              ; preds = %189, %168
  %193 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  store %struct.vm_area_struct* %193, %struct.vm_area_struct** %5, align 8
  br label %194

194:                                              ; preds = %192, %185, %164, %147, %116, %103, %81, %73, %61, %46, %30
  %195 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  ret %struct.vm_area_struct* %195
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local %struct.vm_area_struct* @ERR_PTR(i32) #1

declare dso_local i32 @pr_warn_once(i8*, i32, i32) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i64 @rlimit(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @may_expand_vm(%struct.mm_struct*, i32, i64) #1

declare dso_local i64 @security_vm_enough_memory_mm(%struct.mm_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
