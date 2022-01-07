; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_remove_vm_area.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_remove_vm_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32 }
%struct.vmap_area = type { %struct.vm_struct* }

@vmap_area_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_struct* @remove_vm_area(i8* %0) #0 {
  %2 = alloca %struct.vm_struct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vmap_area*, align 8
  %5 = alloca %struct.vm_struct*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @might_sleep()
  %7 = call i32 @spin_lock(i32* @vmap_area_lock)
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = call %struct.vmap_area* @__find_vmap_area(i64 %9)
  store %struct.vmap_area* %10, %struct.vmap_area** %4, align 8
  %11 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %12 = icmp ne %struct.vmap_area* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %15 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %14, i32 0, i32 0
  %16 = load %struct.vm_struct*, %struct.vm_struct** %15, align 8
  %17 = icmp ne %struct.vm_struct* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %20 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %19, i32 0, i32 0
  %21 = load %struct.vm_struct*, %struct.vm_struct** %20, align 8
  store %struct.vm_struct* %21, %struct.vm_struct** %5, align 8
  %22 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %23 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %22, i32 0, i32 0
  store %struct.vm_struct* null, %struct.vm_struct** %23, align 8
  %24 = call i32 @spin_unlock(i32* @vmap_area_lock)
  %25 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %26 = call i32 @kasan_free_shadow(%struct.vm_struct* %25)
  %27 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %28 = call i32 @free_unmap_vmap_area(%struct.vmap_area* %27)
  %29 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  store %struct.vm_struct* %29, %struct.vm_struct** %2, align 8
  br label %32

30:                                               ; preds = %13, %1
  %31 = call i32 @spin_unlock(i32* @vmap_area_lock)
  store %struct.vm_struct* null, %struct.vm_struct** %2, align 8
  br label %32

32:                                               ; preds = %30, %18
  %33 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  ret %struct.vm_struct* %33
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.vmap_area* @__find_vmap_area(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kasan_free_shadow(%struct.vm_struct*) #1

declare dso_local i32 @free_unmap_vmap_area(%struct.vmap_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
