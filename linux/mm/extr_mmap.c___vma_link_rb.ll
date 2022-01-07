; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c___vma_link_rb.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c___vma_link_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32 }
%struct.vm_area_struct = type { i64, i32, %struct.vm_area_struct* }
%struct.rb_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__vma_link_rb(%struct.mm_struct* %0, %struct.vm_area_struct* %1, %struct.rb_node** %2, %struct.rb_node* %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.rb_node**, align 8
  %8 = alloca %struct.rb_node*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.rb_node** %2, %struct.rb_node*** %7, align 8
  store %struct.rb_node* %3, %struct.rb_node** %8, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 2
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %12 = icmp ne %struct.vm_area_struct* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 2
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %17 = call i32 @vma_gap_update(%struct.vm_area_struct* %16)
  br label %23

18:                                               ; preds = %4
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %20 = call i32 @vm_end_gap(%struct.vm_area_struct* %19)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %27 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %28 = call i32 @rb_link_node(i32* %25, %struct.rb_node* %26, %struct.rb_node** %27)
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %32 = call i32 @vma_gap_update(%struct.vm_area_struct* %31)
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %34 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 0
  %36 = call i32 @vma_rb_insert(%struct.vm_area_struct* %33, i32* %35)
  ret void
}

declare dso_local i32 @vma_gap_update(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_end_gap(%struct.vm_area_struct*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @vma_rb_insert(%struct.vm_area_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
