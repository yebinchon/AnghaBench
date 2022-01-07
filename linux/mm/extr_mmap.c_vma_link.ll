; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_vma_link.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_vma_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*)* @vma_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vma_link(%struct.mm_struct* %0, %struct.vm_area_struct* %1, %struct.vm_area_struct* %2, %struct.rb_node** %3, %struct.rb_node* %4) #0 {
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca %struct.rb_node**, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct.address_space*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %8, align 8
  store %struct.rb_node** %3, %struct.rb_node*** %9, align 8
  store %struct.rb_node* %4, %struct.rb_node** %10, align 8
  store %struct.address_space* null, %struct.address_space** %11, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.address_space*, %struct.address_space** %20, align 8
  store %struct.address_space* %21, %struct.address_space** %11, align 8
  %22 = load %struct.address_space*, %struct.address_space** %11, align 8
  %23 = call i32 @i_mmap_lock_write(%struct.address_space* %22)
  br label %24

24:                                               ; preds = %16, %5
  %25 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %28 = load %struct.rb_node**, %struct.rb_node*** %9, align 8
  %29 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %30 = call i32 @__vma_link(%struct.mm_struct* %25, %struct.vm_area_struct* %26, %struct.vm_area_struct* %27, %struct.rb_node** %28, %struct.rb_node* %29)
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = call i32 @__vma_link_file(%struct.vm_area_struct* %31)
  %33 = load %struct.address_space*, %struct.address_space** %11, align 8
  %34 = icmp ne %struct.address_space* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.address_space*, %struct.address_space** %11, align 8
  %37 = call i32 @i_mmap_unlock_write(%struct.address_space* %36)
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %40 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %44 = call i32 @validate_mm(%struct.mm_struct* %43)
  ret void
}

declare dso_local i32 @i_mmap_lock_write(%struct.address_space*) #1

declare dso_local i32 @__vma_link(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*) #1

declare dso_local i32 @__vma_link_file(%struct.vm_area_struct*) #1

declare dso_local i32 @i_mmap_unlock_write(%struct.address_space*) #1

declare dso_local i32 @validate_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
