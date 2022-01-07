; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c___insert_vm_struct.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c___insert_vm_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.vm_area_struct*)* @__insert_vm_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__insert_vm_struct(%struct.mm_struct* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.rb_node**, align 8
  %7 = alloca %struct.rb_node*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @find_vma_links(%struct.mm_struct* %8, i32 %11, i32 %14, %struct.vm_area_struct** %5, %struct.rb_node*** %6, %struct.rb_node** %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @BUG()
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %24 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %25 = call i32 @__vma_link(%struct.mm_struct* %20, %struct.vm_area_struct* %21, %struct.vm_area_struct* %22, %struct.rb_node** %23, %struct.rb_node* %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  ret void
}

declare dso_local i64 @find_vma_links(%struct.mm_struct*, i32, i32, %struct.vm_area_struct**, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__vma_link(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
