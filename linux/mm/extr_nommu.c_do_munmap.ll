; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_do_munmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_do_munmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mm_struct = type { i32 }
%struct.list_head = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@do_munmap.limit = internal global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"munmap of memory not mmapped by process %d (%s): 0x%lx-0x%lx\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_munmap(%struct.mm_struct* %0, i64 %1, i64 %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @PAGE_ALIGN(i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %164

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %11, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %24, i64 %25)
  store %struct.vm_area_struct* %26, %struct.vm_area_struct** %10, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %28 = icmp ne %struct.vm_area_struct* %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @do_munmap.limit, align 4
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %40, %41
  %43 = sub i64 %42, 1
  %44 = call i32 @pr_warn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i64 %39, i64 %43)
  %45 = load i32, i32* @do_munmap.limit, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @do_munmap.limit, align 4
  br label %47

47:                                               ; preds = %32, %29
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %164

50:                                               ; preds = %20
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %76, %55
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %164

65:                                               ; preds = %56
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %158

72:                                               ; preds = %65
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 2
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %74, align 8
  store %struct.vm_area_struct* %75, %struct.vm_area_struct** %10, align 8
  br label %76

76:                                               ; preds = %72
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %78 = icmp ne %struct.vm_area_struct* %77, null
  br i1 %78, label %56, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %164

82:                                               ; preds = %50
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %158

95:                                               ; preds = %88, %82
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %104 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ugt i64 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %95
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %164

110:                                              ; preds = %101
  %111 = load i64, i64* %7, align 8
  %112 = call i64 @offset_in_page(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %164

117:                                              ; preds = %110
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %120 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load i64, i64* %11, align 8
  %125 = call i64 @offset_in_page(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %164

130:                                              ; preds = %123, %117
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %133 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %130
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %136
  %143 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @split_vma(%struct.mm_struct* %143, %struct.vm_area_struct* %144, i64 %145, i32 1)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %5, align 4
  br label %164

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %136, %130
  %153 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i64, i64* %11, align 8
  %157 = call i32 @shrink_vma(%struct.mm_struct* %153, %struct.vm_area_struct* %154, i64 %155, i64 %156)
  store i32 %157, i32* %5, align 4
  br label %164

158:                                              ; preds = %94, %71
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %160 = call i32 @delete_vma_from_mm(%struct.vm_area_struct* %159)
  %161 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %163 = call i32 @delete_vma(%struct.mm_struct* %161, %struct.vm_area_struct* %162)
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %158, %152, %149, %127, %114, %107, %79, %62, %47, %17
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i64, i64) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @split_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @shrink_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @delete_vma_from_mm(%struct.vm_area_struct*) #1

declare dso_local i32 @delete_vma(%struct.mm_struct*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
