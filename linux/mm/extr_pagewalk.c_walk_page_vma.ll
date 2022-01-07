; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_pagewalk.c_walk_page_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_pagewalk.c_walk_page_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mm_walk_ops = type { i32 }
%struct.mm_walk = type { i8*, %struct.TYPE_2__*, %struct.vm_area_struct*, %struct.mm_walk_ops* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @walk_page_vma(%struct.vm_area_struct* %0, %struct.mm_walk_ops* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.mm_walk_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mm_walk, align 8
  %9 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.mm_walk_ops* %1, %struct.mm_walk_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %8, i32 0, i32 0
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %8, i32 0, i32 1
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %12, align 8
  %16 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %8, i32 0, i32 2
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  store %struct.vm_area_struct* %17, %struct.vm_area_struct** %16, align 8
  %18 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %8, i32 0, i32 3
  %19 = load %struct.mm_walk_ops*, %struct.mm_walk_ops** %6, align 8
  store %struct.mm_walk_ops* %19, %struct.mm_walk_ops** %18, align 8
  %20 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %8, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %54

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %8, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @lockdep_assert_held(i32* %29)
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @walk_page_test(i32 %33, i32 %36, %struct.mm_walk* %8)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %54

41:                                               ; preds = %26
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %41
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @__walk_page_range(i32 %49, i32 %52, %struct.mm_walk* %8)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %46, %44, %40, %23
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @walk_page_test(i32, i32, %struct.mm_walk*) #1

declare dso_local i32 @__walk_page_range(i32, i32, %struct.mm_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
