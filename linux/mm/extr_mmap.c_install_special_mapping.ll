; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_install_special_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_install_special_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@legacy_special_mapping_vmops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @install_special_mapping(%struct.mm_struct* %0, i64 %1, i64 %2, i64 %3, %struct.page** %4) #0 {
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.page** %4, %struct.page*** %10, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.page**, %struct.page*** %10, align 8
  %17 = bitcast %struct.page** %16 to i8*
  %18 = call %struct.vm_area_struct* @__install_special_mapping(%struct.mm_struct* %12, i64 %13, i64 %14, i64 %15, i8* %17, i32* @legacy_special_mapping_vmops)
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %11, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %20 = call i32 @PTR_ERR_OR_ZERO(%struct.vm_area_struct* %19)
  ret i32 %20
}

declare dso_local %struct.vm_area_struct* @__install_special_mapping(%struct.mm_struct*, i64, i64, i64, i8*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
