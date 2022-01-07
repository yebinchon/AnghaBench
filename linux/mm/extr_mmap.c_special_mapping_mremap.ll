; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_special_mapping_mremap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_special_mapping_mremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vm_area_struct = type { i64, %struct.vm_special_mapping* }
%struct.vm_special_mapping = type { i32 (%struct.vm_special_mapping*, %struct.vm_area_struct.0*)* }
%struct.vm_area_struct.0 = type opaque

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*)* @special_mapping_mremap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_mapping_mremap(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_special_mapping*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 1
  %7 = load %struct.vm_special_mapping*, %struct.vm_special_mapping** %6, align 8
  store %struct.vm_special_mapping* %7, %struct.vm_special_mapping** %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.vm_special_mapping*, %struct.vm_special_mapping** %4, align 8
  %23 = getelementptr inbounds %struct.vm_special_mapping, %struct.vm_special_mapping* %22, i32 0, i32 0
  %24 = load i32 (%struct.vm_special_mapping*, %struct.vm_area_struct.0*)*, i32 (%struct.vm_special_mapping*, %struct.vm_area_struct.0*)** %23, align 8
  %25 = icmp ne i32 (%struct.vm_special_mapping*, %struct.vm_area_struct.0*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.vm_special_mapping*, %struct.vm_special_mapping** %4, align 8
  %28 = getelementptr inbounds %struct.vm_special_mapping, %struct.vm_special_mapping* %27, i32 0, i32 0
  %29 = load i32 (%struct.vm_special_mapping*, %struct.vm_area_struct.0*)*, i32 (%struct.vm_special_mapping*, %struct.vm_area_struct.0*)** %28, align 8
  %30 = load %struct.vm_special_mapping*, %struct.vm_special_mapping** %4, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %32 = bitcast %struct.vm_area_struct* %31 to %struct.vm_area_struct.0*
  %33 = call i32 %29(%struct.vm_special_mapping* %30, %struct.vm_area_struct.0* %32)
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %26, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
