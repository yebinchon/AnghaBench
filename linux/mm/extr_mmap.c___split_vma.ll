; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c___split_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c___split_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)* }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__split_vma(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*, i64)** %20, align 8
  %22 = icmp ne i32 (%struct.vm_area_struct*, i64)* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*, i64)** %27, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 %28(%struct.vm_area_struct* %29, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %189

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %16, %4
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %39 = call %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct* %38)
  store %struct.vm_area_struct* %39, %struct.vm_area_struct** %10, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %41 = icmp ne %struct.vm_area_struct* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %189

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %67

52:                                               ; preds = %45
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %56, %59
  %61 = load i64, i64* @PAGE_SHIFT, align 8
  %62 = lshr i64 %60, %61
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %62
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %52, %48
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %70 = call i32 @vma_dup_policy(%struct.vm_area_struct* %68, %struct.vm_area_struct* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %185

74:                                               ; preds = %67
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %77 = call i32 @anon_vma_clone(%struct.vm_area_struct* %75, %struct.vm_area_struct* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %181

81:                                               ; preds = %74
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %83 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @get_file(i64 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = icmp ne %struct.TYPE_2__* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %100, align 8
  %102 = icmp ne i32 (%struct.vm_area_struct*)* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %107, align 8
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %110 = call i32 %108(%struct.vm_area_struct* %109)
  br label %111

111:                                              ; preds = %103, %96, %91
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %118 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %121 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %125 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %123, %126
  %128 = load i64, i64* @PAGE_SHIFT, align 8
  %129 = lshr i64 %127, %128
  %130 = add i64 %122, %129
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %132 = call i32 @vma_adjust(%struct.vm_area_struct* %115, i64 %116, i64 %119, i64 %130, %struct.vm_area_struct* %131)
  store i32 %132, i32* %11, align 4
  br label %144

133:                                              ; preds = %111
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %136 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %140 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %143 = call i32 @vma_adjust(%struct.vm_area_struct* %134, i64 %137, i64 %138, i64 %141, %struct.vm_area_struct* %142)
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %133, %114
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %189

148:                                              ; preds = %144
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %149, i32 0, i32 4
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = icmp ne %struct.TYPE_2__* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %148
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %157, align 8
  %159 = icmp ne i32 (%struct.vm_area_struct*)* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %153
  %161 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %162 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %161, i32 0, i32 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %164, align 8
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %167 = call i32 %165(%struct.vm_area_struct* %166)
  br label %168

168:                                              ; preds = %160, %153, %148
  %169 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %170 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %175 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @fput(i64 %176)
  br label %178

178:                                              ; preds = %173, %168
  %179 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %180 = call i32 @unlink_anon_vmas(%struct.vm_area_struct* %179)
  br label %181

181:                                              ; preds = %178, %80
  %182 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %183 = call i32 @vma_policy(%struct.vm_area_struct* %182)
  %184 = call i32 @mpol_put(i32 %183)
  br label %185

185:                                              ; preds = %181, %73
  %186 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %187 = call i32 @vm_area_free(%struct.vm_area_struct* %186)
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %185, %147, %42, %34
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct*) #1

declare dso_local i32 @vma_dup_policy(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @anon_vma_clone(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @get_file(i64) #1

declare dso_local i32 @vma_adjust(%struct.vm_area_struct*, i64, i64, i64, %struct.vm_area_struct*) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @unlink_anon_vmas(%struct.vm_area_struct*) #1

declare dso_local i32 @mpol_put(i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_area_free(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
