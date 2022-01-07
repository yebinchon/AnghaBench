; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_insert_vm_struct.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_insert_vm_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i32, i32 }
%struct.rb_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VM_ACCOUNT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insert_vm_struct(%struct.mm_struct* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.rb_node**, align 8
  %8 = alloca %struct.rb_node*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @find_vma_links(%struct.mm_struct* %9, i32 %12, i32 %15, %struct.vm_area_struct** %6, %struct.rb_node*** %7, %struct.rb_node** %8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VM_ACCOUNT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = call i32 @vma_pages(%struct.vm_area_struct* %30)
  %32 = call i64 @security_vm_enough_memory_mm(%struct.mm_struct* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %60

37:                                               ; preds = %28, %21
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = call i64 @vma_is_anonymous(%struct.vm_area_struct* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %41, %37
  %54 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %57 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %58 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %59 = call i32 @vma_link(%struct.mm_struct* %54, %struct.vm_area_struct* %55, %struct.vm_area_struct* %56, %struct.rb_node** %57, %struct.rb_node* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %34, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @find_vma_links(%struct.mm_struct*, i32, i32, %struct.vm_area_struct**, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local i64 @security_vm_enough_memory_mm(%struct.mm_struct*, i32) #1

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i64 @vma_is_anonymous(%struct.vm_area_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vma_link(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
