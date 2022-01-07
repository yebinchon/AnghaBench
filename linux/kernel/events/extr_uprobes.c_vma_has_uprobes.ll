; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_vma_has_uprobes.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_vma_has_uprobes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.inode = type { i32 }
%struct.rb_node = type { i32 }

@uprobes_treelock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i64)* @vma_has_uprobes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vma_has_uprobes(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.rb_node*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @file_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @vaddr_to_offset(%struct.vm_area_struct* %15, i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 %19, %20
  %22 = add i64 %18, %21
  %23 = sub i64 %22, 1
  store i64 %23, i64* %8, align 8
  %24 = call i32 @spin_lock(i32* @uprobes_treelock)
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call %struct.rb_node* @find_node_in_range(%struct.inode* %25, i64 %26, i64 %27)
  store %struct.rb_node* %28, %struct.rb_node** %10, align 8
  %29 = call i32 @spin_unlock(i32* @uprobes_treelock)
  %30 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %31 = icmp ne %struct.rb_node* %30, null
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i64 @vaddr_to_offset(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.rb_node* @find_node_in_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
