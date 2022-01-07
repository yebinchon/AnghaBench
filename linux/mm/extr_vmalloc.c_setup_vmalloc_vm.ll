; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_setup_vmalloc_vm.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_setup_vmalloc_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i64, i8*, i64, i8* }
%struct.vmap_area = type { %struct.vm_struct*, i64, i64 }

@vmap_area_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_struct*, %struct.vmap_area*, i64, i8*)* @setup_vmalloc_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_vmalloc_vm(%struct.vm_struct* %0, %struct.vmap_area* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.vm_struct*, align 8
  %6 = alloca %struct.vmap_area*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.vm_struct* %0, %struct.vm_struct** %5, align 8
  store %struct.vmap_area* %1, %struct.vmap_area** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = call i32 @spin_lock(i32* @vmap_area_lock)
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.vmap_area*, %struct.vmap_area** %6, align 8
  %14 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.vmap_area*, %struct.vmap_area** %6, align 8
  %20 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.vmap_area*, %struct.vmap_area** %6, align 8
  %23 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %27 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %32 = load %struct.vmap_area*, %struct.vmap_area** %6, align 8
  %33 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %32, i32 0, i32 0
  store %struct.vm_struct* %31, %struct.vm_struct** %33, align 8
  %34 = call i32 @spin_unlock(i32* @vmap_area_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
