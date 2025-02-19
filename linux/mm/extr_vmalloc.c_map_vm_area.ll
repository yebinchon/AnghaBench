; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_map_vm_area.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_map_vm_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i64 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_vm_area(%struct.vm_struct* %0, i32 %1, %struct.page** %2) #0 {
  %4 = alloca %struct.vm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vm_struct* %0, %struct.vm_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.page** %2, %struct.page*** %6, align 8
  %10 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.vm_struct*, %struct.vm_struct** %4, align 8
  %15 = call i64 @get_vm_area_size(%struct.vm_struct* %14)
  %16 = add i64 %13, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.page**, %struct.page*** %6, align 8
  %21 = call i32 @vmap_page_range(i64 %17, i64 %18, i32 %19, %struct.page** %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 0, %24 ], [ %26, %25 ]
  ret i32 %28
}

declare dso_local i64 @get_vm_area_size(%struct.vm_struct*) #1

declare dso_local i32 @vmap_page_range(i64, i64, i32, %struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
