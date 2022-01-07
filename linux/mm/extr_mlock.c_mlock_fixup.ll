; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c_mlock_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c_mlock_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i32, i32, i32, i64, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@VM_LOCKED = common dso_local global i32 0, align 4
@VM_SPECIAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64, i32)* @mlock_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlock_fixup(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 7
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @VM_LOCKED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %57, label %35

35:                                               ; preds = %5
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VM_SPECIAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %35
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %44 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.vm_area_struct* @get_gate_vma(i32 %50)
  %52 = icmp eq %struct.vm_area_struct* %47, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %55 = call i64 @vma_is_dax(%struct.vm_area_struct* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %46, %42, %35, %5
  br label %164

58:                                               ; preds = %53
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  %67 = load i64, i64* @PAGE_SHIFT, align 8
  %68 = lshr i64 %66, %67
  %69 = add i64 %61, %68
  store i64 %69, i64* %12, align 8
  %70 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %71 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %84 = call i32 @vma_policy(%struct.vm_area_struct* %83)
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %70, %struct.vm_area_struct* %72, i64 %73, i64 %74, i32 %75, i32 %78, i32 %81, i64 %82, i32 %84, i32 %87)
  %89 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %88, %struct.vm_area_struct** %89, align 8
  %90 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %90, align 8
  %92 = icmp ne %struct.vm_area_struct* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %58
  %94 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %94, align 8
  store %struct.vm_area_struct* %95, %struct.vm_area_struct** %6, align 8
  br label %127

96:                                               ; preds = %58
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @split_vma(%struct.mm_struct* %103, %struct.vm_area_struct* %104, i64 %105, i32 1)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %164

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %96
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %114 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @split_vma(%struct.mm_struct* %118, %struct.vm_area_struct* %119, i64 %120, i32 0)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %164

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %111
  br label %127

127:                                              ; preds = %126, %93
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %8, align 8
  %130 = sub i64 %128, %129
  %131 = load i64, i64* @PAGE_SHIFT, align 8
  %132 = lshr i64 %130, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %13, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %13, align 4
  br label %146

139:                                              ; preds = %127
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @VM_LOCKED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i32 0, i32* %13, align 4
  br label %145

145:                                              ; preds = %144, %139
  br label %146

146:                                              ; preds = %145, %136
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %149 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %146
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %157 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  br label %163

158:                                              ; preds = %146
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* %9, align 8
  %162 = call i32 @munlock_vma_pages_range(%struct.vm_area_struct* %159, i64 %160, i64 %161)
  br label %163

163:                                              ; preds = %158, %154
  br label %164

164:                                              ; preds = %163, %124, %109, %57
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %166 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %165, %struct.vm_area_struct** %166, align 8
  %167 = load i32, i32* %14, align 4
  ret i32 %167
}

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @get_gate_vma(i32) #1

declare dso_local i64 @vma_is_dax(%struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i32 @split_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @munlock_vma_pages_range(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
