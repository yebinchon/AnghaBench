; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_copy_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_copy_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, %struct.TYPE_2__*, i64, i32, i32, i32, %struct.mm_struct* }
%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*)* }
%struct.mm_struct = type { i32 }
%struct.rb_node = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_area_struct* @copy_vma(%struct.vm_area_struct** %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca %struct.vm_area_struct*, align 8
  %17 = alloca %struct.rb_node**, align 8
  %18 = alloca %struct.rb_node*, align 8
  %19 = alloca i32, align 4
  store %struct.vm_area_struct** %0, %struct.vm_area_struct*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %20, align 8
  store %struct.vm_area_struct* %21, %struct.vm_area_struct** %12, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %13, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 8
  %27 = load %struct.mm_struct*, %struct.mm_struct** %26, align 8
  store %struct.mm_struct* %27, %struct.mm_struct** %14, align 8
  store i32 1, i32* %19, align 4
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %29 = call i64 @vma_is_anonymous(%struct.vm_area_struct* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %5
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %5
  %38 = phi i1 [ false, %5 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @PAGE_SHIFT, align 8
  %45 = lshr i64 %43, %44
  store i64 %45, i64* %10, align 8
  store i32 0, i32* %19, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %49, %50
  %52 = call i64 @find_vma_links(%struct.mm_struct* %47, i64 %48, i64 %51, %struct.vm_area_struct** %16, %struct.rb_node*** %17, %struct.rb_node** %18)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %6, align 8
  br label %190

55:                                               ; preds = %46
  %56 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %73 = call i32 @vma_policy(%struct.vm_area_struct* %72)
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %56, %struct.vm_area_struct* %57, i64 %58, i64 %61, i32 %64, i32 %67, i64 %70, i64 %71, i32 %73, i32 %76)
  store %struct.vm_area_struct* %77, %struct.vm_area_struct** %15, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %79 = icmp ne %struct.vm_area_struct* %78, null
  br i1 %79, label %80, label %113

80:                                               ; preds = %55
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %83 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp uge i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %87, %90
  br label %92

92:                                               ; preds = %86, %80
  %93 = phi i1 [ false, %80 ], [ %91, %86 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %19, align 4
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %100 = call i32 @VM_BUG_ON_VMA(i32 %98, %struct.vm_area_struct* %99)
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %101, %struct.vm_area_struct** %12, align 8
  %102 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %101, %struct.vm_area_struct** %102, align 8
  br label %103

103:                                              ; preds = %97, %92
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ule i64 %106, %109
  %111 = zext i1 %110 to i32
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  br label %180

113:                                              ; preds = %55
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %115 = call %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct* %114)
  store %struct.vm_area_struct* %115, %struct.vm_area_struct** %15, align 8
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %117 = icmp ne %struct.vm_area_struct* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  br label %189

119:                                              ; preds = %113
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %122 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %123, %124
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %127 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %130 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %133 = call i64 @vma_dup_policy(%struct.vm_area_struct* %131, %struct.vm_area_struct* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %119
  br label %186

136:                                              ; preds = %119
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %139 = call i64 @anon_vma_clone(%struct.vm_area_struct* %137, %struct.vm_area_struct* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %182

142:                                              ; preds = %136
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %144 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %149 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @get_file(i64 %150)
  br label %152

152:                                              ; preds = %147, %142
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %154 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %153, i32 0, i32 3
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = icmp ne %struct.TYPE_2__* %155, null
  br i1 %156, label %157, label %172

157:                                              ; preds = %152
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %159 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %158, i32 0, i32 3
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %161, align 8
  %163 = icmp ne i32 (%struct.vm_area_struct*)* %162, null
  br i1 %163, label %164, label %172

164:                                              ; preds = %157
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %166 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %165, i32 0, i32 3
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %168, align 8
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %171 = call i32 %169(%struct.vm_area_struct* %170)
  br label %172

172:                                              ; preds = %164, %157, %152
  %173 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %175 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %176 = load %struct.rb_node**, %struct.rb_node*** %17, align 8
  %177 = load %struct.rb_node*, %struct.rb_node** %18, align 8
  %178 = call i32 @vma_link(%struct.mm_struct* %173, %struct.vm_area_struct* %174, %struct.vm_area_struct* %175, %struct.rb_node** %176, %struct.rb_node* %177)
  %179 = load i32*, i32** %11, align 8
  store i32 0, i32* %179, align 4
  br label %180

180:                                              ; preds = %172, %103
  %181 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  store %struct.vm_area_struct* %181, %struct.vm_area_struct** %6, align 8
  br label %190

182:                                              ; preds = %141
  %183 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %184 = call i32 @vma_policy(%struct.vm_area_struct* %183)
  %185 = call i32 @mpol_put(i32 %184)
  br label %186

186:                                              ; preds = %182, %135
  %187 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %188 = call i32 @vm_area_free(%struct.vm_area_struct* %187)
  br label %189

189:                                              ; preds = %186, %118
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %6, align 8
  br label %190

190:                                              ; preds = %189, %180, %54
  %191 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  ret %struct.vm_area_struct* %191
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vma_is_anonymous(%struct.vm_area_struct*) #1

declare dso_local i64 @find_vma_links(%struct.mm_struct*, i64, i64, %struct.vm_area_struct**, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i32 @VM_BUG_ON_VMA(i32, %struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct*) #1

declare dso_local i64 @vma_dup_policy(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i64 @anon_vma_clone(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @get_file(i64) #1

declare dso_local i32 @vma_link(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*) #1

declare dso_local i32 @mpol_put(i32) #1

declare dso_local i32 @vm_area_free(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
