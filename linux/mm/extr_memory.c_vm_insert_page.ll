; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_vm_insert_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_vm_insert_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_insert_page(%struct.vm_area_struct* %0, i64 %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %62

22:                                               ; preds = %13
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i32 @page_count(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %22
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VM_MIXEDMAP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %29
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @down_read_trylock(i32* %40)
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @VM_PFNMAP, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i32, i32* @VM_MIXEDMAP, align 4
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %36, %29
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.page*, %struct.page** %7, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @insert_page(%struct.vm_area_struct* %55, i64 %56, %struct.page* %57, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %26, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @insert_page(%struct.vm_area_struct*, i64, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
