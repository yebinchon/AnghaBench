; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_do_fault_around.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_do_fault_around.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, i32*, i32, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.vm_fault*, i32, i32)* }

@fault_around_bytes = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @do_fault_around to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_fault_around(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %10 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %11 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  %13 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @fault_around_bytes, align 4
  %17 = call i64 @READ_ONCE(i32 %16)
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = mul i64 %20, %21
  %23 = sub i64 %22, 1
  %24 = xor i64 %23, -1
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = and i64 %24, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %27, %28
  %30 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %31 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %30, i32 0, i32 5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @max(i64 %29, i32 %34)
  %36 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %37 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %40 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = lshr i64 %42, %43
  %45 = load i32, i32* @PTRS_PER_PTE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = and i64 %44, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %56 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PAGE_SHIFT, align 8
  %59 = lshr i64 %57, %58
  %60 = load i32, i32* @PTRS_PER_PTE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = and i64 %59, %62
  %64 = sub i64 %54, %63
  %65 = load i32, i32* @PTRS_PER_PTE, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %64, %66
  %68 = sub i64 %67, 1
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %72 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %71, i32 0, i32 5
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i64 @vma_pages(%struct.TYPE_4__* %73)
  %75 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %76 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %75, i32 0, i32 5
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %74, %79
  %81 = sub nsw i64 %80, 1
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %4, align 8
  %85 = add i64 %83, %84
  %86 = sub i64 %85, 1
  %87 = trunc i64 %86 to i32
  %88 = call i32 @min3(i32 %70, i64 %81, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %90 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @pmd_none(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %1
  %96 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %97 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %96, i32 0, i32 5
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @pte_alloc_one(i32 %100)
  %102 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %103 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %105 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %95
  br label %168

109:                                              ; preds = %95
  %110 = call i32 (...) @smp_wmb()
  br label %111

111:                                              ; preds = %109, %1
  %112 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %113 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %112, i32 0, i32 5
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32 (%struct.vm_fault*, i32, i32)*, i32 (%struct.vm_fault*, i32, i32)** %117, align 8
  %119 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 %118(%struct.vm_fault* %119, i32 %120, i32 %121)
  %123 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %124 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @pmd_trans_huge(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %111
  %130 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %130, i32* %9, align 4
  br label %168

131:                                              ; preds = %111
  %132 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %133 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  br label %168

137:                                              ; preds = %131
  %138 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %139 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PAGE_SHIFT, align 8
  %142 = lshr i64 %140, %141
  %143 = load i64, i64* %3, align 8
  %144 = load i64, i64* @PAGE_SHIFT, align 8
  %145 = lshr i64 %143, %144
  %146 = sub i64 %142, %145
  %147 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %148 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = sub i64 0, %146
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %148, align 8
  %152 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %153 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @pte_none(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %137
  %159 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %158, %137
  %161 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %162 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %165 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @pte_unmap_unlock(i32* %163, i32 %166)
  br label %168

168:                                              ; preds = %160, %136, %129, %108
  %169 = load i64, i64* %3, align 8
  %170 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %171 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %173 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %172, i32 0, i32 2
  store i32* null, i32** %173, align 8
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @min3(i32, i64, i32) #1

declare dso_local i64 @vma_pages(%struct.TYPE_4__*) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @pte_alloc_one(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
