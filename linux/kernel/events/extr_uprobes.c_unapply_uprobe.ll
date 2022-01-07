; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_unapply_uprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_unapply_uprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uprobe = type { i64, i32 }
%struct.mm_struct = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32, i64, i32, %struct.vm_area_struct* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uprobe*, %struct.mm_struct*)* @unapply_uprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unapply_uprobe(%struct.uprobe* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.uprobe*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.uprobe* %0, %struct.uprobe** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = call i32 @down_read(i32* %10)
  %12 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 1
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %14, %struct.vm_area_struct** %5, align 8
  br label %15

15:                                               ; preds = %71, %2
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = icmp ne %struct.vm_area_struct* %16, null
  br i1 %17, label %18, label %75

18:                                               ; preds = %15
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = call i32 @valid_vma(%struct.vm_area_struct* %19, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @file_inode(i32 %25)
  %27 = load %struct.uprobe*, %struct.uprobe** %3, align 8
  %28 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %18
  br label %71

32:                                               ; preds = %22
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.uprobe*, %struct.uprobe** %3, align 8
  %40 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %58, label %44

44:                                               ; preds = %32
  %45 = load %struct.uprobe*, %struct.uprobe** %3, align 8
  %46 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %48, %51
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = icmp sge i32 %47, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %44, %32
  br label %71

59:                                               ; preds = %44
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = load %struct.uprobe*, %struct.uprobe** %3, align 8
  %62 = getelementptr inbounds %struct.uprobe, %struct.uprobe* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @offset_to_vaddr(%struct.vm_area_struct* %60, i32 %63)
  store i64 %64, i64* %7, align 8
  %65 = load %struct.uprobe*, %struct.uprobe** %3, align 8
  %66 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @remove_breakpoint(%struct.uprobe* %65, %struct.mm_struct* %66, i64 %67)
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %59, %58, %31
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 4
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %73, align 8
  store %struct.vm_area_struct* %74, %struct.vm_area_struct** %5, align 8
  br label %15

75:                                               ; preds = %15
  %76 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %77 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %76, i32 0, i32 0
  %78 = call i32 @up_read(i32* %77)
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @valid_vma(%struct.vm_area_struct*, i32) #1

declare dso_local i64 @file_inode(i32) #1

declare dso_local i64 @offset_to_vaddr(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @remove_breakpoint(%struct.uprobe*, %struct.mm_struct*, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
