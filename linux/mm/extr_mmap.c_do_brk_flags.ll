; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_do_brk_flags.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_do_brk_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64, i64, i64, i64, i64 }
%struct.list_head = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i64, i32 }
%struct.rb_node = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_DATA_DEFAULT_FLAGS = common dso_local global i64 0, align 8
@VM_ACCOUNT = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sysctl_max_map_count = common dso_local global i64 0, align 8
@NULL_VM_UFFD_CTX = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i64 0, align 8
@VM_SOFTDIRTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, %struct.list_head*)* @do_brk_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_brk_flags(i64 %0, i64 %1, i64 %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca %struct.rb_node**, align 8
  %14 = alloca %struct.rb_node*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = lshr i64 %20, %21
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @VM_EXEC, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %23, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %199

31:                                               ; preds = %4
  %32 = load i64, i64* @VM_DATA_DEFAULT_FLAGS, align 8
  %33 = load i64, i64* @VM_ACCOUNT, align 8
  %34 = or i64 %32, %33
  %35 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %34, %37
  %39 = load i64, i64* %8, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* @MAP_FIXED, align 4
  %44 = call i32 @get_unmapped_area(i32* null, i64 %41, i64 %42, i32 0, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i64 @offset_in_page(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %5, align 4
  br label %199

50:                                               ; preds = %31
  %51 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %52 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @mlock_future_check(%struct.mm_struct* %51, i64 %54, i64 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %16, align 4
  store i32 %60, i32* %5, align 4
  br label %199

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %80, %61
  %63 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %65, %66
  %68 = call i64 @find_vma_links(%struct.mm_struct* %63, i64 %64, i64 %67, %struct.vm_area_struct** %12, %struct.rb_node*** %13, %struct.rb_node** %14)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %62
  %71 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.list_head*, %struct.list_head** %9, align 8
  %75 = call i64 @do_munmap(%struct.mm_struct* %71, i64 %72, i64 %73, %struct.list_head* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %199

80:                                               ; preds = %70
  br label %62

81:                                               ; preds = %62
  %82 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @PAGE_SHIFT, align 8
  %86 = lshr i64 %84, %85
  %87 = call i32 @may_expand_vm(%struct.mm_struct* %82, i64 %83, i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %199

92:                                               ; preds = %81
  %93 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %94 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @sysctl_max_map_count, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %199

101:                                              ; preds = %92
  %102 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @PAGE_SHIFT, align 8
  %105 = lshr i64 %103, %104
  %106 = call i64 @security_vm_enough_memory_mm(%struct.mm_struct* %102, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %199

111:                                              ; preds = %101
  %112 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* %7, align 8
  %117 = add i64 %115, %116
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i32, i32* @NULL_VM_UFFD_CTX, align 4
  %121 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %112, %struct.vm_area_struct* %113, i64 %114, i64 %117, i64 %118, i32* null, i32* null, i64 %119, i32* null, i32 %120)
  store %struct.vm_area_struct* %121, %struct.vm_area_struct** %11, align 8
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %123 = icmp ne %struct.vm_area_struct* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %164

125:                                              ; preds = %111
  %126 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %127 = call %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct* %126)
  store %struct.vm_area_struct* %127, %struct.vm_area_struct** %11, align 8
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %129 = icmp ne %struct.vm_area_struct* %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %125
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @PAGE_SHIFT, align 8
  %133 = lshr i64 %131, %132
  %134 = call i32 @vm_unacct_memory(i64 %133)
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %199

137:                                              ; preds = %125
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %139 = call i32 @vma_set_anonymous(%struct.vm_area_struct* %138)
  %140 = load i64, i64* %6, align 8
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %142 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* %7, align 8
  %145 = add i64 %143, %144
  %146 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %147 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %15, align 8
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %153 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load i64, i64* %8, align 8
  %155 = call i32 @vm_get_page_prot(i64 %154)
  %156 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %157 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %160 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %161 = load %struct.rb_node**, %struct.rb_node*** %13, align 8
  %162 = load %struct.rb_node*, %struct.rb_node** %14, align 8
  %163 = call i32 @vma_link(%struct.mm_struct* %158, %struct.vm_area_struct* %159, %struct.vm_area_struct* %160, %struct.rb_node** %161, %struct.rb_node* %162)
  br label %164

164:                                              ; preds = %137, %124
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %166 = call i32 @perf_event_mmap(%struct.vm_area_struct* %165)
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @PAGE_SHIFT, align 8
  %169 = lshr i64 %167, %168
  %170 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %171 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, %169
  store i64 %173, i64* %171, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* @PAGE_SHIFT, align 8
  %176 = lshr i64 %174, %175
  %177 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %178 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %176
  store i64 %180, i64* %178, align 8
  %181 = load i64, i64* %8, align 8
  %182 = load i64, i64* @VM_LOCKED, align 8
  %183 = and i64 %181, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %164
  %186 = load i64, i64* %7, align 8
  %187 = load i64, i64* @PAGE_SHIFT, align 8
  %188 = lshr i64 %186, %187
  %189 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %190 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, %188
  store i64 %192, i64* %190, align 8
  br label %193

193:                                              ; preds = %185, %164
  %194 = load i64, i64* @VM_SOFTDIRTY, align 8
  %195 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %196 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = or i64 %197, %194
  store i64 %198, i64* %196, align 8
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %193, %130, %108, %98, %89, %77, %59, %48, %28
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @get_unmapped_area(i32*, i64, i64, i32, i32) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i32 @mlock_future_check(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @find_vma_links(%struct.mm_struct*, i64, i64, %struct.vm_area_struct**, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local i64 @do_munmap(%struct.mm_struct*, i64, i64, %struct.list_head*) #1

declare dso_local i32 @may_expand_vm(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @security_vm_enough_memory_mm(%struct.mm_struct*, i64) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i64, i32*, i32*, i64, i32*, i32) #1

declare dso_local %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct*) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

declare dso_local i32 @vma_set_anonymous(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_get_page_prot(i64) #1

declare dso_local i32 @vma_link(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*) #1

declare dso_local i32 @perf_event_mmap(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
