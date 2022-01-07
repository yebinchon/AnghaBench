; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mbind_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mbind_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.mempolicy = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, %struct.vm_area_struct*, i32, i32, i32, i32, i64, %struct.vm_area_struct* }

@EFAULT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i64, %struct.mempolicy*)* @mbind_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbind_range(%struct.mm_struct* %0, i64 %1, i64 %2, %struct.mempolicy* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mempolicy*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.mempolicy* %3, %struct.mempolicy** %9, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %17, i64 %18)
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %12, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %21 = icmp ne %struct.vm_area_struct* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %4
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %168

31:                                               ; preds = %22
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 9
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %33, align 8
  store %struct.vm_area_struct* %34, %struct.vm_area_struct** %11, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  store %struct.vm_area_struct* %41, %struct.vm_area_struct** %11, align 8
  br label %42

42:                                               ; preds = %40, %31
  br label %43

43:                                               ; preds = %162, %42
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %45 = icmp ne %struct.vm_area_struct* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ult i64 %49, %50
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  br i1 %53, label %54, label %165

54:                                               ; preds = %52
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 3
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %56, align 8
  store %struct.vm_area_struct* %57, %struct.vm_area_struct** %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @max(i64 %58, i64 %61)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @min(i64 %63, i64 %66)
  store i64 %67, i64* %16, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %69 = call i32 @vma_policy(%struct.vm_area_struct* %68)
  %70 = load %struct.mempolicy*, %struct.mempolicy** %9, align 8
  %71 = call i64 @mpol_equal(i32 %69, %struct.mempolicy* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  br label %162

74:                                               ; preds = %54
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub i64 %78, %81
  %83 = load i64, i64* @PAGE_SHIFT, align 8
  %84 = lshr i64 %82, %83
  %85 = add i64 %77, %84
  store i64 %85, i64* %14, align 8
  %86 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %97 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %14, align 8
  %100 = load %struct.mempolicy*, %struct.mempolicy** %9, align 8
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %102 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %86, %struct.vm_area_struct* %87, i64 %88, i64 %89, i32 %92, i32 %95, i32 %98, i64 %99, %struct.mempolicy* %100, i32 %103)
  store %struct.vm_area_struct* %104, %struct.vm_area_struct** %11, align 8
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %106 = icmp ne %struct.vm_area_struct* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %74
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  store %struct.vm_area_struct* %108, %struct.vm_area_struct** %12, align 8
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %110 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %109, i32 0, i32 3
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %110, align 8
  store %struct.vm_area_struct* %111, %struct.vm_area_struct** %10, align 8
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %113 = call i32 @vma_policy(%struct.vm_area_struct* %112)
  %114 = load %struct.mempolicy*, %struct.mempolicy** %9, align 8
  %115 = call i64 @mpol_equal(i32 %113, %struct.mempolicy* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %162

118:                                              ; preds = %107
  br label %154

119:                                              ; preds = %74
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %121 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %119
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %127 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %130 = load i64, i64* %15, align 8
  %131 = call i32 @split_vma(i32 %128, %struct.vm_area_struct* %129, i64 %130, i32 1)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %166

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135, %119
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %138 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %16, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %136
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %144 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @split_vma(i32 %145, %struct.vm_area_struct* %146, i64 %147, i32 0)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %166

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %136
  br label %154

154:                                              ; preds = %153, %118
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %156 = load %struct.mempolicy*, %struct.mempolicy** %9, align 8
  %157 = call i32 @vma_replace_policy(%struct.vm_area_struct* %155, %struct.mempolicy* %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %166

161:                                              ; preds = %154
  br label %162

162:                                              ; preds = %161, %117, %73
  %163 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  store %struct.vm_area_struct* %163, %struct.vm_area_struct** %11, align 8
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %164, %struct.vm_area_struct** %12, align 8
  br label %43

165:                                              ; preds = %52
  br label %166

166:                                              ; preds = %165, %160, %151, %134
  %167 = load i32, i32* %13, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %28
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @mpol_equal(i32, %struct.mempolicy*) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i32, i32, i32, i64, %struct.mempolicy*, i32) #1

declare dso_local i32 @split_vma(i32, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @vma_replace_policy(%struct.vm_area_struct*, %struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
